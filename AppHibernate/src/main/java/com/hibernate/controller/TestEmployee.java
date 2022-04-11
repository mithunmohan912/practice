package com.hibernate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hibernate.service.AppService;

@RestController
public class TestEmployee {
	@Autowired
	AppService service;

	@PostMapping(value = "/test")
	public void saveEmp () {
		service.saveEmp();
	}
	
}
