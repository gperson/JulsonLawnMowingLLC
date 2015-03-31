package com.julsonlawn.webapp.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.julsonlawn.webapp.forms.MessageForm;
import com.julsonlawn.webapp.responses.JSONResponse;
import com.julsonlawn.webapp.services.MessageSenderService;

/**
 * This controller will handle request/responses for
 * the messaging system
 */
@Controller
public class MessageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MessageController.class);
	
	@Autowired
	private MessageSenderService messageSenderService;
	
	/**
	 * Handles POSTs for messages
	 */
	@RequestMapping(value = "/sendMessage")
	public @ResponseBody JSONResponse sendMessage(@Valid MessageForm messageForm, BindingResult result) {		
		JSONResponse res = new JSONResponse();
		if (result.hasErrors()) {
            res.failure("Invalid data.",result.getAllErrors());
            return res;
        }
		
		logger.info(messageForm.getName() + " is sending a message");
		if(this.messageSenderService.sendMessage(messageForm)){
			res.success("Message sent.");
		} else {
			res.failure("Couldn't send message.");
		}
		return res;
	}
}
