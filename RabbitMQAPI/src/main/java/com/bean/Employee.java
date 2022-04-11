package com.bean;

import java.util.ArrayList;
import java.util.List;

public class Employee {
	
//	@SequenceGenerator(name = "mySql", sequenceName = "mithun")
	private String eid;
	private String name;
	private String age;
	private String address;
	
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
