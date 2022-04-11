package com.example.demo;

import java.util.Collections;
import java.util.Map;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/login")
public class Users {
	
	@GetMapping
	public String defaultUser() {
		return "defaultlogin";
	}
	  @GetMapping("/user") 
	  public Map<String,Object>getUser(@AuthenticationPrincipal OAuth2User principal){
	  
	  return Collections.singletonMap("name", principal.getName());
	  
	  }	 
	  
	  @GetMapping("/user/{ID}") 
	  public Map<String,Object>getUser(@AuthenticationPrincipal OAuth2User principal, @PathVariable(name = "ID") String id){
	  
	  return Collections.singletonMap("name", principal.getName()+"_"+id);
	  
	  }	
	
	@GetMapping("/testusers")
	public String getUsers() {
		return "mithun";
	}
}
