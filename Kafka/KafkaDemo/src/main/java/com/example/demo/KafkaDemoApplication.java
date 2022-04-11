package com.example.demo;

import java.util.Properties;
import java.util.concurrent.CountDownLatch;

import org.apache.kafka.common.serialization.Serdes;
import org.apache.kafka.streams.KafkaStreams;
import org.apache.kafka.streams.StreamsBuilder;
import org.apache.kafka.streams.StreamsConfig;
import org.apache.kafka.streams.Topology;
import org.apache.kafka.streams.kstream.KStream;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Streams;

@SpringBootApplication
public class KafkaDemoApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(KafkaDemoApplication.class, args);
		
		Properties properties = new Properties();
		properties.put(StreamsConfig.APPLICATION_ID_CONFIG, "streams-pipe");
		properties.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
		properties.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		properties.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		
		StreamsBuilder builder = new StreamsBuilder();
		KStream<String, String> source = builder.stream("my-replicated-topic");
		source.to("test");		
		Topology topology = builder.build();
		System.out.println(topology.describe());
		
		KafkaStreams kafkaStream = new KafkaStreams(topology, properties);
		
		CountDownLatch cdl = new CountDownLatch(1);
		Runtime.getRuntime().addShutdownHook(new Thread("shutdownhook") {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				kafkaStream.close();
				cdl.countDown();
			}
		});
		
		kafkaStream.start();
		System.out.println("kafkaStream.state()"+ kafkaStream.state());
		try {
			cdl.await();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
