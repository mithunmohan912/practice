package com.hibernate;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import com.hibernate.service.AppService;

@SpringBootApplication(scanBasePackages = {"com.hibernate"})
@EnableJpaRepositories(basePackages = {"com.hibernate.repository"}, transactionManagerRef = "getTransactionManager")
@EnableTransactionManagement
public class AppHibernateApplication {

//	@Autowired
//	private AppService service;
	
//	@Autowired
//	ApplicationContext context;
//	
//	
//	@PostConstruct
//	
	
	public AppHibernateApplication() {
		// TODO Auto-generated constructor stub
//		AppService service = context.getBean(AppService.class);
//		service.saveEmp();
	
	}
	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(AppHibernateApplication.class, args);
		
//		
		AppService service = context.getBean(AppService.class);
		service.saveEmp();
		service.getEmpCountGroupByAge();
		
		service.join();
	}

}
