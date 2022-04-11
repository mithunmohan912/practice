package com.abc.demostreams;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Config {

	private String leid;
	
	private String applicationId;
	
	private String isDCCEnabled;

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

	public String getIsDCCEnabled() {
		return isDCCEnabled;
	}

	public void setIsDCCEnabled(String isDCCEnabled) {
		this.isDCCEnabled = isDCCEnabled;
	}

	@Override
	public String toString() {
		return "Config [leid=" + leid + ", applicationId=" + applicationId + ", isDCCEnabled=" + isDCCEnabled + "]";
	}


	
}

