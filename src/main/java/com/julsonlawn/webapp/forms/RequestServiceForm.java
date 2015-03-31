package com.julsonlawn.webapp.forms;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class RequestServiceForm {
	
	@NotEmpty(message = "Name cannot be empty")
	@Size(max = 150, message = "Length must less then 150 characters")
	private String name;

	@NotEmpty(message = "Email or phone cannot be empty")
	@Size(max = 150, message = "Length must less then 150 characters")
	private String emailOrPhone;

	@Size(max = 3000, message = "Length must less then 3000 characters")
	private String specialMessage;
	
	@Pattern(regexp="(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])-(20\\d\\d)", message="Invalid date, format must be 'mm-dd-yyyy'.")
	private String preferredDate;
	
	@NotEmpty(message = "Service cannot be empty")
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

	public String getPreferredDate() {
		return preferredDate;
	}

	public void setPreferredDate(String preferredDate) {
		this.preferredDate = preferredDate;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}
}
