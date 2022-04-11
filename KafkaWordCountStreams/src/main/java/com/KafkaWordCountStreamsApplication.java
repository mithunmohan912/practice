package com;

import java.security.KeyStore.Entry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Collectors;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.apache.kafka.common.serialization.Serdes;
import org.apache.kafka.streams.KafkaStreams;
import org.apache.kafka.streams.KeyValue;
import org.apache.kafka.streams.StreamsBuilder;
import org.apache.kafka.streams.StreamsConfig;
import org.apache.kafka.streams.kstream.KStream;
import org.apache.kafka.streams.kstream.KTable;
import org.apache.kafka.streams.kstream.Named;
import org.apache.kafka.streams.kstream.Produced;
import org.apache.kafka.streams.kstream.ValueMapper;
import org.apache.tomcat.util.http.fileupload.util.Streams;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication
public class KafkaWordCountStreamsApplication {

	public static void main(String[] args) {
//		SpringApplication.run(KafkaWordCountStreamsApplication.class, args);
		
		
		Properties properties = new Properties();
		properties.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:8085");
		properties.put(StreamsConfig.APPLICATION_ID_CONFIG, "word-count-app");
		properties.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest");
		properties.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		properties.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		
		StreamsBuilder builder = new StreamsBuilder();
		KStream<String, String> wordCount=builder.stream("stream-wordCount-Input");
		KStream<String,String> countFlatStream = wordCount.mapValues(value -> value.toLowerCase()).flatMapValues(data -> Arrays.asList(data.split(" ")));
		KTable<String, Long> wordCountsTable = countFlatStream.selectKey((ignoredkey,word) -> word).groupByKey().count(Named.as("Counts"));
		
		wordCountsTable.toStream().to("stream-wordCount-Output", Produced.with(Serdes.String(), Serdes.Long()));
		
		KafkaStreams ks = new KafkaStreams(builder.build(), properties);
		ks.start();
		//print the topology
		System.out.println(ks.toString());
		
	
		Runtime.getRuntime().addShutdownHook(new Thread(ks::close));
		
	}
	
	
	public void getFavColor() {
		
		Properties properties = new Properties();
		properties.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:8085");
		properties.put(StreamsConfig.APPLICATION_ID_CONFIG, "favColor");
		properties.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest");
		properties.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		properties.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String().getClass());
		
		List<String> color = new ArrayList<>();
		color.add("red");
		color.add("blue");
		color.add("green");
		StreamsBuilder builder = new StreamsBuilder();
		KStream<String, String> dataStream = builder.stream("fav-color-input");
		
//		KTable<String, Long> colorTable = dataStream.filter((key,val) -> color.contains(val)).mapValues(values -> Arrays.asList(values.split(","))).selectKey((key,val)->val).groupByKey().count();
//		colorTable.toStream().to("fav-color-output", Produced.with(Serdes.String(), Serdes.Long()));
		
		KStream<String,String> usedColor =dataStream.selectKey((key,value) ->value.split(",")[0]).mapValues(value -> value.split(",")[1]).filter((key,val) -> color.contains(val));
		usedColor.to("user-key-color");
		
		KTable<String, Long>  userClrTable = builder.table("user-key-color");
		userClrTable.groupBy((user,color1) -> new KeyValue(color1, color1)).count(Named.as("CountsByColors"));
		userClrTable.toStream().to("fav-color-output", Produced.with(Serdes.String(), Serdes.Long()));
		
		KafkaStreams streams = new KafkaStreams(builder.build(), properties);
		streams.start();
		System.out.println(streams.toString());
		
		Runtime.getRuntime().addShutdownHook(new Thread(streams::close));
	}
	
	
	

}
