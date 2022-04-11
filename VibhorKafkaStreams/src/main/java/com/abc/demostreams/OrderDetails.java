package com.abc.demostreams;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class OrderDetails {

	private String leid;
	
	private String applicationId;
	
	private String partnerId;

	public String getLeid() {
		return leid;
	}

	public void setLeid(String leid) {
		this.leid = leid;
	}

	public String getApplicationId() {
		return applicationId;
	}

	public void setApplicationId(String applicationId) {
		this.applicationId = applicationId;
	}

	public String getPartnerId() {
		return partnerId;
	}

	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}

	@Override
	public String toString() {
		return "OrderDetails [leid=" + leid + ", applicationId=" + applicationId + ", partnerId=" + partnerId + "]";
	}
	
}
