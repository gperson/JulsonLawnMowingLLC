package com.julsonlawn.webapp.converters;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;

import com.julsonlawn.webapp.entities.ServiceRequest;
import com.julsonlawn.webapp.forms.RequestServiceForm;

public class RequestServiceFormToServiceRequest implements Converter<RequestServiceForm, ServiceRequest> {

	private static final Logger logger = LoggerFactory.getLogger(RequestServiceFormToServiceRequest.class);
	
	@Override
	public ServiceRequest convert(RequestServiceForm reqForm) {
		ServiceRequest req = new ServiceRequest();
		BeanUtils.copyProperties(reqForm, req,"preferredDate");
		SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");
		try {
			req.setPreferredDate(formatter.parse(reqForm.getPreferredDate()));
		} catch (ParseException e) {
			logger.error("Error parsing preferred date.", e);
		}
		return req;
	}

}
