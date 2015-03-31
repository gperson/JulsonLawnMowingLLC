package com.julsonlawn.webapp.entities;

public class Message {
	
	private String name;
	
	private String emailOrPhone;
	
	private String subject;
	
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
	
	public String toString(){
		StringBuilder sb = new StringBuilder();
		sb.append("<p>Message from: "+this.name);
		sb.append("<br>Subject: "+this.subject);
		sb.append("<br>Message: "+this.message);
		sb.append("<br>Contact: "+this.emailOrPhone+"</p>");
		sb.append("<br>Message sent by http://www.julsonlawn.com");
		return sb.toString();
	}
	
}
