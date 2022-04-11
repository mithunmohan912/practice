package com.microservices.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.microservices.controller.bean.ExchangeValue;

@Repository
public interface ExchangeValueRepository extends JpaRepository<ExchangeValue, Long>{
	
	public ExchangeValue findByFromAndTo(String from , String to);

}
