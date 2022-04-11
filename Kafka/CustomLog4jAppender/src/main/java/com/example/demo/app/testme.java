package com.example.demo.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testme {
	Logger log = LoggerFactory.getLogger(this.getClass());
	
	@GetMapping(value = "\test")
	public String getData() {
		return "data";
	}

	
}
