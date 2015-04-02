<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<title>Julson Lawn Mowing - Request Service</title>
<link rel="stylesheet" href="/resources/foundation-5.5.1/css/foundation.min.css" />
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/request.css" />
<link rel="stylesheet" href="/resources/css/datepicker.css" />
<link rel="icon" type="image/ico" href="/resources/images/favicon.ico"/>
</head>
<body>
	<c:import url="/WEB-INF/views/parts/header.jsp"/>
	<div class="container row">
		<div id="mainContent" class="row">
			<div class="medium-12 column">
				<h2 class="underlined">Request Service</h2>
				<div class="medium-8 column">
					<div class="shadowed">
						<form:form id="requestServiceForm" modelAttribute="requestServiceForm" action="/requestService">
							<div class="row">
								<div id="responseContainer" class="large-12 columns">
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>Name</label>
									<form:input id="input_name" type="text" placeholder="Your Name" path="name" />
									<form:errors path="name" />
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>Email address or Phone number</label>
									<form:input id="input_emailOrPhone" type="text" placeholder="Email or Phone" path="emailOrPhone" />
									<form:errors path="emailOrPhone" />
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>Service requested</label>
									<form:input id="input_service" type="text" placeholder="Service" path="service"/>
									<form:errors path="service" />
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>Preferred date of service</label>
									<form:input id="input_preferredDate" class="span2" type="text" path="preferredDate" placeholder="Perferred date of service"/>
									<form:errors path="preferredDate" />
								</div>
							</div>
							<div class="row">
								<div class="large-12 columns">
									<label>Message (Optional)</label>
									<form:textarea id="input_specialMessage" placeholder="Message..." path="specialMessage"></form:textarea>
									<form:errors path="specialMessage" />
								</div>
							</div>
							<input id="sendServiceRequestBtn" type="submit" role="button" class="button expand" value="Send">
						</form:form>
					</div>
				</div>
				<div class="medium-4 column  hide-for-small">
					<div class="shadowed">
						<img class="side-image" alt="fleet" src="/resources/images/photos/fleet.JPG">
						<img class="side-image" alt="logo" src="/resources/images/logo-large.png">
						<img class="side-image" alt="tractor" src="/resources/images/photos/tractor.jpg">
					</div>
				</div>
			</div>
		</div>
		<c:import url="/WEB-INF/views/parts/footer.jsp"/>
	</div>
	<script src="/resources/foundation-5.5.1/js/vendor/jquery.js"></script>
	<script src="/resources/foundation-5.5.1/js/vendor/fastclick.js"></script>
	<script src="/resources/foundation-5.5.1/js/foundation.min.js"></script>
	<script src="/resources/js/datepicker.js"></script>
	<script src="/resources/js/ajax-form-sender.js"></script>	
	<script src="/resources/js/request.js"></script>
	<script src="/resources/js/common.js"></script>
</body>
</html>
