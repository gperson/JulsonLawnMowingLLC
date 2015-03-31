package com.julsonlawn.webapp.forms;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class MessageForm {
	
	@NotEmpty(message = "Name cannot be empty")
	@Size(max = 150, message = "Length must less then 150 characters")
	private String name;

	@NotEmpty(message = "Email or phone cannot be empty")
	@Size(max = 150, message = "Length must less then 150 characters")
	private String emailOrPhone;

	@NotEmpty(message = "Subject cannot be empty")
	@Size(max = 200, message = "Length must less then 200 characters")
	private String subject;

	@NotEmpty(message = "Message cannot be empty")
	@Size(max = 3000, message = "Length must less then 3000 characters")
	private String message;

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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
