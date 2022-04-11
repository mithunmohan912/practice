package com.rest;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
@EnableAutoConfiguration
@EnableWebSecurity
public class AppMain {
	
	public static void main(String[] args) {
		SpringApplication.run(AppMain.class, args);
	}

}
