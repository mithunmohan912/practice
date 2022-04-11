package com.bean;


public class Account {
	
	private String id;
	private int accountNum;
	private String accountName;
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
