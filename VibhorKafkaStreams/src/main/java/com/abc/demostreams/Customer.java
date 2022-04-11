package com.abc.demostreams;

public class Customer {
	
	private MerchantMaster merchantMaster;
	
	private OrderDetails orderDetails;
	
	private Config config;
	
	private String leid;

	public MerchantMaster getMerchantMaster() {
		return merchantMaster;
	}

	public void setMerchantMaster(MerchantMaster merchantMaster) {
		this.merchantMaster = merchantMaster;
	}

	public OrderDetails getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(OrderDetails orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Config getConfig() {
		return config;
	}

	public void setConfig(Config config) {
		this.config = config;
	}

	public String getLeid() {
		return leid;
	}

	public void setLeid(String leid) {
		this.leid = leid;
	}

	@Override
	public String toString() {
		return "Customer [merchantMaster=" + merchantMaster + ", orderDetails=" + orderDetails + ", config=" + config
				+ ", leid=" + leid + "]";
	}

	
	
}
