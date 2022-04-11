package com.microservices.bean;

public class CustomBean {
	
	private UserDetail userdetail;
	private String name;
	private int age;
	private String address;
	
	
	public CustomBean() {
		super();
	}
	public UserDetail getUserdetail() {
		return userdetail;
	}
	public void setUserdetail(UserDetail userdetail) {
		this.userdetail = userdetail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
