package com.rest.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "test-service")
//@RefreshScope
public class DualAppConfiguration {

	//If we specify configuration via @ConfigurationProperties("limit-service") then refresh scope is not need 
//after making config changes commit to git call the actuators/refresh api it will get updated but if config is fetched via @value as below then @refresh scope will be required
	//all the places where @refreshScope is used will only get update rest will be the old one only
//	@Value("${limit-service.minimum}")
	private int minimum;
	
//	@Value("${limit-service.maximum}")
	private int maximum;
	
	public DualAppConfiguration() {
//		super();
	}
	public int getMinimum() {
		return minimum;
	}
	public void setMinimum(int minimum) {
		this.minimum = minimum;
	}
	public int getMaximum() {
		return maximum;
	}
	public void setMaximum(int maximum) {
		this.maximum = maximum;
	}
	
	
	
}
