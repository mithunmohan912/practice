package com.microservices.bean;

public class Payment {
	
	private int transactionId;
	private int accountId;
	private long offset;
	
	public Payment() {
		super();
	}
	public Payment(int transactionId, int accountId) {
		super();
		this.transactionId = transactionId;
		this.accountId = accountId;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public long getOffset() {
		return offset;
	}
	public void setOffset(long offset) {
		this.offset = offset;
	}
	@Override
	public String toString() {
		return "Payment [transactionId=" + transactionId + ", accountId=" + accountId + ", offset=" + offset + "]";
	}
	
	
}
