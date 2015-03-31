package com.julsonlawn.webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.julsonlawn.webapp.forms.MessageForm;
import com.julsonlawn.webapp.forms.RequestServiceForm;

/**
 * Made one controller for simplicity since there aren't many views,
 * will handle all GET requests
 */
@Controller
public class ViewController {
		
	/**
	 * Home/landing page
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(MessageForm messageForm) {
		return "home";
	}
	
	/**
	 * Services page
	 */
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String services() {
		return "services";
	}
	
	/**
	 * About us page
	 */
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String aboutUs() {
		return "about";
	}
	
	/**
	 * Contact Us page
	 */
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactUs(MessageForm messageForm) {
		return "contact";
	}
	
	/**
	 * Request service page
	 */
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String requestService(RequestServiceForm requestServiceForm) {
		return "request";
	}
}
