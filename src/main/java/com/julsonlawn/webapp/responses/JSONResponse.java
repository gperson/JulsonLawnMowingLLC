package com.julsonlawn.webapp.responses;

public class JSONResponse {
	
	private String message;
	
	private int status;
	
	private Object result;

	public JSONResponse(){
		this.status = 200;
		this.message = "";
		this.result = null;
	}
	
	public JSONResponse(int status){
		this.status = status;
		this.message = "";
		this.result = null;
	}
	
	public JSONResponse(int status, String message){
		this.status = status;
		this.message = message;
		this.result = null;
	}
	
	public JSONResponse(int status, String message, Object result){
		this.status = status;
		this.message = message;
		this.result = result;
	}
	
	public void failure(String message){
		this.message = message;
		this.status = 400;
	}
	
	public void failure(String message,Object result){
		this.message = message;
		this.result = result;
		this.status = 400;
	}
	
	public void success(String message){
		this.status = 200;
		this.message = message;
	}
	
	public void success(){
		this.status = 200;
	}
	
	public void success(Object result){
		this.status = 200;
		this.result = result;
	}
	
	public Object getObject() {
		return result;
	}

	public void setObject(Object result) {
		this.result = result;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
