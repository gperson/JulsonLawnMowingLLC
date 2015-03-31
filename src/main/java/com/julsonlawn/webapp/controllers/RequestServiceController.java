package com.julsonlawn.webapp.controllers;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.julsonlawn.webapp.forms.RequestServiceForm;
import com.julsonlawn.webapp.responses.JSONResponse;
import com.julsonlawn.webapp.services.MessageSenderService;

@Controller
public class RequestServiceController {

	private static final Logger logger = LoggerFactory.getLogger(RequestServiceController.class);
	
	@Autowired
	private MessageSenderService messageSenderService;
	
	/**
	 * Handles POSTs for messages
	 */
	@RequestMapping(value = "/requestService")
	public @ResponseBody JSONResponse sendMessage(@Valid RequestServiceForm requestServiceForm, BindingResult result) {		
		JSONResponse res = new JSONResponse();	
		if (result.hasErrors()) {
            res.failure("Invalid data.",result.getAllErrors());
            return res;
        }

		logger.info(requestServiceForm.getName() + " is requesting a service");
		if(this.messageSenderService.requestService(requestServiceForm)){
			res.success("Request sent.");
		} else {
			 res.failure("Failed to send request.");
		}
		return res;
	}
}
