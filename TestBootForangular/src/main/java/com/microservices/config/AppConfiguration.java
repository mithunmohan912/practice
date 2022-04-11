package com.microservices.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration.WebMvcAutoConfigurationAdapter;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.http.converter.xml.Jaxb2RootElementHttpMessageConverter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.microservices.bean.CustomBean;
import com.microservices.bean.UserDetail;

@Configuration
public class AppConfiguration implements WebMvcConfigurer{
	
	
	
	public AppConfiguration() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addCorsMappings(CorsRegistry registry) {
		// TODO Auto-generated method stub
		registry.addMapping("/**").allowedOrigins("*");
//		WebMvcConfigurer.super.addCorsMappings(registry);
		
		List<String> str= new ArrayList<String>();
		int count;
		str.add("11");
		str.add("22");
		for(String s: str) {
			
		}
	}
	
	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		// TODO Auto-generated method stub
//		WebMvcConfigurer.super.configureMessageConverters(converters);
//		converters.add(new Jaxb2RootElementHttpMessageConverter());
		converters.add(new CustomConverter());
	}
	
	
//	public HttpMessageConverter<CustomBean> createHttpConverters(){
//		MappingJackson2HttpMessageConverter  con = new MappingJackson2HttpMessageConverter();
//		con.read(CustomBean.class, inputMessage)
//		
//	}

}
