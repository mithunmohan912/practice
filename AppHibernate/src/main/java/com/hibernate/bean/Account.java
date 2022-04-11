package com.hibernate.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Account")
public class Account {
	
	@Id
	@GeneratedValue(generator = "myIdentity", strategy = GenerationType.IDENTITY)
	@GenericGenerator(name = "myIdentity", strategy = "com.hibernate.sequence.CustIdentityGenerator")
	private String id;
	private int accountNum;
	private String accountName;
	
	@ManyToOne//(fetch = FetchType.LAZY)
	@JoinColumn(name = "Emp_id")
	private Employee employee;
	
	

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int accountNum, String accountName) {
		super();
		this.accountNum = accountNum;
		this.accountName = accountName;
	}

	public int getAccountNum() {
		return accountNum;
	}

	public void setAccountNum(int accountNum) {
		this.accountNum = accountNum;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", accountNum=" + accountNum + ", accountName=" + accountName + "]";
	}

	

	
	
	
	
}
