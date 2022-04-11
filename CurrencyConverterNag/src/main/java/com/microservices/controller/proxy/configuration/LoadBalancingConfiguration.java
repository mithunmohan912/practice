package com.microservices.controller.proxy.configuration;

import java.util.Arrays;
import java.util.List;

import org.springframework.cloud.client.DefaultServiceInstance;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.loadbalancer.core.ServiceInstanceListSupplier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import reactor.core.publisher.Flux;

//@Configuration
public class LoadBalancingConfiguration {

	@Bean
	public ServiceInstanceListSupplier getServiceInstanceListSupplier() {
		return new DemoServiceInstanceListSupplier("currency-exchange-service");
	}
}


class DemoServiceInstanceListSupplier implements ServiceInstanceListSupplier {
	
	private final String serviceId;
	
	
	public DemoServiceInstanceListSupplier(String serviceId) {
		this.serviceId = serviceId;
	}

	@Override
	public Flux<List<ServiceInstance>> get() {
		// TODO Auto-generated method stub
		return Flux.just(Arrays.asList(new DefaultServiceInstance(serviceId+"1", serviceId, "localhost", 9093, false),
				new DefaultServiceInstance(serviceId+"2", serviceId, "localhost", 9094, false)));
	}

	@Override
	public String getServiceId() {
		// TODO Auto-generated method stub
		return serviceId;
	}
	
}
