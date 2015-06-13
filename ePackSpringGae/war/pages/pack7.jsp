
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<title>Pack7 India</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 60px;
}

/* Custom container */
.container {
	margin: 0 auto;
	max-width: 1000px;
}

.container>hr {
	margin: 60px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
	margin: 50px 0;
	text-align: left;
}

.jumbotron h1 {
	font-size: 60px;
	line-height: 1;
}

.jumbotron .lead {
	font-size: 18px;
	line-height: 1.25;
}

.jumbotron .btn {
	font-size: 21px;
	padding: 14px 24px;
}

/* Supporting marketing content */
.marketing {
	margin: 60px 0;
}

.marketing p+h4 {
	margin-top: 28px;
}

/* Customize the navbar links to be fill the entire space of the .navbar */
.navbar .navbar-inner {
	padding: 0;
}

.navbar .nav {
	margin: 0;
	display: table;
	width: 100%;
}

.navbar .nav li {
	display: table-cell;
	width: 1%;
	float: none;
}

.navbar .nav li a {
	font-weight: bold;
	text-align: center;
	border-left: 1px solid rgba(255, 255, 255, .75);
	border-right: 1px solid rgba(0, 0, 0, .1);
}

.navbar .nav li:first-child a {
	border-left: 0;
	border-radius: 3px 0 0 3px;
}

.navbar .nav li:last-child a {
	border-right: 0;
	border-radius: 0 3px 3px 0;
}
</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/ico/favicon.png">

</head>

<body>


	<div class="container">
		<div class="masthead">
			<h1>
				<a href="pack7" style="text-decoration: none;">Pack7 India</a>
			</h1>

			<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
						<ul class="nav">
							<li class="active"><a href="pack7">Home</a></li>
							<li><a href="sendparcel">Send Parcel</a></li>
							<li><a href="trackparcel">Track Parcel</a></li>
							<li><a href="about">About</a></li>
							<li><a href="contact">Contact</a></li>
							<li><a href="LogoutServlet">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /.navbar -->
		</div>
		<div>
			<ul class="breadcrumb">
				<li><a href="pack7.html">Home</a></li>
			</ul>
		</div>
		<table>
			<tr>
				<td colspan="2" style="font-weight: bold;">Available Servlets:</td>
			</tr>
			<tr>
				<td><a href="movie/avengers">Go to Avengers Movie</a></td>
			</tr>
		</table>
		<!-- Jumbotron -->
		<div class="jumbotron" id="marketingstuff">
			<h2>Parcel Details Form</h2>
			<div class="gutter-top-md tab-pane fade in active" id="domestic">
				<form id="sendParcelForm" name="sendParcel" method="post"
					action="sendparcel"
					onsubmit="return validateForm()">

					<div class="col-md-12 pickparcel">
						<div class="row">

							<div class="col-md-6 pickparcel">
								<div class="row">
									<div class="col-xs-3 col-md-3 pick_color">
										<strong>From*:</strong>
									</div>
									<div class="col-xs-9 col-md-9">
										<div class="select2-container select2 form-control"
											id="s2id_city_from">
											<a href="javascript:void(0)"
												class="select2-choice select2-default" tabindex="-1"> <span
												class="select2-chosen" id="select2-chosen-3">Collection
													City</span><abbr class="select2-search-choice-close"></abbr> <span
												class="select2-arrow" role="presentation"><b
													role="presentation"></b></span></a> <input
												class="select2-focusser select2-offscreen" type="text"
												aria-haspopup="true" role="button"
												aria-labelledby="select2-chosen-3" id="s2id_autogen3">
											<ul class="select2-results" role="listbox"
												id="select2-results-3">
											</ul>
										</div>
										<div class="select2-container select2 form-control"
											id="s2id_postcode">
											<a href="javascript:void(0)"
												class="select2-choice select2-default" tabindex="-1"> <span
												class="select2-chosen" id="select2-chosen-4">Pincode</span><abbr
												class="select2-search-choice-close"></abbr> <span
												class="select2-arrow" role="presentation"><b
													role="presentation"></b></span></a> <input
												class="select2-focusser select2-offscreen" type="text"
												aria-haspopup="true" role="button"
												aria-labelledby="select2-chosen-4" id="s2id_autogen4">
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="row">
									<div class="col-xs-3 col-md-3 pick_color">
										<strong>To*:</strong>
									</div>
									<div class="col-xs-9">
										<div class="select2-container select2 form-control"
											id="s2id_city_to">
											<a href="javascript:void(0)"
												class="select2-choice select2-default" tabindex="-1"> <span
												class="select2-chosen" id="select2-chosen-5">Delivery
													City</span><abbr class="select2-search-choice-close"></abbr> <span
												class="select2-arrow" role="presentation"><b
													role="presentation"></b></span></a> <input
												class="select2-focusser select2-offscreen" type="text"
												aria-haspopup="true" role="button"
												aria-labelledby="select2-chosen-5" id="s2id_autogen5">
										</div>

										<div class="select2-container select2 form-control"
											id="s2id_pinecode_to">
											<a href="javascript:void(0)"
												class="select2-choice select2-default" tabindex="-1"> <span
												class="select2-chosen" id="select2-chosen-6">Pincode</span><abbr
												class="select2-search-choice-close"></abbr> <span
												class="select2-arrow" role="presentation"><b
													role="presentation"></b></span></a> <input
												class="select2-focusser select2-offscreen" type="text"
												aria-haspopup="true" role="button"
												aria-labelledby="select2-chosen-6" id="s2id_autogen6">
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<div class="col-md-12 pickparcel">
						<div class="row">

							<div class="col-xs-3 col-md-3" style="width: 325px; height: 43px">
								<a href="#" class="thumbnail" title="Document"> <input
									onclick="getpassword2()" id="document" type="radio"
									name="type_parcel" value="document" style="width: 45px;">
									Document <input id="parcel" onclick="getpassword()"
									type="radio" name="type_parcel" value="parcel"
									checked="checked" style="width: 43px;"> Parcel

								</a>
							</div>

						</div>


						<div class="row ">
							<strong>Weight</strong> <input name="weight" class="form-control"
								type="text" id="weight" placeholder="Required"> kg
						</div>
					</div>
			</div>

			<div class="col-md-12 pickparcel">
				<div class="row">
					<div class="col-md-12 pickparcel pick_color"
						style="text-align: left;">
						<strong>Parcel Dimension Details</strong>
					</div>
					<div class="col-md-12">
						<div class="row">

							<div class="row">
								<strong>Length</strong> <input name="length"
									class="form-control" id="length" required="required"
									type="text" placeholder="Required" style="width: 143px;">
								cm <strong>Width</strong> <input name="width"
									class="form-control" id="width" required="required" type="text"
									placeholder="Required" style="width: 143px;"> cm <strong>Height</strong>
								<input name="height" class="form-control" id="height"
									required="required" type="text" placeholder="Required"
									style="width: 143px;"> cm

							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-12 pickparcel">
				<button type="submit" class="btn btn-secondary btn-lg btn-block">Book
					Now</button>
			</div>

			</form>
		</div>

	</div>

	<div class="footer">
		<p align="left">&copy; Company 2015</p>
	</div>

	</div>
	<!-- /container -->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap-transition.js"></script>
	<script src="assets/js/bootstrap-alert.js"></script>
	<script src="assets/js/bootstrap-modal.js"></script>
	<script src="assets/js/bootstrap-dropdown.js"></script>
	<script src="assets/js/bootstrap-scrollspy.js"></script>
	<script src="assets/js/bootstrap-tab.js"></script>
	<script src="assets/js/bootstrap-tooltip.js"></script>
	<script src="assets/js/bootstrap-popover.js"></script>
	<script src="assets/js/bootstrap-button.js"></script>
	<script src="assets/js/bootstrap-collapse.js"></script>
	<script src="assets/js/bootstrap-carousel.js"></script>
	<script src="assets/js/bootstrap-typeahead.js"></script>

</body>
</html>
