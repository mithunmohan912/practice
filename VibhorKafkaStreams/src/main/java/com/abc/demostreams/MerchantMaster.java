package com.abc.demostreams;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class MerchantMaster {

	private String leid;
	
	private String applicationId;
	
	private String tradingName;

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

	public String getTradingName() {
		return tradingName;
	}

	public void setTradingName(String tradingName) {
		this.tradingName = tradingName;
	}

	@Override
	public String toString() {
		return "MerchantMaster [leid=" + leid + ", applicationId=" + applicationId + ", tradingName=" + tradingName
				+ "]";
	}

	
}
