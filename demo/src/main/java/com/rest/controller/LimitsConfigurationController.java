package com.rest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rest.config.AppConfiguration;
import com.rest.config.DualAppConfiguration;
import com.rest.controller.bean.LimitConfiguration;


@RestController
public class LimitsConfigurationController {
	@Autowired
	private AppConfiguration configuration;
	
	@Autowired
	private DualAppConfiguration dualAppConfiguration;
	@Value("${limit-service.minimum}")
	private int minimum;

	@GetMapping("/limitConfigurations")
	private LimitConfiguration retrieveLimitConfiguaration() {
//		AppConfiguration configuration = new AppConfiguration();
		LimitConfiguration limitConfiguration = new LimitConfiguration(configuration.getMaximum(),configuration.getMinimum());
		System.out.println("minimum: "+minimum);
		return limitConfiguration;
		
	}
	
}
