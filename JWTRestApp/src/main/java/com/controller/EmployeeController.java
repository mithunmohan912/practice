package com.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {

	
	@GetMapping(value="/employee")
	public String getEmployee() {
		return "Mithun";
	}
}
