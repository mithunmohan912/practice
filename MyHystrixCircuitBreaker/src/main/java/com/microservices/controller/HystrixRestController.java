package com.microservices.controller;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.microservices.service.CustomService;

@RestController
public class HystrixRestController {
	
	@Autowired
	CustomService service;
	org.slf4j.Logger log = LoggerFactory.getLogger(this.getClass());
	
//	@Autowired
//	private RestTemplate restTemplate;

	
//	@GetMapping(name="mithun", value = "/test")
	@GetMapping("/test")
	private String getDummyAPI(){
		return service.getDummyResp();
//		ResponseEntity<String> response= new RestTemplate().getForEntity("http://localhost:9077/dummy", String.class);
		
//		return response;
	}
	
	
}
