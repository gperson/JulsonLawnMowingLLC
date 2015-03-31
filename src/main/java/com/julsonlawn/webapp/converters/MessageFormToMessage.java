package com.julsonlawn.webapp.converters;

import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;

import com.julsonlawn.webapp.entities.Message;
import com.julsonlawn.webapp.forms.MessageForm;

public class MessageFormToMessage implements Converter<MessageForm, Message> {

	@Override
	public Message convert(MessageForm msgForm) {
		Message msg = new Message();
		BeanUtils.copyProperties(msgForm, msg);
		return msg;
	}

}
