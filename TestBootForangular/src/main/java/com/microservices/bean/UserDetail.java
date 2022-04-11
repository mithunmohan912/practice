package com.microservices.bean;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModelProperty;
import springfox.documentation.annotations.ApiIgnore;

public class UserDetail {
	
	private String name;
	private double userId;
	private int age;
	private String address;
	
	
	public UserDetail() {
		// TODO Auto-generated constructor stub
	}
	public UserDetail(String name, int age, String address) {
		this.name = name;
		this.age = age;
		this.address = address;
	}
//	@JsonProperty(required = true)
	@ApiModelProperty(notes="string allowed",allowableValues = "Only string values", required = true)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
//	@JsonProperty(required = true)
	@ApiModelProperty(notes="int allowed", required = true)
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
//	@JsonProperty(required = true)
	@ApiModelProperty(notes="string allowed", required = true)
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@ApiModelProperty(hidden = true)
	@ApiIgnore
	public double getUserId() {
		return userId;
	}
	public void setUserId(double userId) {
		this.userId = userId;
	}
	
	
	

}
