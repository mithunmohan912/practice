package com.microservices.configuration;

import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfiguration {

	
	@Bean
	public RouteLocator getRoutes(RouteLocatorBuilder builder) {
		return builder.routes().route(p-> p.path("/currency-exchange/**").uri("lb://CURRENCY-EXCHANGE-SERVICE"))
				.route(p-> p.path("/currency-converter/**").uri("lb://CURRENCY-CONVERSION-SERIVCE"))
				.route(p-> p.path("/currency-converter-feign/**").uri("lb://CURRENCY-CONVERSION-SERIVCE"))
				.route(p ->p.path("/currency-conversion-new/**").filters(f->f.rewritePath("/currency-conversion-new/(?<segment>.*)", "/currency-converter-feign/${segment}")).uri("lb://CURRENCY-CONVERSION-SERIVCE"))
				.build();
	}
}
