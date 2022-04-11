package com.microservices.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity(name = "Employees")
@Table
public class Employees {
	@Id
	private int id;
	private String name;
	private String address;
	
	private int telephone;
	
	
	public Employees() {
		super();
	}
	
	
	public Employees(String name, String address, int telephone) {
		super();
		this.name = name;
		this.address = address;
		this.telephone = telephone;
	}
	
	public Employees(String name, String address) {
		super();
		this.name = name;
		this.address = address;
	}


	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	
	
	
	
	
}
