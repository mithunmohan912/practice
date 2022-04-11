package com.microservices.controller;

import java.math.BigDecimal;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.microservices.controller.bean.ExchangeValue;
import com.microservices.controller.exception.NoConversionRateFoundException;
import com.microservices.jpa.repository.ExchangeValueRepository;

@RestController
public class CurrencyExchangeController {
	Logger logger = org.slf4j.LoggerFactory.getLogger(this.getClass());
	@Autowired
	private Environment environment;
	
	@Autowired
	private ExchangeValueRepository exchangeValueRepository;
	
	@GetMapping("/currency-exchange/from/{fromCurr}/to/{toCurr}")
	public ExchangeValue retreiveExchangeValue(@PathVariable("fromCurr")  String fromCurr, @PathVariable("toCurr")String toCurr ) throws NoConversionRateFoundException {
		
		ExchangeValue conversionValData =  exchangeValueRepository.findByFromAndTo(fromCurr, toCurr);
		logger.info("{}",conversionValData);
		if(conversionValData == null) {
			throw new NoConversionRateFoundException();
		}
		HttpHeaders head = new HttpHeaders();
				head.add("", "");
				
				
//		ExchangeValue exchangeValue = new ExchangeValue(12L, "inr", "usd", BigDecimal.valueOf(67));
		conversionValData.setPort(Integer.valueOf(environment.getProperty("local.server.port")));
		return conversionValData;
	}

}
