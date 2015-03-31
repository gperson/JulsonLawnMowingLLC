<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Julson Lawn Mowing - About Us</title>
<link rel="stylesheet" href="/resources/foundation-5.5.1/css/foundation.min.css" />
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="icon" type="image/ico" href="/resources/images/favicon.ico"/>
<script src="/resources/foundation-5.5.1/js/vendor/modernizr.js"></script>
</head>
<body>
	<c:import url="/WEB-INF/views/parts/header.jsp"/>
	<div class="container row">
		<div id="mainContent" class="row">
			<div class="medium-12 column">
				<h2 class="underlined">About Us</h2>
				<div class="shadowed">
					<div class="panel">
						<p>Founded in 1997 we started the lawn mowing business mowing
							the flood lots in Breckenridge MN as a way for Cole and Chase to
							make money. We slowly grew into doing residential and commercial
							properties. Throughout the next few years we have added
							dethatching, core aeration, edging, over seeding, fertilizer,
							snow removal, and weed control to our list of services. Most
							recently in 2014 we purchased All Seasons Car Wash and started
							offering auto detailing.</p>
						<p>We are one of the largest licensed and insured lawn care
							companies in the Wahpeton, ND and Breckenridge, MN areas. We are
							continually growing and accepting new customers.</p>
					</div>
					<div class="row">
						<div class="medium-6 column">
							<img class="shadowed_no_pad" alt="snow removal" src="/resources/images/photos/gold_truck.jpg">
						</div>
						<div class="medium-6 column">
							<img class="shadowed_no_pad" alt="tractor" src="/resources/images/photos/tractor.jpg">
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:import url="/WEB-INF/views/parts/footer.jsp"/>
	</div>
	<script src="/resources/foundation-5.5.1/js/vendor/jquery.js"></script>
	<script src="/resources/foundation-5.5.1/js/vendor/fastclick.js"></script>
	<script src="/resources/foundation-5.5.1/js/foundation.min.js"></script>
	<script src="/resources/js/common.js"></script>
</body>
</html>
