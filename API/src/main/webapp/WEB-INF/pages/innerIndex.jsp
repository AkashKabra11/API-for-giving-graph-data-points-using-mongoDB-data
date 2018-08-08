<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>${driverId}</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/map.css">
<!-- Bootstrap CSS -->

<!-- CDN Material and open sans font CSS -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<!-- CDN Material and open sans font CSS -->

<!-- DriverScore App CSS -->
<link rel="stylesheet" href="../css/main-app.css">
<link rel="stylesheet" href="../css/charts.css">
<link rel="stylesheet" href="../css/color-profile.css">
<!-- DriverScore App CSS -->

<script
	src="https://apis.mapmyindia.com/advancedmaps/v1/x5l1ejxupfeby9mq7k4ewv44kwsxw196/map_load?v=01."></script>
<style>
html, body, #map {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
}
</style>

<!-- Chart App CSS -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<!-- Chart App CSS -->

</head>
<body>

	<!-- Header Starts-->
	<!-- <header class="bg-primary mn-b-20">
	<div class="container-fluid">
   		<nav class="navbar navbar-expand-lg ">
		  	Brand Logos Starts
			<a class="navbar-brand" href="#">
			  <span><img class="brand-logo" src="images/workamate.png"  alt=""></span>
			</a>
		  	Brand Logos Ends
			
		  	Menu Toggle Starts
		  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><i class="material-icons">menu</i></span>
		  	</button>
		  	Menu Toggle Ends

			Menu Starts
		  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			  <li class="nav-item  active">
				<a class="nav-link " href="#" data-toggle="tooltip" data-placement="bottom" title="Dashboard for Task Management">
					<span class="text">Dashboard</span>
					<span class="sr-only">(current)</span>
				 </a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="#" data-toggle="tooltip" data-placement="bottom" title="Monitor Activities for Field Users">
					<span class="text">Driver</span>
				</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="#" data-toggle="tooltip" data-placement="bottom" title="View Client details and related activities">
					<span class="text">Action</span>
				</a>
			  </li>
				<li class="nav-item">
				<a class="nav-link" href="#" data-toggle="tooltip" data-placement="bottom" title="Detailed overview of the all activities">
					<span class="text">Reports</span>
				</a>
			  </li>
			</ul>
		  </div>
			Menu Ends
			
			User Settings Starts
			<ul class="user-settings">
				<li class="dropdown" >
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="thumb-sm avatar">
							<img src="http://workmate.mapmyindia.com/app/resources/images/a0.png" alt="...">
						</span>
						<span id="loginUsername" class="d-none d-sm-inline-block">Vina Verma</span>
					<b class="caret"></b>
					</a>
				<ul class="dropdown-menu dropdown-menu-right animated fadeInRight">
					<li>
						<a href="http://workmate.mapmyindia.com/app/files/faq.pdf" target="_blank" >Help</a>
					</li>
					<li class="divider"></li>
					<li>
						<a href="http://workmate.mapmyindia.com/app/logout" class="rippleFX">Logout</a>
					</li>
				</ul></li>
		</ul>
			User Settings Ends
		</nav>
	</div>
	</header> -->
	<!-- Header Ends-->
	<div class="container" data-ng-app="driverApp"
		data-ng-controller="mainCtrl as main">
		<div class="row ">
			<div class="col-12 mn-t-20">
				<h2 class="txt-dark">
				<a href="/DriverBehaviour"><i class="material-icons">arrow_back</i></a>
					<strong>Driver ID:</strong> ${driverId}
				</h2>
			</div>
		</div>
		<div class="row mn-t-10">
			<div class="col-12 col-md-6">
				<div class="row ">
					<div class="col-3">
						<span class="milesCount h6">{{totalDistance}}</span> Kms
					</div>
					<div class="col-3">
						<span class="driverCount h6">{{totalTrips}}</span> Trips
					</div>
				</div>
			</div>
			<!-- 			<div class="col-12 col-md-6">
				<div class="row mn-t-20">
					
					<div class="col-12 col-lg-6 offset-lg-6">
						<div class="form-group">
							<input type="date" value="Date">
						</div>
					</div>
				</div>
			</div> -->
		</div>

		<div class="row mn-t-10">
			<div class="col-12 col-lg-3 ">
				<h4 class="h4 txt-muted mn-t-20">Driving Score</h4>
				<div class="white-box text-center">
					<div data-label="{{driverScore}}"
						class="mn-t-20 css-bar css-bar-lg css-bar-purple testabc"></div>
				</div>
			</div>

			<div class="col-12 col-lg-9">
				<h4 class="h4 txt-muted mn-t-20">
					Breakdown<span class="h6"> (Out of 5)</span>
				</h4>
				<div class="row">
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-purple color-band">Acceleration</div>
							<h2 class="pd-10">{{hardAcc}}</h2>
						</div>
					</div>
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-red color-band">Braking</div>
							<h2 class="pd-10">{{hardBrake}}</h2>
						</div>
					</div>
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-green color-band">Phone
								Use</div>
							<h2 class="pd-10">{{phoneUse}}</h2>
						</div>
					</div>
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-warning color-band">Speeding</div>
							<h2 class="pd-10">{{overSpeed}}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row mn-t-10 mn-b-20">
			<div class="col-12">
			<h4 class="h4 txt-muted mn-t-20">Trip Distance: {{TripDistance}} Kms</h4>
				<div id="map"></div>
				<h4 class="h4 txt-muted mn-t-20">Speed Graph</h4>
				<div id="container"
					style="min-width: 310px; height: 400px; margin: 0 auto; border: 1px solid #dddddd; border-top: none;"></div>
					<h4 class="h4 txt-muted mn-t-20">Recent Trips</h4>
				<div class="table-o-border">
					<table class="table table-hover table-responsive-md table-striped">
						<thead class="txt-md">
							<tr>
								<th scope="col">Time</th>
								<th scope="col" >Duration<span class="txt-xs txt-muted"> (HH:MM:SS)</span></th>
								<th scope="col">Distance<span class="txt-xs txt-muted"> (Kms)</span></th>
								<th scope="col">Score</th>
								<th scope="col">Braking</th>
								<th scope="col">Accelaration</th>
								<th scope="col">Phone</th>
								<th scope="col">Speeding</th>
							</tr>
						</thead>
						<tbody>

							<tr ng-repeat="obj in tripsArray" style="cursor: pointer;"
								data-ng-click="main.getTripsDetails(obj.trip_id);">
								<td class="t-cell">{{obj.info.start_time | date : "dd/MM/yy hh:mm a"}}</td>
								<td class="t-cell">{{obj.info.duration_seconds | secondsToTime}}</td>
								<td class="t-cell">{{obj.info.distance_km}}</td>
								<td class="t-cell">{{obj.driving_behavior.score.zendrive_score}}</td>
								<td class="t-cell">{{obj.driving_behavior.event_rating.hard_brake_rating}}</td>
								<td class="t-cell">{{obj.driving_behavior.event_rating.rapid_acceleration_rating}}</td>
								<td class="t-cell">{{obj.driving_behavior.event_rating.phone_use_rating}}</td>
								<td class="t-cell">{{obj.driving_behavior.event_rating.overspeeding_rating}}</td>
							</tr>
							<!--	<tr>
						  <th scope="row">02/02/2018 5:39 AM</th>
						  <td>47m</td>
						  <td>50mins</td>
						  <td>4</td>
						  <td>100</td>
						  <td>A</td>
						  <td>A</td>
						  <td>A</td>
						  <td>A</td>
						</tr> -->
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>

	<!-- Body Starts-->

	<!-- Body Ends-->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../js/jquery-1.11.3.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>

	<script>
		var map = new MapmyIndia.Map("map", {
			center : [ 28.61, 77.23 ],
			zoomControl : true,
			hybrid : true
		});
		/* L.marker([ 28.61, 77.23 ]).addTo(map); */
		/* var myIcon = L.divIcon({html: '<div class="cnt-map-marker" style="position: absolute; top: -40px; right: -15px;"><div class="map-pin bg-purple" ><div class="map-inner"><img src="../images/accelaration.svg" class="mk-activity" alt=""></div></div></div>'});
		L.marker([28.61, 77.23],{icon: myIcon} ).addTo(map); */
		var driverId = "${driverId}";
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		})
	</script>
	<script>
				$(document).ready(function() {
					$(document).on('click','.t-cell',function(){
						$(this).parent().children().addClass('active-cell');
						$(this).parent().siblings().children().removeClass('active-cell');
					});
				});
	</script>
	<script src="../js/bootstrap.js"></script>
	<!-- <script src="../js/high-chart.js"></script> -->
	<script type="text/javascript"
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
	<script type="text/javascript"
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.3/angular-sanitize.js"></script>

	<script type="text/javascript" src="../js/innerPage.js"></script>

</body>
</html>