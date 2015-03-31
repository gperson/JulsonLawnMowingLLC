package com.julsonlawn.webapp.entities;

import java.util.Date;

public class ServiceRequest {
	
	private String name;

	private String emailOrPhone;

	private String specialMessage;
	
	private Date preferredDate;
	
	private String service;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailOrPhone() {
		return emailOrPhone;
	}

	public void setEmailOrPhone(String emailOrPhone) {
		this.emailOrPhone = emailOrPhone;
	}

	public String getSpecialMessage() {
		return specialMessage;
	}

	public void setSpecialMessage(String specialMessage) {
		this.specialMessage = specialMessage;
	}

	public Date getPreferredDate() {
		return preferredDate;
	}

	public void setPreferredDate(Date preferredDate) {
		this.preferredDate = preferredDate;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}
}
