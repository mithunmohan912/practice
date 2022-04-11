package com.abc.demostreams;

import java.time.Duration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.kafka.common.serialization.Deserializer;
import org.apache.kafka.common.serialization.Serde;
import org.apache.kafka.common.serialization.Serdes;
import org.apache.kafka.common.serialization.Serializer;
import org.apache.kafka.common.utils.Bytes;
import org.apache.kafka.streams.KafkaStreams;
import org.apache.kafka.streams.StreamsBuilder;
import org.apache.kafka.streams.StreamsConfig;
import org.apache.kafka.streams.Topology;
import org.apache.kafka.streams.kstream.Aggregator;
import org.apache.kafka.streams.kstream.Consumed;
import org.apache.kafka.streams.kstream.ForeachAction;
import org.apache.kafka.streams.kstream.KGroupedStream;
import org.apache.kafka.streams.kstream.KStream;
import org.apache.kafka.streams.kstream.Materialized;
import org.apache.kafka.streams.kstream.Merger;
import org.apache.kafka.streams.kstream.Predicate;
import org.apache.kafka.streams.kstream.SessionWindows;
import org.apache.kafka.streams.kstream.Suppressed;
import org.apache.kafka.streams.kstream.Windowed;
import org.apache.kafka.streams.state.SessionStore;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class KafkaStreamsApplication {
	
	public static void main(String[] args) throws InterruptedException {
		SpringApplication.run(KafkaStreamsApplication.class, args);

		String merchantMasterTopic = "merchant_master";
		String orderDetailsTopic = "order_details";
		String configTopic = "config";
		
		Properties streamsConfiguration = new Properties();
		streamsConfiguration.put(StreamsConfig.APPLICATION_ID_CONFIG, "consumer");
		String bootstrapServers = "localhost:9092";
		streamsConfiguration.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, bootstrapServers);
		streamsConfiguration.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.String().getClass().getName());
		streamsConfiguration.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String().getClass().getName());
		streamsConfiguration.put(StreamsConfig.STATE_DIR_CONFIG, "~/kafka-streams/state-store2");
		streamsConfiguration.put(StreamsConfig.EXACTLY_ONCE, true);
		streamsConfiguration.put(StreamsConfig.WINDOW_STORE_CHANGE_LOG_ADDITIONAL_RETENTION_MS_CONFIG, (60 * 60 * 1000));
		
		Map<String, Object> serdeProps = new HashMap<>();
		serdeProps.put("JsonPOJOClass", MerchantMaster.class);
		final Serializer<MerchantMaster> merchantMasterSerializer = new JsonPOJOSerializer<MerchantMaster>();
		merchantMasterSerializer.configure(serdeProps, false);
		final Deserializer<MerchantMaster> merchantMasterDeserializer = new JsonPOJODeserializer<MerchantMaster>();
		merchantMasterDeserializer.configure(serdeProps, false);
		final Serde<MerchantMaster> merchantMasterSerde = Serdes.serdeFrom(merchantMasterSerializer, merchantMasterDeserializer);

		serdeProps.put("JsonPOJOClass", OrderDetails.class);
		final Serializer<OrderDetails> orderDetailsSerializer = new JsonPOJOSerializer<OrderDetails>();
		orderDetailsSerializer.configure(serdeProps, false);
		final Deserializer<OrderDetails> orderDetailsDeserializer = new JsonPOJODeserializer<OrderDetails>();
		orderDetailsDeserializer.configure(serdeProps, false);
		final Serde<OrderDetails> orderDetailsSerde = Serdes.serdeFrom(orderDetailsSerializer, orderDetailsDeserializer);

		serdeProps.put("JsonPOJOClass", Config.class);
        final Serializer<Config> configSerializer = new JsonPOJOSerializer<Config>();
        configSerializer.configure(serdeProps, false);
        final Deserializer<Config> configDeserializer = new JsonPOJODeserializer<Config>();
        configDeserializer.configure(serdeProps, false);
        final Serde<Config> configSerde = Serdes.serdeFrom(configSerializer, configDeserializer);
        
        serdeProps.put("JsonPOJOClass", Customer.class);
        final Serializer<Customer> customerSerializer = new JsonPOJOSerializer<Customer>();
        customerSerializer.configure(serdeProps, false);
        final Deserializer<Customer> customerDeserializer = new JsonPOJODeserializer<Customer>();
        customerDeserializer.configure(serdeProps, false);
        final Serde<Customer> customerInfoSerde = Serdes.serdeFrom(customerSerializer, customerDeserializer);
		
        StreamsBuilder builder = new StreamsBuilder();
		KStream<String, MerchantMaster> merchantMasterStream = builder
				.<String, MerchantMaster>stream(merchantMasterTopic, Consumed.with(Serdes.String(), merchantMasterSerde))
				.filter(new Predicate<String, MerchantMaster>() {
					@Override
					public boolean test(String key, MerchantMaster value) {
						if (value == null) {
							return false;
						}
						return true;
					}
				});
				
		KStream<String, OrderDetails> orderDetailsStream = builder.<String, OrderDetails>stream(orderDetailsTopic, Consumed.with(Serdes.String(), orderDetailsSerde));

		KStream<String, Config> configStream = builder.<String, Config>stream(configTopic, Consumed.with(Serdes.String(), configSerde));
		
		final Aggregator<String, MerchantMaster, Customer> MERCHANT_MASTER_AGGREGATOR = new Aggregator<String, MerchantMaster, Customer>() {
		    @Override
		    public Customer apply(String key, MerchantMaster value, Customer aggregate) {
		        aggregate.setMerchantMaster(value);
		        aggregate.setLeid(value.getLeid());
		        return aggregate;
		    }
		};
		
		final Aggregator<String, OrderDetails, Customer> ORDER_DETAILS_AGGREGATOR = new Aggregator<String, OrderDetails, Customer>() {
		    @Override
		    public Customer apply(String key, OrderDetails value, Customer aggregate) {
		        aggregate.setOrderDetails(value);
		        return aggregate;
		    }
		};
		
		final Aggregator<String, Config, Customer> CONFIG_AGGREGATOR = new Aggregator<String, Config, Customer>() {
		    @Override
		    public Customer apply(String key, Config value, Customer aggregate) {
		        aggregate.setConfig(value);
		        return aggregate;
		    }
		};
		
		KGroupedStream<String, MerchantMaster> merchantMasterGroupedStream = merchantMasterStream.groupByKey();
		KGroupedStream<String, OrderDetails> orderDetailsGroupedStream = orderDetailsStream.groupByKey();
		KGroupedStream<String, Config> configGroupedStream = configStream.groupByKey();
				
		SessionWindows sessionWindows = SessionWindows.with(Duration.ofMinutes(2)).until(400000).grace(Duration.ofSeconds(5));
		KStream<Windowed<String>, Customer> cogroup = merchantMasterGroupedStream
			.cogroup(MERCHANT_MASTER_AGGREGATOR)
			.cogroup(orderDetailsGroupedStream, ORDER_DETAILS_AGGREGATOR)
			.cogroup(configGroupedStream, CONFIG_AGGREGATOR)
			.windowedBy(sessionWindows)
			.aggregate(
				() -> new Customer(), 
				new Merger<String, Customer>() {

					@Override
					public Customer apply(String aggKey, Customer aggOne, Customer aggTwo) {
						Customer customer = new Customer();
						if (aggOne.getLeid() != null) {
							customer.setLeid(aggOne.getLeid());
						} else {
							customer.setLeid(aggTwo.getLeid());
						}
						if (aggOne.getMerchantMaster() != null) {
							customer.setMerchantMaster(aggOne.getMerchantMaster());
						} else {
							customer.setMerchantMaster(aggTwo.getMerchantMaster());
						}
						if (aggOne.getOrderDetails() != null) {
							customer.setOrderDetails(aggOne.getOrderDetails());
						} else {
							customer.setOrderDetails(aggTwo.getOrderDetails());
						}
						if (aggOne.getConfig() != null) {
							customer.setConfig(aggOne.getConfig());
						} else {
							customer.setConfig(aggTwo.getConfig());
						}
						System.out.println("Aggregated customer instance in merger " + customer);
						return customer;
					}
				}, Materialized
			          .<String, Customer, SessionStore<Bytes, byte[]>>as("sessionstore")
			          .withKeySerde(Serdes.String())
			          .withValueSerde(Serdes.serdeFrom(customerSerializer, customerDeserializer)))
				.toStream();
		
		cogroup.foreach(new ForeachAction<Windowed<String>, Customer>() {
			@Override
			public void apply(Windowed<String> key, Customer value) {
				if (value != null) {
					System.out.println("Customer instance sent to downstream " + value);
				} else {
					//System.out.println("Value is null");
				}
			}
		});
		
		Topology topology = builder.build();

		KafkaStreams streams = new KafkaStreams(topology, streamsConfiguration);
	
		streams.cleanUp();
		streams.start();
		//Thread.sleep(300000);
		//streams.close();
	}
}
