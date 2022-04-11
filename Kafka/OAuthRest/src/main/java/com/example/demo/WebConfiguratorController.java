package com.example.demo;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.stereotype.Controller;

@SpringBootApplication
@Controller
public class WebConfiguratorController extends WebSecurityConfigurerAdapter{
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.authorizeRequests(request -> request.antMatchers("/","/error", "/webjars/**","/logout").permitAll().anyRequest().authenticated()).oauth2Login();
		
//		super.configure(http);
		
		http.csrf(data->data.csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse()));
		
		http.logout(logout -> logout.logoutSuccessUrl("/").permitAll());
	}
	
	

}
