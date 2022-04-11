package com.hibernate.service;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Employee;

@Service
public class RabbitMQService {

	@Autowired
	private RabbitTemplate rabbitTemplate;
	
	
	
	public void createEmployee(Employee emp) {
		
		String routingKey="customerCreated";
		String message ="My customer created";
		
		rabbitTemplate.convertAndSend("EmployeeExchange",routingKey,emp);
	}
}
