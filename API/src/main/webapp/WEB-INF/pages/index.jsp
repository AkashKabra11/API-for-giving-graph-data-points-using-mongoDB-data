<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>InTouch Driver Behaviour</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Bootstrap CSS -->

<!-- CDN Material and open sans font CSS -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<!-- CDN Material and open sans font CSS -->

<!-- DriverScore App CSS -->
<link rel="stylesheet" href="css/main-app.css">
<link rel="stylesheet" href="css/charts.css">
<link rel="stylesheet" href="css/color-profile.css">
<!-- DriverScore App CSS -->
<!-- Chart App CSS -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<!-- Chart App CSS -->
</head>
<body>

	<div class="container " class="hbox stretch" data-ng-app="driverApp"
		data-ng-controller="mainCtrl">
		<div class="row ">
			<div class="col-12 mn-t-20">
				<h2 class="txt-dark">
					<strong>Fleet Overview</strong>
				</h2>
			</div>
		</div>
		<div class="row mn-t-10">
			<div class="col-12 col-md-6">
				<div class="row ">
					<div class="col-3">
						<span class="milesCount h5">{{NoDriver}}</span> Drivers
					</div>
					<div class="col-3">
						<span class="driverCount h5">{{totalDistance}}</span> Kms
					</div>
				</div>
			</div>
			<div class="col-12 col-md-6">
				<!--<div class="row mn-t-20">
					<div class="col-12 col-md-6">
						<div class="form-group">
							<select class="form-control locationList">
								<option>All Locations</option>
								<option>Delhi</option>
							</select>
							</div>
					</div>
					 <div class="col-12 col-md-6">
						<div class="form-group">
							<input type="date" value="Date">
						</div>
					</div> 
				</div>-->
			</div>
		</div>

		<div class="row mn-t-10">
			<div class="col-12 col-lg-3 ">
				<h4 class="h4 txt-muted mn-t-20">Fleet Score</h4>
				<div class="white-box text-center">
					<div id="FleetScore" data-label="{{driving_score}}"
						class="mn-t-20 css-bar css-bar-60 css-bar-lg css-bar-purple testabc"></div>
				</div>
			</div>
			<div class="col-12 col-lg-4 ">
				<h4 class="h4 txt-muted mn-t-20">Driver Ranking</h4>
				<div class="white-box text-center">
					<div id="bContainer"
						style="min-width: 310px; max-width: 310px; height: 400px; margin: 0 auto"></div>
				</div>
			</div>

			<div class="col-12 col-lg-5">
				<h4 class="h4 txt-muted mn-t-20">Breakdown</h4>
				<div class="row">
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-blue color-band">Excellent
								Drivers</div>
							<h2 class="pd-10">{{ bestDriver }}</h2>
						</div>
					</div>
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-green color-band">Fair
								Drivers</div>
							<h2 class="pd-10">{{ fairDriver }}</h2>
						</div>
					</div>
					<div class="col-12 col-md-6 mn-b-20">
						<div class="white-box">
							<div class="txt-muted pd-10 txt-white bg-red color-band">Risky
								Drivers</div>
							<h2 class="pd-10">{{ worstDriver }}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row mn-t-10 mn-b-20">
			<div class="col-12">
				<h4 class="h4 txt-muted mn-t-20">Drivers</h4>
				<div class="table-o-border">
					<table class="table table-hover table-responsive-md">
						<thead class="txt-md">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Driver Name</th>
								<th scope="col" >Duration<span class="txt-xs txt-muted"> (HH:MM:SS)</span></th>
								<th scope="col">Distance<span class="txt-xs txt-muted"> (Kms)</span></th>
								<th scope="col">Trips</th>
								<th scope="col">Score</th>
								<th scope="col">Braking</th>
								<th scope="col">Accelaration</th>
								<th scope="col">Phone</th>
								<th scope="col">Speeding</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="obj in driverList">
							
								<td class="t-cell">{{$index+1}}</td>
								<td class="t-cell"><a href="innerIndex/{{ obj.driver_id }}">{{
										obj.driver_id }}</a></td>
								<td class="t-cell">{{ obj.info.duration_seconds | secondsToTime }}</td>
								<td class="t-cell">{{ obj.info.distance_km }}</td>
								<td class="t-cell">{{ obj.info.trip_count }}</td>
								<td class="t-cell">{{ obj.driving_behavior.score.zendrive_score }}</td>
								<td class="t-cell">{{
									obj.driving_behavior.event_rating.hard_brake_rating}}</td>
								<td class="t-cell">{{
									obj.driving_behavior.event_rating.rapid_acceleration_rating}}</td>
								<td class="t-cell">{{ obj.driving_behavior.event_rating.phone_use_rating}}</td>
								<td class="t-cell">{{
									obj.driving_behavior.event_rating.overspeeding_rating}}</td>

							</tr>
						</tbody>
					</table>
				</div>
				<div></div>
			</div>

			<!-- Body Starts-->

			<!-- Body Ends-->
			<!-- Optional JavaScript -->
			<!-- jQuery first, then Popper.js, then Bootstrap JS -->
			<script src="js/jquery-1.11.3.min.js"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
				integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
				crossorigin="anonymous"></script>

			<script>
				$(function() {
					$('[data-toggle="tooltip"]').tooltip()
				})
			</script>
			<script>
				$(document).ready(function() {
					$('.t-cell').click(function() {
						$(this).parent().children().addClass('active-cell');
						$(this).parent().siblings().children().removeClass('active-cell');
					});
				});
			</script>
			<script src="js/bootstrap.js"></script>

			<script type="text/javascript"
				src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
			<script type="text/javascript"
				src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.3/angular-sanitize.js"></script>

			<script type="text/javascript" src="js/main.js"></script>
			<!-- <script src="js/bar-chart.js"></script> -->
</body>
</html>