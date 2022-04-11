package com.microservices.services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.microservices.bean.Teacher;

@Repository
public interface DataServiceRepository extends CrudRepository<Teacher, Long> {
		
	public Teacher findByEmail(String email);
}
