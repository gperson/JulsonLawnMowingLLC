package com.julsonlawn.webapp.services;

import com.julsonlawn.webapp.forms.MessageForm;
import com.julsonlawn.webapp.forms.RequestServiceForm;

public interface MessageSenderService {
	
	/**
	 * Sends a message to the Julson Lawn Mowing email account
	 * @param msg
	 * @return if email was sent successfully sent
	 */
	boolean sendMessage(MessageForm msg);

	/**
	 * Sends a service request message
	 * @param requestServiceForm
	 * @return if email was sent successfully sent
	 */
	boolean requestService(RequestServiceForm requestServiceForm);
	
}
