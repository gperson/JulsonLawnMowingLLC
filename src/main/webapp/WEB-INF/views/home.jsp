<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Julson Lawn Mowing - Home</title>
<link rel="stylesheet" href="/resources/foundation-5.5.1/css/foundation.min.css" />
<link rel="stylesheet" href="/resources/css/home.css" />
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="icon" type="image/ico" href="/resources/images/favicon.ico"/>
<script src="/resources/foundation-5.5.1/js/vendor/modernizr.js"></script>
</head>
<body>
	<div id="fb-root"></div>
	<c:import url="/WEB-INF/views/parts/header.jsp"/>
	<div class="container row">
		<div id="mainContent" class="row">
			<div class="medium-6 column">
				<div class="shadowed">
					<div id="mainContentLogo">
						<img alt="logo"
							src="/resources/images/logo-small.png">
					</div>
					<hr>
					<div class="panel">
						<h5 class="underlined">Welcome</h5>
						<p>Julson Lawn Mowing is a licensed and insured lawn care
							company in the Wahpeton, ND and Breckenridge, MN areas. We provide
							lawn maintenance services for both residential and commercial
							properties. Some of our services include:</p>
						<ul class="disc">
							<li><a href="/services#lawn_care">Lawn care</a>, including fertilization and weed control</li>
							<li><a href="/services#snow_removal">Snow removal</a></li>
							<li><a href="/services#auto_detailing">Auto detailing</a></li>
						</ul>
						<p>To see a complete list of our services and for more information see 
							our <a href="/services">services page</a>.</p>
					</div>
					<hr>
					<div class="shadowed show-for-small-only">
						<a id="requestServiceBtn" class="show-for-small-only button expand success" href="/request">Request a Service</a>
					</div>
					<hr>
					<div>
						<h3 id="header_contact">Contacting Us</h3>
					</div>
					<div class="panel">
						<p>If you have any questions please contact <a href="/contact">Jay Julson</a> at
							(701)&#8209;642&#8209;6805 or send us a message using the fields bellow.</p>
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
			<div class="medium-6 column  hide-for-small">
				<div class="shadowed">
					<div id="featured" data-orbit data-options="timer_speed:5000;pause_on_hover:true;">
						<div class="sliderImageContainer">
							<img class="sliderImage" src="/resources/images/photos/fleet.JPG" alt="Julson Photo 1">
						</div>
						<div class="sliderImageContainer">
							<img class="sliderImage" src="/resources/images/photos/tall_grass.jpg" alt="Julson Photo 2">
						</div>
						<div class="sliderImageContainer"> 
							<img class="sliderImage" src="/resources/images/photos/blue_truck.jpg" alt="Julson Photo 3">
						</div>
						<div class="sliderImageContainer"> 
							<img class="sliderImage" src="/resources/images/photos/working2.jpeg" alt="Julson Photo 4">
						</div>
					</div>	
				</div>
				<div class="shadowed">
					<a id="requestServiceBtn" class="button expand success" href="/request">Request a Service</a>
				</div>
				<div class="shadowed">
					<div id="likebox-wrapper">
						<div id="fbFeed" class="fb-like-box" data-href="https://www.facebook.com/pages/Julson-Lawn-Mowing-LLC/135726559824645" data-width="485" data-colorscheme="light" data-show-faces="false" data-header="false" data-stream="true" data-show-border="false"></div>
					</div>	
				</div>
				<div class="shadowed">
					<div id="logo-large-wrapper">
						<img alt="logo large" src="/resources/images/logo-large.png">
					</div>	
				</div>	
			</div>
		<c:import url="/WEB-INF/views/parts/footer.jsp"/>
		</div>
	</div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<script src="/resources/foundation-5.5.1/js/vendor/jquery.js"></script>
	<script src="/resources/foundation-5.5.1/js/vendor/fastclick.js"></script>
	<script src="/resources/foundation-5.5.1/js/foundation.min.js"></script>
	<script src="/resources/js/ajax-form-sender.js"></script>
	<script src="/resources/js/common.js"></script>	
</body>
</html>
