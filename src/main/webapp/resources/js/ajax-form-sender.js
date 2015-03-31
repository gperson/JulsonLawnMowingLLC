$(document).ready(function() {
	var $formMessage = $('#sendMessageForm');
	var $formRequest = $('#requestServiceForm');

	$formMessage.bind('submit', function(e) {
		toggleDisableInputs($formMessage,true);
		sendForm(e, $formMessage, '/sendMessage');
	});

	$formRequest.bind('submit', function(e) {
		toggleDisableInputs($formRequest,true);
		sendForm(e, $formRequest, '/requestService');
	});
});

function sendForm(e, $form, url){
	$form.find('.error').remove();
	var $inputs = $form.find('input[id^="input_"],textarea[id^="input_"]');
	var data = collectFormData($inputs);
	$.post(url, data, function(response) {
		if (response.status == 400) {
			if(response.object === null){
				var responseDOM = $.parseHTML('<div id="response" data-alert="" class="alert-box radius error">'+response.message+'<a href="#" class="close">×</a></div>');
				$("#responseContainer").append(responseDOM);
				$("#response").show().delay(7000).fadeOut(1000,function() { $(this).remove();});
			} else {
				for (var i = 0; i < response.object.length; i++) {
					var item = response.object[i];
					var $formField = $form.find("#input_" + item.field);
					$formField.after("<small class='error_msg error' style='margin: -17px 0 10px 0'>"+item.defaultMessage+"</small>");
				}
			}
		} else {
			var responseDOM = $.parseHTML('<div id="response" data-alert="" class="alert-box radius success">'+response.message+'<a href="#" class="close">×</a></div>');
			$("#responseContainer").append(responseDOM);
			$("#response").show().delay(5000).fadeOut(1000,function() { $(this).remove();});
			$form.find('.error').remove();
			$inputs.val("");
		}
		toggleDisableInputs($form,false);
		$(document).foundation();
	}, 'json');

	e.preventDefault();
	return false;
}

function collectFormData(fields) {
	var data = {};
	for (var i = 0; i < fields.length; i++) {
		var $item = $(fields[i]);
		data[$item.attr('name')] = $item.val();
	}
	return data;
}

function toggleDisableInputs(form,disable){
	var inputs = form.find('input,textarea');
	for (var i = 0; i < inputs.length; i++) {
		var $item = $(inputs[i]);
		if (disable)
			$item.attr("disabled", "disabled");
        else
        	$item.removeAttr("disabled");
	}
}