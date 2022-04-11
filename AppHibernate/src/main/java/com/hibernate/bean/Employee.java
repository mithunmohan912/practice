package com.hibernate.bean;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import com.hibernate.sequence.CustSquence;


@Entity(name="employee")
@Table(name = "Employee")
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "mithun")
	@GenericGenerator(name="mithun" ,strategy = "com.hibernate.sequence.CustSquence", parameters = {
			@Parameter(name = CustSquence.prefix, value = "MMM_")
	})
//	@SequenceGenerator(name = "mySql", sequenceName = "mithun")
	private String eid;
	private String name;
	private String age;
	private String address;
	
	@Column
	@OneToMany(mappedBy = "employee", cascade = CascadeType.PERSIST)	
	private List<Account> accountList = new ArrayList<Account>();
	
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(String email, String name, String age, String add) {
		super();
//		this.email = email;
		this.name = name;
		this.age = age;
		this.address = add;
	}
	
	
	
public Employee(String name, String age, String address, List<Account> accountList) {
		super();
		this.name = name;
		this.age = age;
		this.address = address;
		this.accountList = accountList;
	}
//	public String getEmail() {
//		return email;
//	}
//	public void setEmail(String email) {
//		this.email = email;
//	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public List<Account> getAccountList() {
		return accountList;
	}
	public void setAccountList(List<Account> accountList) {
		this.accountList = accountList;
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", name=" + name + ", age=" + age + ", address=" + address.toString() + "  accountList:"+ accountList +"]";
	}
	
	
	
	
	
	
	

}
