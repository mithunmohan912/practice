package com.microservices.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

@Service
public class CustomService {

	@HystrixCommand(fallbackMethod = "getDummyResponse")
	public String getDummyResp() {
		ResponseEntity<String> response= new RestTemplate().getForEntity("http://localhost:9077/dummy", String.class);
		
		return response.getBody();
	}
	

	@SuppressWarnings("unused")
	private String getDummyResponse() {
		return "DUMMY";
	}
}
