package com.hibernate.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hibernate.bean.Employee;
import java.lang.String;
import java.util.List;


@Repository
public interface MyDao extends CrudRepository<Employee, String>{
	
	public List<Employee> findByAge(String age);
	

}
