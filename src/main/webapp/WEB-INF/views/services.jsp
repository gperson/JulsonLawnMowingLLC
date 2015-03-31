<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Julson Lawn Mowing - Services</title>
<link rel="stylesheet" href="/resources/foundation-5.5.1/css/foundation.min.css" />
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/services.css" />
<link rel="icon" type="image/ico" href="/resources/images/favicon.ico"/>
<script src="/resources/foundation-5.5.1/js/vendor/modernizr.js"></script>
</head>
<body>
	<c:import url="/WEB-INF/views/parts/header.jsp"/>
	<div class="container row">
		<div id="mainContent" class="row">
			<div class="medium-12 column">
				<h2 class="underlined">Services</h2>
				<div class="shadowed">
					<h4 id="lawn_care">Lawn Care</h4>
					<div class="panel">
						<p>At Julson Lawn Mowing we are committed to fulfilling all of your lawn care needs. We 
							provide many different lawn care services for both residential and commersial properties, 
							they include:</p>
						<ul class="disc">
							<li>Lawn mowing</li>
							<li>Trimming</li>
							<li>Fertilize and weed control</li>
							<li>Core aeration</li>
							<li>Dethatching (power raking)</li>
							<li>Edging</li>
							<li>Overseeding</li>
							<li>Spring and Fall cleanup</li>
							<li>Gravel removal from lawn</li>
						</ul>
						<p>For any questions about our lawn care services and/or pricing send us 
							a <a>message</a> or contact <a>Jay Julson</a>.
					</div>
					<div class="row">
						<div class="medium-4 column">
							<img class="shadowed_no_pad" alt="mowing" src="/resources/images/photos/sweeper.jpg">
							<div class="captions panel">
								<h5>Gravel Removal</h5>
								<p>Removes unwanted rocks and sand from your lawn.</p>
							</div>
						</div>
						<div class="medium-4 column">
							<img class="shadowed_no_pad" alt="dethatching" src="/resources/images/photos/working2.jpeg">
							<div class="captions panel">
								<h5>Dethatching</h5>
								<p>When grass clippings generate too fast for natural processes to break them down, an unwanted barrier is formed keeping moisture and air from reaching the grass. Dethatching will remove this unwanted barrier.</p>
							</div>
						</div>
						<div class="medium-4 column">
							<img class="shadowed_no_pad" alt="working" src="/resources/images/photos/working3.jpeg">
							<div class="captions panel">
								<h5>Core Aeration</h5>
								<p>For information on the importance and benefits of core aeration go <a href="https://www.scottslawnservice.com/sls/templates/index.jsp?pageUrl=slscorelawnaeration">here</a>.</p>
							</div>
						</div>
					</div>
					<hr>
					<h4 id="snow_removal">Snow Removal</h4>
					<div class="panel">
						<p>We provide both residential and commercial snow removal, if you have and questions about
							this services and/or our pricing send us a <a>message</a> or contact <a>Jay Julson</a>. </p>
					</div>
					<hr>
					<h4 id="auto_detailing">Auto Detailing</h4>
					<div class="panel">
						<div class="row">
							<div class="medium-7 column">
								<p>Julson Lawn Mowing also provides auto detailing at All Seasons Car Wash,
								1300&nbsp;4th&nbsp;Ave&nbsp;S (One block west of Econo Foods). If you have any 
								questions about our auto detailing service send us a <a>message</a> or 
								contact <a>Jay Julson</a>.</p>
								<img id="carwash_img" class="shadowed_no_pad hide-for-small-only" alt="all seasons" src="/resources/images/photos/carwash_trailer.jpg">
							</div>
							<div class="medium-5 column" id="map-canvas"></div>
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
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script>
		function initialize() {
			var myLatlng = new google.maps.LatLng(46.261702, -96.620102);
			var mapOptions = {
				zoom : 15,
				center : myLatlng,
				zoomControl : true,
				zoomControlOptions : {
					style : google.maps.ZoomControlStyle.SMALL
				}
			}
			var map = new google.maps.Map(
					document.getElementById('map-canvas'), mapOptions);

			var marker = new google.maps.Marker({
				position : myLatlng,
				map : map,
				title : 'All Seasons Car Wash'
			});
		}

		google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	<script src="/resources/js/common.js"></script>
</body>
</html>
