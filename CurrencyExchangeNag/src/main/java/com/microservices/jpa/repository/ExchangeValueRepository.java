package com.microservices.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.microservices.controller.bean.ExchangeValue;

public interface ExchangeValueRepository extends JpaRepository<ExchangeValue, Long>{
	
	public ExchangeValue findByFromAndTo(String from , String to);

}
