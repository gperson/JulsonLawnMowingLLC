package com.julsonlawn.webapp.services;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.stereotype.Service;

import com.julsonlawn.webapp.constants.Constants;
import com.julsonlawn.webapp.entities.Message;
import com.julsonlawn.webapp.entities.ServiceRequest;
import com.julsonlawn.webapp.forms.MessageForm;
import com.julsonlawn.webapp.forms.RequestServiceForm;

@Service
public class MessageSenderServiceImpl implements MessageSenderService {

	private static final Logger logger = LoggerFactory.getLogger(MessageSenderServiceImpl.class);
	
	@Autowired
	private ConversionService conversionService;
	
	@Override
	public boolean sendMessage(MessageForm msgForm) {
		Message msg = this.conversionService.convert(msgForm, Message.class);
		StringBuilder sb = new StringBuilder();
		sb.append("Message From: "+msg.getName()+"<br>");
		sb.append("Contact Information: "+msg.getEmailOrPhone()+"<br>");
		sb.append("Subject: "+msg.getSubject()+"<br>");
		sb.append("Message: "+msg.getMessage());
		return sendEmail("JUSLON LAWN MOWING MESSAGE FROM - "+msg.getName(),sb.toString());
	}
	
	@Override
	public boolean requestService(RequestServiceForm requestServiceForm) {
		ServiceRequest req = this.conversionService.convert(requestServiceForm, ServiceRequest.class);
		StringBuilder sb = new StringBuilder();
		sb.append("Message From: "+req.getName()+"<br>");
		sb.append("Contact Information: "+req.getEmailOrPhone()+"<br>");
		sb.append("Service Request: "+req.getService()+"<br>");
		sb.append("Date Preferred for Service : "+req.getPreferredDate()+"<br>");
		sb.append("Special Message: "+req.getSpecialMessage());
		return sendEmail("JUSLON LAWN MOWING SERVICE REQUEST FROM - "+req.getName(),sb.toString());	
	}
	
	private boolean sendEmail(String subject, String body){
		Properties properties = System.getProperties();
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getDefaultInstance(properties, null);
		MimeMessage message = new MimeMessage(session);
		try{
			message.addRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(Constants.EMAIL_TO));
			message.setSubject(subject);
			message.setContent(body, "text/html");		
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", Constants.EMAIL_FROM, Constants.EMAIL_FROM_PWD);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (MessagingException e){
			logger.error("Error sending email.", e);			
			return false;
		}
		return true;
	}

}
