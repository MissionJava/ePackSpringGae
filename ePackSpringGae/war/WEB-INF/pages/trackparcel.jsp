
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Pack7 :: Track Parcel</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="../assets/css/bootstrap.css" rel="stylesheet">
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
<link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../assets/css/track-order.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="../assets/ico/favicon.png">

<script>

	function reset() {
		hideStatus();
		hideTrackResult();
		removeAttribute("AddUserStatus");
	}

	function hideStatus() {
		document.getElementById("status").style.display = "none";
	}
	function hideTrackResult() {
		document.getElementById("trackresult").style.display = "none";
	}
</script>

</head>

<body>

	<div class="container">

		<div class="masthead">
			<h1>
				<a href="/pack7" style="text-decoration: none;">Pack7 India</a>
			</h1>
			<div align="right"></div>

			<div class="navbar">
				<div class="navbar-inner">
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li><a href="/pack7">Home</a></li>
							<li><a href="/sendparcel">Send Parcel</a></li>
							<li class="active"><a href="/trackparcel">Track
									Parcel</a></li>
							<li><a href="/about">About</a></li>
							<li><a href="/contact">Contact</a></li>
							<li><a href="logout">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /.navbar -->
		</div>
		<div>
			<ul class="breadcrumb">
				<li><a href="/pack7">Home</a> <span class="divider">/</span></li>
				<li><a href="#">Track Parcel</a></li>
			</ul>
		</div>


		<!-- Jumbotron -->
		<div class="jumbotron" id="marketingstuff">

			<p class="lead">Every single service from My Parcel Delivery can be tracked at every step of the journey from collection to delivery and doing so couldn’t be simpler. Once you have booked your delivery through us, you receive an email giving you a Pack7 Parcel Booking ID (it will look something like: AWB123456781) Just input this unique number into the box below and you can find out exactly where it is!</p>
		</div>
		<div class="row-fluid box">
			<div class="box-header well" data-original-title="">
				<h2>
					<i class="icon-edit"></i>Track Parcel Form
				</h2>
			</div>
			<div class=""box-content">
				<!-- Jumbotron -->
				<form name="trackParcelForm" id="trackParcelForm"
					class="bs-docs-example form-horizontal" action="trackparcel/getTrackingDetailsById"
					method="POST">
					
					<div id="status" align="center"></div>
					<div class="control-group">
						<label class="control-label">Parcel Booking ID</label>
						<div class="controls">
							<input type="text" name="parcelBookingId" id="inputWarning"
								pattern="\w{14,}" required="required" onfocus="hideStatus()">
						</div>
					</div>

					<div class="control-group box-header well">
						<div class="controls">
							<button class="btn btn-primary" type="submit">Track</button>
							<button class="btn" type="reset" onsubmit="reset()">Clear</button>
						</div>
					</div>
				</form>
				<%
		if ((request.getAttribute("parcelBookingId") != null)
				&& (request.getAttribute("trackingDetails") != "")) {%>
							<div id="trackresult" align="center">
				<h3>ParcelBookingId : ${parcelBookingId}, TrackingDetails: ${trackingDetails}</h3>
				
				</div>
		<%}
	%>

			</div>
		</div>

	</div>

	<hr>

	<div class="footer">
		<p>&copy; Company 2015</p>
	</div>

	</div>
	<script>
		$("#addUserForm").validate();
	</script>
	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="../assets/js/jquery.js"></script>
	<script src="../assets/js/bootstrap-transition.js"></script>
	<script src="../assets/js/bootstrap-alert.js"></script>
	<script src="../assets/js/bootstrap-modal.js"></script>
	<script src="../assets/js/bootstrap-dropdown.js"></script>
	<script src="../assets/js/bootstrap-scrollspy.js"></script>
	<script src="../assets/js/bootstrap-tab.js"></script>
	<script src="../assets/js/bootstrap-tooltip.js"></script>
	<script src="../assets/js/bootstrap-popover.js"></script>
	<script src="../assets/js/bootstrap-button.js"></script>
	<script src="../assets/js/bootstrap-collapse.js"></script>
	<script src="../assets/js/bootstrap-carousel.js"></script>
	<script src="../assets/js/bootstrap-typeahead.js"></script>
</body>
</html>