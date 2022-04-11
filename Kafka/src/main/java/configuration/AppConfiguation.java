package configuration;

import java.util.HashMap;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.apache.kafka.clients.producer.ProducerConfig;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.apache.kafka.common.serialization.StringSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.annotation.EnableKafka;
import org.springframework.kafka.config.ConcurrentKafkaListenerContainerFactory;
import org.springframework.kafka.core.ConsumerFactory;
import org.springframework.kafka.core.DefaultKafkaConsumerFactory;
import org.springframework.kafka.core.DefaultKafkaProducerFactory;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.core.ProducerFactory;
import org.springframework.kafka.support.serializer.JsonDeserializer;
import org.springframework.kafka.support.serializer.JsonSerializer;

@Configuration
@EnableKafka
public class AppConfiguation {
	@Value(value = "${spring.kafka.consumer.bootstrap-servers}")
	 private String bootstrapAddress;
	 
    @Value(value = "${general.topic.group.id}")
    private String groupId;
 
    @Value(value = "${spring.kafka.trasnaction-group-id}")
    private String userGroupId;	 

	
	@Bean
	public ConsumerFactory<String, Object> getConsumerFactory(){
		HashMap<String, Object> props = new HashMap<String, Object>();
		props.put(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG,bootstrapAddress);
		 props.put(ConsumerConfig.GROUP_ID_CONFIG, userGroupId);
		 props.put(ConsumerConfig.ENABLE_AUTO_COMMIT_CONFIG, false);
		 props.put(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, StringDeserializer.class);
        props.put(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, JsonDeserializer.class);
		return new DefaultKafkaConsumerFactory<String, Object>(props);
	}
	
	@Bean
	public ConcurrentKafkaListenerContainerFactory<String, Object>getConsumserListener(){
		ConcurrentKafkaListenerContainerFactory<String, Object> factory = new ConcurrentKafkaListenerContainerFactory<String, Object>();
		factory.setConsumerFactory(getConsumerFactory());
		return factory;
	}
	
	@Bean
	public ProducerFactory<String, Object> getProducerFactory(){
		HashMap<String, Object> props = new HashMap<String, Object>();
		props.put(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG,bootstrapAddress);
		 props.put(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, StringSerializer.class);
        props.put(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, JsonSerializer.class);
		return new DefaultKafkaProducerFactory<String, Object>(props);
	}
	
	@Bean
	public KafkaTemplate<String, Object> userKafkaTemplate(){
		return new KafkaTemplate<String, Object>(getProducerFactory());
	}
	
}
