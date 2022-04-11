package com.example.demo;

import java.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.clients.consumer.OffsetAndMetadata;
import org.apache.kafka.common.TopicPartition;
import org.apache.kafka.common.serialization.IntegerDeserializer;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.apache.kafka.streams.StreamsConfig;

public class KafkaUsingConsumer {
	public static void main(String[] args) {
		Properties properties = new Properties();
		properties.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
		properties.put(ConsumerConfig.GROUP_ID_CONFIG, "test");
//		properties.put(ConsumerConfig.ENABLE_AUTO_COMMIT_CONFIG, "true");		//if we dont want commit control
		properties.put(ConsumerConfig.ENABLE_AUTO_COMMIT_CONFIG, "false");		
//		properties.put(ConsumerConfig.AUTO_COMMIT_INTERVAL_MS_CONFIG, "1000"); //if we dont want commit control
		properties.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest");
		properties.put(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, StringDeserializer.class);
		properties.put(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, IntegerDeserializer.class);
		
		KafkaConsumer<String, Integer> consumer = new KafkaConsumer<String, Integer>(properties);
		consumer.subscribe(Arrays.asList("my-replicated-topic")); 
		List<ConsumerRecord<String, Integer>> listOfCR = new ArrayList<ConsumerRecord<String,Integer>>();
		//user can decide when to commit the offset using commitAsync(); and about commented config
		ConsumerRecords<String, Integer> cusConsumerRecords = consumer.poll(Duration.ofMillis(3600000));
		for(ConsumerRecord<String, Integer> cr:cusConsumerRecords) {
			System.out.println("offset:"+cr.offset() + " partition:"+cr.partition() + " key:"+cr.key() + " value:"+cr.value());
			listOfCR.add(cr);
		}
		if(listOfCR.size() >0) {
		 System.out.println("*******list size >0 ******** before commit*****");
		 consumer.commitAsync();
		}
		
		
		ConsumerRecords<String, Integer> conusmerRecords = consumer.poll(Duration.ofMillis(Long.MAX_VALUE));
		for(TopicPartition tp:conusmerRecords.partitions()) {
			List<ConsumerRecord<String, Integer>> consRec = conusmerRecords.records(tp);
			for(ConsumerRecord<String, Integer> rec : consRec) {
				System.out.println("--key"+ rec.key() + " -- val:"+rec.value());
			}
			
			long positionOfRecord = consRec.get(consRec.size()-1).offset();
			consumer.commitSync(Collections.singletonMap(tp, new OffsetAndMetadata(positionOfRecord+1)));
			
			
		}
		//user can have more control over when to commit offset explicit
		
		
		
		
		// Manual offset with 
		
	}

}
