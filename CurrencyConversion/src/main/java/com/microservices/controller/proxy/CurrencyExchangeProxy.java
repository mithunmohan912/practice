package com.microservices.controller.proxy;

import org.springframework.cloud.loadbalancer.annotation.LoadBalancerClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.microservices.controller.bean.CurrencyConversionBean;
import com.microservices.controller.proxy.configuration.LoadBalancingConfiguration;

@FeignClient("currency-exchange-service")// url="localhost:9093")
//@FeignClient("cloudProxy")
//@LoadBalancerClient(name = "currency-exchange-service")//, configuration = LoadBalancingConfiguration.class)
public interface CurrencyExchangeProxy {

//	@GetMapping("/currency-exchange/from/{fromCurr}/to/{toCurr}")
	@GetMapping("/currency-exchange/from/{fromCurr}/to/{toCurr}")
	public CurrencyConversionBean retreiveExchangeValue(@PathVariable("fromCurr")  String fromCurr, @PathVariable("toCurr")String toCurr );
	
}
