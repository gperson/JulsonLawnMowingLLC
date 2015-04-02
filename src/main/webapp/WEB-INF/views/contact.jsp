<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<title>Julson Lawn Mowing - Contact Us</title>
<link rel="stylesheet" href="/resources/foundation-5.5.1/css/foundation.min.css" />
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/contact.css" />
<link rel="icon" type="image/ico" href="/resources/images/favicon.ico"/>
</head>
<body>
	<c:import url="/WEB-INF/views/parts/header.jsp"/>
	<div class="container row">
		<div id="mainContent" class="row">
			<div class="medium-12 column">
				<h2 class="underlined">Contact Us</h2>
				<div class="medium-6 column">
					<div class="shadowed">
						<h4>Address</h4>
						<address>
							Julson Lawn Mowing LLC<br> 
							507 17th Ave N<br> 
							Wahpeton, ND 58075
						</address>
						<hr>
						<h4>Contact Information</h4>
						<p>Telephone: (701) 642-6805<br>
						 Fax: (208) 493-8395<br>
						 Email: <a href="mailto:julsonlawn@wah.midco.net">julsonlawn@wah.midco.net</a></p>
					</div>
					<div class="shadowed">
						<div id="logo-large-wrapper">
							<img alt="logo large" src="/resources/images/logo-large.png">
						</div>
					</div>	
				</div>
				<div class="medium-6 column">
					<div class="shadowed">
						<h4>Send us a Message</h4>
						<form:form id="sendMessageForm" modelAttribute="messageForm" action="/sendMessage">
							<div class="row">
								<div id="responseContainer" class="large-12 columns">
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>
										<form:input id="input_name" type="text" placeholder="Your Name" path="name" />
										<form:errors path="name" />
									</label>
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>
										<form:input id="input_subject" type="text" placeholder="Subject" path="subject"/>
										<form:errors path="subject" />
									</label>
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>
										<form:input id="input_emailOrPhone" type="text" placeholder="Email Address or Phone Number" path="emailOrPhone" />
										<form:errors path="emailOrPhone" />
									</label>
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>
										<form:textarea id="input_message" placeholder="Message..." path="message"></form:textarea>
										<form:errors path="message" />
									</label>
								</div>
							</div>
							<input id="sendMessageBtn" type="submit" role="button" class="button expand" value="Send">
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<c:import url="/WEB-INF/views/parts/footer.jsp"/>
	</div>
	<script src="/resources/foundation-5.5.1/js/vendor/jquery.js"></script>
	<script src="/resources/foundation-5.5.1/js/vendor/fastclick.js"></script>
	<script src="/resources/foundation-5.5.1/js/foundation.min.js"></script>
	<script src="/resources/js/ajax-form-sender.js"></script>	
	<script src="/resources/js/common.js"></script>
</body>
</html>
