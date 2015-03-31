package com.julsonlawn.webapp.exceptions;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.julsonlawn.webapp.responses.JSONResponse;

@ControllerAdvice
public class GlobalExceptionHandler {
 
	private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

	
	@ExceptionHandler(Exception.class)
	public @ResponseBody JSONResponse handleAllException(Exception ex, HttpServletResponse response) {
		response.setStatus(200);
		logger.error("Handling internal exception: "+ex.getMessage());
		return new JSONResponse(400,"Internal server error.");
	}
 
}