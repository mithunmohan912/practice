package com.hibernate.config;

import org.springframework.amqp.core.Exchange;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class AppConfiguration {
	
	
	@Bean
	public Exchange eventExchange() {
		
		return new TopicExchange("eventEmployee");
	}
	
	

}
