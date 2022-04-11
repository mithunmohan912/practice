package com.microservices.services;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.microservices.bean.Employees;
import com.microservices.bean.Teacher;


@Service
public class DataService {

	@Autowired
	private DataServiceRepository repo;
	@Autowired
	private EntityManager em;
	
	public Teacher saveTeacher(Teacher teacher) {
		
		return repo.save(teacher);		
	}
	
	public List<Teacher> fetchAll(){
		return (List<Teacher>) repo.findAll();
	}
	
	public Teacher fetchTeacher(String email){
		return repo.findByEmail(email);
	}
	
	
	public List<Employees> search(Employees emp){
		String address = emp.getAddress();
		String name= emp.getName();
		int phone= emp.getTelephone();
		
		CriteriaBuilder builder = em.getCriteriaBuilder();
		CriteriaQuery<Employees>  query = builder.createQuery(Employees.class);
		Root<Employees> root =   query.from(Employees.class);
		List<Predicate> predicate = new ArrayList<Predicate>();
		if(!StringUtils.isEmpty(name))
		predicate.add(builder.like(root.get("name"),"%"+ name+"%"));
		if(!StringUtils.isEmpty(address))
		predicate.add(builder.like(root.get("address"),"%"+ address+"%"));
		if(phone>0)
		predicate.add(builder.like(root.get("telephone"),"%"+ phone+"%"));
		builder.desc(root.get("name"));
		
		query.multiselect(root.get("name"),root.get("address")).where(builder.and(predicate.toArray(new Predicate[predicate.size()])));
		return em.createQuery(query).getResultList();
	}
	
	
}
