package com.example.demo;

import java.util.Properties;

import org.apache.kafka.clients.producer.Callback;
import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerConfig;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.clients.producer.RecordMetadata;
import org.apache.kafka.common.serialization.IntegerSerializer;
import org.apache.kafka.common.serialization.Serdes;
import org.apache.kafka.common.serialization.StringSerializer;
import org.apache.kafka.streams.StreamsConfig;
import org.springframework.boot.autoconfigure.jms.JmsProperties.AcknowledgeMode;

public class KafkaUsingProducerConsumer {
	
	
	public static void main(String[] args) {
		Properties properties = new Properties();
		properties.put(StreamsConfig.APPLICATION_ID_CONFIG, "usePropducedConsumer");
		properties.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
		properties.put("acks", "all");
		properties.put(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, StringSerializer.class);
		properties.put(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, IntegerSerializer.class);
		
		
		Producer<String, Integer> producer = new KafkaProducer<String, Integer>(properties);
		ProducerRecord<String, Integer> producerRecord = new ProducerRecord<String, Integer>("my-replicated-topic", "mithu1111111111n22222333222", 36);
		producer.send(producerRecord, new Callback() {
			
			@Override
			public void onCompletion(RecordMetadata metadata, Exception exception) {
				// TODO Auto-generated method stub
				System.out.println("");
			}
		});
		producer.close();
		

	}

}
