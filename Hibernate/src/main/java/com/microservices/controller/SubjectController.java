package com.microservices.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.microservices.bean.Employees;
import com.microservices.bean.Teacher;
import com.microservices.services.DataService;

@RestController
public class SubjectController {
	
	@Autowired
	private DataService service;

	
	@GetMapping("/teachers/{email}")
	public ResponseEntity<Teacher> getTeacher(@Valid @PathVariable String email){
		return new ResponseEntity<Teacher>( service.fetchTeacher(email),HttpStatus.ACCEPTED);	
	}
	
	@GetMapping("/teachers")
	public ResponseEntity<List<Teacher>> getTeacher(){
		return new ResponseEntity<List<Teacher>>(service.fetchAll(),HttpStatus.ACCEPTED);	
	}
	
	
	@GetMapping("/search")
	public ResponseEntity<List<Employees>> searchTeacher(@RequestBody Employees emp){
		return new ResponseEntity<List<Employees>>(service.search(emp),HttpStatus.ACCEPTED);	
	}
	
	@PostMapping(value="/teacher",consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Teacher>  saveTeacher(@Valid @RequestBody Teacher teacher, Errors error){
//		error.getFieldErrors().get(1).getField().
		return new ResponseEntity(service.saveTeacher(teacher), HttpStatus.OK);		
	}
}
