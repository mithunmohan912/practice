package com.bean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.bean.Employee;
import com.hibernate.service.RabbitMQService;

@RestController
public class EmpController {
	
	@Autowired
	RabbitMQService service;
	
	public Employee postEmp(Employee emp) {
		
	}
	

}
