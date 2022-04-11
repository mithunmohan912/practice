package com.example.demo.listener;

import java.util.Collection;

import org.apache.kafka.clients.consumer.ConsumerRebalanceListener;
import org.apache.kafka.common.TopicPartition;

public class CustomConsumerRebalanceListener implements ConsumerRebalanceListener{

	@Override
	public void onPartitionsRevoked(Collection<TopicPartition> partitions) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onPartitionsAssigned(Collection<TopicPartition> partitions) {
		// TODO Auto-generated method stub
		
	}

}
