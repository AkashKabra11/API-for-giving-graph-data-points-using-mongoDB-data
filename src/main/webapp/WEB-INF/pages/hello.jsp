<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>WorkMate</title>

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
	<section class="hbox stretch" data-ng-app="driverApp"
		data-ng-controller="mainCtrl">
		<div class="container">
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
							<span class="milesCount">#</span>Miles
						</div>
						<div class="col-3">
							<span class="driverCount">#</span>Drivers
						</div>
					</div>
					<div class="row mn-t-10">
						<div class="col-12 txt-red txt-md">
							<span class="errorMessage"><i
								class="material-icons txt-md font-weight-bold">error</i></span>1 Data
							Issue
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6">
					<div class="row mn-t-20">
						<div class="col-6">
							<div class="form-group">
								<select class="form-control locationList">
									<option>All Locations</option>
									<option>Delhi</option>
									<option>Noida</option>
									<option>Gurugram</option>
								</select>
							</div>
						</div>
						<div class="col-6">
							<div class="form-group">
								<input type="date" value="Date">
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row mn-t-10">
				<div class="col-12 col-lg-3 ">
					<h4 class="h4 txt-muted mn-t-20">InTouch Score</h4>
					<div class="white-box text-center">
						<div data-label="{{driving_score}}"
							class="mn-t-20 css-bar css-bar-60 css-bar-lg css-bar-success"></div>
					</div>
				</div>

				<div class="col-12 col-lg-9">
					<h4 class="h4 txt-muted mn-t-20">Breakdown</h4>
					<div class="row">
						<div class="col-12 col-md-4">
							<div class="white-box">
								<div class="txt-muted m-t-20 pd-10 txt-white bg-blue">Excellent
									Drivers</div>
								<h2 class="pd-10">{{ bestDriver }}</h2>
							</div>
						</div>
						<div class="col-12 col-md-4">
							<div class="white-box">
								<div class="txt-muted m-t-20 pd-10 txt-white bg-green">Fair
									Drivers</div>
								<h2 class="pd-10">{{ fairDriver }}</h2>
							</div>
						</div>
						<div class="col-12 col-md-4">
							<div class="white-box">
								<div class="txt-muted m-t-20 pd-10 txt-white bg-red">Risky
									Drivers</div>
								<h2 class="pd-10">{{ worstDriver }}</h2>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row mn-t-10 mn-b-20">
				<div class="col-12">
					<h4 class="h4 txt-muted mn-t-20">Top Drivers</h4>
					<div class="table-o-border">
						<table class="table table-hover table-responsive-md">
							<thead class="txt-md">
								<tr>
									<th scope="col">#</th>
									<th scope="col">Driver Name</th>
									<th scope="col">Duration</th>
									<th scope="col">Distance</th>
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
									<td>{{$index+1}}</td>
									<td><a href="innerIndex/{{ obj.driver_id }}">{{ obj.driver_id }}</a></td>
									<td>{{ obj.info.duration_seconds }}</td>
									<td>{{ obj.info.distance_km }}</td>
									<td>{{ obj.info.trip_count }}</td>
									<td>{{ obj.driving_behavior.score.zendrive_score }}</td>
									<td>{{ obj.driving_behavior.event_rating.hard_brake_rating}}</td>
									<td>{{ obj.driving_behavior.event_rating.rapid_acceleration_rating}}</td>
									<td>{{ obj.driving_behavior.event_rating.phone_use_rating}}</td>
									<td>{{ obj.driving_behavior.event_rating.overspeeding_rating}}</td>
								</tr>
								<!-- <tr>
						  <td>1</td>
						  <td>Rishin Kalra</td>
						  <td>47m</td>
						  <td>50mins</td>
						  <td>4</td>
						  <td>100</td>
						  <td>A</td>
						  <td>A</td>
						  <td>A</td>
						  <td>A</td>
						</tr>
						<tr>
						  <td>2</td>
						  <td>Anil Maurya</td>
						  <td>27m</td>
						  <td>20mins</td>
						  <td>3</td>
						  <td>92</td>
						  <td>B</td>
						  <td>A</td>
						  <td>B</td>
						  <td>A</td>
						</tr>
						<tr>
						  <td>3</td>
						  <td>Anant Rana</td>
						  <td>40m</td>
						  <td>40mins</td>
						  <td>72</td>
						  <td>F</td>
						  <td>A</td>
						  <td>B</td>
						  <td>A</td>
						  <td>A</td>
						</tr> -->
							</tbody>
						</table>
					</div>
					<div></div>
				</div>
			</div>
		</div>
	</section>
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
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript"
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
	<script type="text/javascript"
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.3/angular-sanitize.js"></script>

	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>