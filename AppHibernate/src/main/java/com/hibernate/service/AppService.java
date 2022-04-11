package com.hibernate.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Tuple;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hibernate.bean.Account;
import com.hibernate.bean.Employee;



@Service
public class AppService {
	
	@Autowired
//	private EntityManager entityManager;
	private EntityManagerFactory entityManagerFactory;

	@Transactional
	public void saveEmp() {
		Account acc1= new Account(111,"test1");
		Account acc2= new Account(111,"test1");
		Account acc3= new Account(111,"test1");
		Account acc4= new Account(111,"test1");
		Employee emp = new Employee("t@t.com", "mithun", "32", "dfdsf");
		acc1.setEmployee(emp);
		Employee emp1 = new Employee("s@t.com", "qithun", "42", "dfdsf");
		acc1.setEmployee(emp1);
		Employee emp2 = new Employee("y@t.com", "withun", "52", "dfdsf");
		acc1.setEmployee(emp2);
		Employee emp3 = new Employee("1@t.com", "eithun", "62", "dfdsf");
		acc1.setEmployee(emp3);
		Employee emp4 = new Employee("e@t.com", "fithun", "72", "dfdsf");
		acc1.setEmployee(emp4);
		List<Account> li=Stream.of(acc1,acc2,acc3,acc4).collect(Collectors.toList());
		List<Account> li1=Stream.of(acc1,acc2,acc3,acc4).collect(Collectors.toList());
		List<Account> li2=Stream.of(acc1,acc2,acc3,acc4).collect(Collectors.toList());
		List<Account> li3=Stream.of(acc1,acc2,acc3,acc4).collect(Collectors.toList());
		List<Account> li4=Stream.of(acc1,acc2,acc3,acc4).collect(Collectors.toList());
		emp.setAccountList(li);
		emp1.setAccountList(li1);
		emp2.setAccountList(li2);
		emp3.setAccountList(li3);
		emp4.setAccountList(li4);
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
//		
		entityManager.persist(emp);
//		entityManager.persist(li);
		entityManager.persist(emp1);
//		entityManager.persist(li1);
		entityManager.persist(emp2);
//		entityManager.persist(li2);
		entityManager.persist(emp3);
//		entityManager.persist(li3);
		entityManager.persist(emp4);
//		entityManager.persist(li4);
//		entityManager.persist(acc1);
//		entityManager.persist(acc2);
//		entityManager.persist(acc3);
//		entityManager.persist(acc4);
		
		entityManager.getTransaction().commit();
		
	}
	
	
	public void getEmpCountGroupByAge() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		CriteriaBuilder  criteriaBuilder= entityManager.getCriteriaBuilder();
		CriteriaQuery<Tuple> query = criteriaBuilder.createTupleQuery();
		
		Root<Employee> emp = query.from(Employee.class);
		
//		emp.join(
		query.multiselect(criteriaBuilder.count(emp), emp.get("age")).orderBy(criteriaBuilder.asc(emp.get("age"))).groupBy(emp.get("age"));
		System.out.println();
		
		
		query.multiselect(criteriaBuilder.count(emp), emp.get("age"));
		
		entityManager.createQuery(query).getResultList().forEach(tuple -> {
			System.out.println(tuple.get(0, Long.class) + " " +tuple.get(1, String.class)) ;
		}
		);
	}
	
	
	public void join() {
		EntityManager em = entityManagerFactory.createEntityManager();
		CriteriaBuilder cb = entityManagerFactory.getCriteriaBuilder();
		CriteriaQuery cq = cb.createQuery(Employee.class);
		
		Root<Employee> root = cq.from(Employee.class);
		root.fetch("accountList", JoinType.INNER);
//		Join<Employee,List<Account>> eaj= root.join("accountList", JoinType.INNER);
//		eaj.on
		
		cq.select(root).where(cb.equal(root.get("age"),"32"));
		List li = em.createQuery(cq).getResultList();
		li.forEach(data-> {
			System.out.println(data.toString());
		});
//		cq.select(root).
		
	}
	
//	public void getEmpAndAccount
	

}
