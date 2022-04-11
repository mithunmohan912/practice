package com.microservices.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.microservices.controller.bean.CurrencyConversionBean;
import com.microservices.controller.proxy.CurrencyExchangeProxy;

@RestController
public class CurrencyConversionController {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private CurrencyExchangeProxy currencyExchangeProxy;
	
	@GetMapping("/currency-converter/from/{from}/to/{to}/quantity/{quantity}")
	public CurrencyConversionBean convertCurrency(@PathVariable String from , @PathVariable String to, @PathVariable BigDecimal quantity){
		Map<String,String> urlVar = new HashMap<String, String>();
		urlVar.put("from", from);
		urlVar.put("to", to);
		ResponseEntity<CurrencyConversionBean> responseEntity = new RestTemplate().getForEntity("http://localhost:9093/currency-exchange/from/{from}/to/{to}", CurrencyConversionBean.class,urlVar) ;
		CurrencyConversionBean response = responseEntity.getBody();
		
		return new CurrencyConversionBean(response.getId(), to, from, response.getConversionMultiple(), quantity, quantity.multiply(response.getConversionMultiple()), response.getPort());
		
	}
	
	@GetMapping("/currency-converter-feign/from/{from}/to/{to}/quantity/{quantity}")
	public CurrencyConversionBean convertCurrencyFeign(@PathVariable("from") String from , @PathVariable("to") String to, @PathVariable("quantity") BigDecimal quantity){
		Map<String,String> urlVar = new HashMap<String, String>();
		urlVar.put("from", from);
		urlVar.put("to", to);
		
//		ResponseEntity<CurrencyConversionBean> responseEntity = new RestTemplate().getForEntity("http://localhost:9093/currency-exchange/from/{from}/to/{to}", CurrencyConversionBean.class,urlVar) ;
//		CurrencyConversionBean response = responseEntity.getBody();
		
		CurrencyConversionBean response = currencyExchangeProxy.retreiveExchangeValue(from, to);
		logger.info("{}",response);
		return new CurrencyConversionBean(response.getId(), to, from, response.getConversionMultiple(), quantity, quantity.multiply(response.getConversionMultiple()), response.getPort());
		
	}
}
