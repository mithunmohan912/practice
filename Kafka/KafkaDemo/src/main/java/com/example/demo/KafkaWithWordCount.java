package com.example.demo;

import java.util.Arrays;
import java.util.Properties;
import java.util.concurrent.CountDownLatch;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.apache.kafka.common.serialization.Serdes;
import org.apache.kafka.streams.KafkaStreams;
import org.apache.kafka.streams.StreamsBuilder;
import org.apache.kafka.streams.StreamsConfig;
import org.apache.kafka.streams.Topology;
import org.apache.kafka.streams.kstream.Consumed;
import org.apache.kafka.streams.kstream.KStream;
import org.apache.kafka.streams.kstream.KTable;
import org.apache.kafka.streams.kstream.Produced;

public class KafkaWithWordCount {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Properties properties = new Properties();
		properties.put(StreamsConfig.APPLICATION_ID_CONFIG, "stream-line-split");
		properties.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
//		properties.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest");
		properties.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		properties.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		
		StreamsBuilder streamsBuilder = new StreamsBuilder();
		KStream<String, String>  sourceStream= streamsBuilder.stream("stream-line-input", Consumed.with(Serdes.String(), Serdes.String()));
		KTable<String, Long> ktableWordCount = sourceStream.flatMapValues(data -> Arrays.asList(data.split("\\W+"))).groupBy((key,value) -> value).count();
		
		ktableWordCount.toStream().to("stream-line-output-word-count", Produced.with(Serdes.String(), Serdes.Long()));
		Topology topology = streamsBuilder.build();
		System.out.println(topology.describe());
		KafkaStreams kafkaStreams = new KafkaStreams(topology, properties);
		
		CountDownLatch cdl = new CountDownLatch(1);
		Runtime.getRuntime().addShutdownHook(new Thread("shutdownhook") {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				kafkaStreams.close();
				cdl.countDown();
			}
		});
		
		kafkaStreams.start();
//		System.out.println("kafkaStream.state()"+ kafkaStreams.state());
		try {
			cdl.await();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
