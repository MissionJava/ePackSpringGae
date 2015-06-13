
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
<title>Pack7 :: Send Parcel</title>
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
	margin: 80px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
	margin: 80px 0;
	text-align: center;
}

.jumbotron h1 {
	font-size: 100px;
	line-height: 1;
}

.jumbotron .lead {
	font-size: 24px;
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
		removeAttribute("AddUserStatus");
	}

	function hideStatus() {
		document.getElementById("status").style.display = "none";
	}
	
</script>

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
							<li><a href="pack7">Home</a></li>
							<li class="active"><a href="sendparcel">Send Parcel</a></li>
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
				<li><a href="pack7.html">Home</a> <span class="divider">/</span></li>
				<li><a href="#">Send Parcel</a></li>
			</ul>
		</div>

		<div class="row-fluid box">
			<div class="box-header well" data-original-title="">
				<h2>
					<i class="icon-edit"></i>Send Parcel Form
				</h2>
			</div>
			<div class=""box-content">
				<!-- Jumbotron -->
				<form name="sendParcelForm" id="sendParcelForm"
					class="bs-docs-example form-horizontal" action="sendparcel/bookparcel"
					method="POST">
					<div class="control-group">
						<label class="control-label">From City</label>
						<div class="controls">
							
								<select id="inputWarning" name="city_from" class="select2 form-control select2-offscreen" tabindex="-1" title="" required="required" onfocus="hideStatus()">
																	<option>--Collection City--</option>
																		<option value="154">Agartala</option><option value="158">Agra</option><option value="38">Ahmedabad</option><option value="110">Ahmednagar</option><option value="117">Aizwal</option><option value="133">Ajmer</option><option value="107">Akola</option><option value="164">Aligarh</option><option value="161">Allahabad</option><option value="369">Allandi</option><option value="345">Alleppy</option><option value="136">Alwar</option><option value="338">Alwaye</option><option value="188">Ambala</option><option value="146">Ambattur</option><option value="115">Ambernath</option><option value="341">Ambur</option><option value="100">Amravati</option><option value="125">Amritsar</option><option value="218">Anand</option><option value="13">Anantapur</option><option value="217">Angul</option><option value="400">Ankleshwar</option><option value="186">Asansol</option><option value="96">Aurangabad</option><option value="149">Avadi</option><option value="348">Baddi</option><option value="371">Badlapur</option><option value="200">Bahadurgarh</option><option value="60">Bangalore</option><option value="353">Bardoli</option><option value="162">Bareilly</option><option value="204">Barmer</option><option value="65">Belgaum</option><option value="67">Bellary</option><option value="213">Berhampore</option><option value="20">Bhagalpur</option><option value="137">Bharatpur</option><option value="227">Bharuch</option><option value="128">Bhatinda</option><option value="42">Bhavnagar</option><option value="30">Bhilai</option><option value="135">Bhilwara</option><option value="233">Bhimavaram</option><option value="99">Bhiwandi</option><option value="78">Bhopal</option><option value="118">Bhubaneswar</option><option value="356">Bhuj</option><option value="68">Bijapur</option><option value="132">Bikaner</option><option value="32">Bilaspur</option><option value="228">Billimora</option><option value="58">Bokaro</option><option value="120">Brahmapur</option><option value="234">Cannanore</option><option value="28">Chandigarh</option><option value="111">Chandrapur</option><option value="141">Chennai</option><option value="91">Chinchwad</option><option value="355">chittorgarh</option><option value="142">Coimbatore</option><option value="206">Coonoor</option><option value="119">Cuttack</option><option value="66">Davanagere</option><option value="181">Dehradun</option><option value="34">Delhi/New Delhi</option><option value="229">Dera Bassi</option><option value="82">Dewas</option><option value="55">Dhanbad</option><option value="109">Dhule</option><option value="212">Digboi</option><option value="223">Dindigul</option><option value="33">Durg</option><option value="185">Durgapur</option><option value="225">Enuru</option><option value="232">Ernakulam</option><option value="207">Ernakulan</option><option value="192">Erode</option><option value="381">Faizabad</option><option value="46">Faridabad</option><option value="205">Firozabad</option><option value="45">Gandhidham</option><option value="203">Gandhinagar</option><option value="352">Gangtok</option><option value="19">Gaya</option><option value="157">Ghaziabad</option><option value="201">Goa</option><option value="191">Gopalpur</option><option value="215">Gorakhpur</option><option value="64">Gulbarga</option><option value="4">Guntur</option><option value="404">Gurdaspur</option><option value="47">Gurgaon</option><option value="17">Guwahati</option><option value="80">Gwalior</option><option value="211">Haldwani</option><option value="360">Halol</option><option value="177">Hapur</option><option value="182">Haridwar</option><option value="346">Hazira</option><option value="49">Hisar</option><option value="395">Hoshiarpur</option><option value="383">Hospet</option><option value="380">Hosur</option><option value="184">Howrah</option><option value="61">Hubballi-Dharwad</option><option value="365">Hubli</option><option value="1">Hyderabad</option><option value="116">Imphal</option><option value="77">Indore</option><option value="79">Jabalpur</option><option value="129">Jaipur</option><option value="126">Jalandhar</option><option value="106">Jalgaon</option><option value="54">Jammu</option><option value="43">Jamnagar</option><option value="57">Jamshedpur</option><option value="370">Jharsguda</option><option value="130">Jodhpur</option><option value="349">Jorhat</option><option value="44">Junagadh</option><option value="9">Kadapa</option><option value="10">Kakinada</option><option value="199">Kalol</option><option value="93">Kalyan-Dombivali</option><option value="209">Kanchipuram</option><option value="156">Kanpur</option><option value="392">Kapurthala</option><option value="376">Karaikal</option><option value="14">Karimnagar</option><option value="51">Karnal</option><option value="335">Karur</option><option value="399">Kasaragod R S</option><option value="351">Kelambakkam</option><option value="220">Khammam</option><option value="35">Kirari Suleman Nagar</option><option value="73">Kochi (Cochin)</option><option value="102">Kolhapur</option><option value="183">Kolkata</option><option value="75">Kollam (Quilon)</option><option value="31">Korba</option><option value="131">Kota</option><option value="196">Kottayam</option><option value="74">Kozhikode (Calicut)</option><option value="359">Kullu</option><option value="7">Kurnool</option><option value="108">Latur</option><option value="155">Lucknow</option><option value="124">Ludhiana</option><option value="143">Madurai</option><option value="403">Malda</option><option value="105">Malegaon</option><option value="362">Mallapuram</option><option value="375">Mandideep</option><option value="377">Mandiya</option><option value="378">Manesar</option><option value="63">Mangalore</option><option value="59">Mango</option><option value="214">Manipal</option><option value="384">Maraimalai Nagar</option><option value="172">Mathura</option><option value="344">Maval</option><option value="159">Meerut</option><option value="394">Mehsana</option><option value="179">Mirzapur</option><option value="246">Mohali</option><option value="163">Moradabad</option><option value="372">Morbi</option><option value="87">Mumbai</option><option value="367">Munger</option><option value="171">Muzafar Nagar</option><option value="21">Muzaffarpur</option><option value="62">Mysore</option><option value="189">Nadiad</option><option value="347">Nagerkoil</option><option value="89">Nagpur</option><option value="358">Namakkal</option><option value="101">Nanded</option><option value="92">Nashik</option><option value="97">Navi Mumbai</option><option value="219">Navsari</option><option value="6">Nellore</option><option value="11">Nizamabad</option><option value="167">Noida</option><option value="373">Palakkad</option><option value="221">Palampur</option><option value="230">Palghat</option><option value="139">Pali</option><option value="202">Panaji</option><option value="194">Panchkula</option><option value="50">Panipat</option><option value="226">Panvel</option><option value="364">Patan</option><option value="127">Patiala</option><option value="18">Patna</option><option value="224">Phagwara</option><option value="386">Pollachi</option><option value="368">Pondicherry</option><option value="397">Port Blair</option><option value="343">Prakasam</option><option value="123">Puducherry</option><option value="405">Pudukkottai</option><option value="88">Pune</option><option value="71">Raichur</option><option value="29">Raipur</option><option value="8">Rajahmundry</option><option value="41">Rajkot</option><option value="210">Ramanathapuram</option><option value="174">Rampur</option><option value="56">Ranchi</option><option value="85">Ratlam</option><option value="396">Ratnagiri</option><option value="390">Rewari</option><option value="48">Rohtak</option><option value="222">Roorkee</option><option value="382">Ropar</option><option value="121">Rourkela</option><option value="398">Rudrapur</option><option value="84">Sagar</option><option value="145">Salem</option><option value="104">Sangli-Miraj &amp; Kupwad</option><option value="402">Sarkhej</option><option value="339">Satna</option><option value="83">Satna</option><option value="357">Shillong</option><option value="208">shimla</option><option value="387">Shimoga</option><option value="337">Sibsagar</option><option value="138">Sikar</option><option value="187">Siliguri</option><option value="393">Silvasa</option><option value="389">Sivakasi</option><option value="216">Solan</option><option value="95">Solapur</option><option value="374">Sonbhadra</option><option value="52">Sonipat</option><option value="336">Srikakulam</option><option value="53">Srinagar</option><option value="39">Surat</option><option value="231">Surendra Nagar</option><option value="379">Surendranagar</option><option value="366">Tarapur</option><option value="388">Tellicherry</option><option value="193">Tezpur</option><option value="90">Thane</option><option value="350">Thanjavur</option><option value="76">Thrissur</option><option value="363">Tinsukia</option><option value="144">Tiruchirappalli</option><option value="147">Tirunelveli</option><option value="12">Tirupati</option><option value="148">Tirupur</option><option value="354">Tiruvalla</option><option value="150">Tiruvottiyur</option><option value="197">Trichur</option><option value="72">Trivandrum (Thiruvananthapuram)</option><option value="70">Tumkur</option><option value="342">Tuticorin</option><option value="134">Udaipur</option><option value="81">Ujjain</option><option value="103">Ulhasnagar</option><option value="391">Uttarkashi</option><option value="40">Vadodara</option><option value="401">Valsad</option><option value="340">vapi</option><option value="160">Varanasi</option><option value="195">Vellore</option><option value="3">Vijayawada</option><option value="361">Villipuram</option><option value="2">Visakhapatnam</option><option value="16">Vizianagaram</option><option value="5">Warangal</option>																</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Pincode</label>
						<div class="controls">
							<select id="inputWarning" name="pinecode_from" class="select2 form-control select2-offscreen" tabindex="-1" title="" required="required" onfocus="hideStatus()">
																	<option>--Colllection City Pincode--</option>
																</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">To City</label>
						<div class="controls">
							<select id="inputWarning" name="city_to" class="select2 form-control select2-offscreen" tabindex="-1" title="" required="required" onfocus="hideStatus()">
																	<option>--Delivery City--</option>
																	<option value="154">Agartala</option><option value="158">Agra</option><option value="38">Ahmedabad</option><option value="110">Ahmednagar</option><option value="117">Aizwal</option><option value="133">Ajmer</option><option value="107">Akola</option><option value="164">Aligarh</option><option value="161">Allahabad</option><option value="369">Allandi</option><option value="345">Alleppy</option><option value="136">Alwar</option><option value="338">Alwaye</option><option value="188">Ambala</option><option value="146">Ambattur</option><option value="115">Ambernath</option><option value="341">Ambur</option><option value="100">Amravati</option><option value="125">Amritsar</option><option value="218">Anand</option><option value="13">Anantapur</option><option value="217">Angul</option><option value="400">Ankleshwar</option><option value="186">Asansol</option><option value="96">Aurangabad</option><option value="149">Avadi</option><option value="348">Baddi</option><option value="371">Badlapur</option><option value="200">Bahadurgarh</option><option value="60">Bangalore</option><option value="353">Bardoli</option><option value="162">Bareilly</option><option value="204">Barmer</option><option value="65">Belgaum</option><option value="67">Bellary</option><option value="213">Berhampore</option><option value="20">Bhagalpur</option><option value="137">Bharatpur</option><option value="227">Bharuch</option><option value="128">Bhatinda</option><option value="42">Bhavnagar</option><option value="30">Bhilai</option><option value="135">Bhilwara</option><option value="233">Bhimavaram</option><option value="99">Bhiwandi</option><option value="78">Bhopal</option><option value="118">Bhubaneswar</option><option value="356">Bhuj</option><option value="68">Bijapur</option><option value="132">Bikaner</option><option value="32">Bilaspur</option><option value="228">Billimora</option><option value="58">Bokaro</option><option value="120">Brahmapur</option><option value="234">Cannanore</option><option value="28">Chandigarh</option><option value="111">Chandrapur</option><option value="141">Chennai</option><option value="91">Chinchwad</option><option value="355">chittorgarh</option><option value="142">Coimbatore</option><option value="206">Coonoor</option><option value="119">Cuttack</option><option value="66">Davanagere</option><option value="181">Dehradun</option><option value="34">Delhi/New Delhi</option><option value="229">Dera Bassi</option><option value="82">Dewas</option><option value="55">Dhanbad</option><option value="109">Dhule</option><option value="212">Digboi</option><option value="223">Dindigul</option><option value="33">Durg</option><option value="185">Durgapur</option><option value="225">Enuru</option><option value="232">Ernakulam</option><option value="207">Ernakulan</option><option value="192">Erode</option><option value="381">Faizabad</option><option value="46">Faridabad</option><option value="205">Firozabad</option><option value="45">Gandhidham</option><option value="203">Gandhinagar</option><option value="352">Gangtok</option><option value="19">Gaya</option><option value="157">Ghaziabad</option><option value="201">Goa</option><option value="191">Gopalpur</option><option value="215">Gorakhpur</option><option value="64">Gulbarga</option><option value="4">Guntur</option><option value="404">Gurdaspur</option><option value="47">Gurgaon</option><option value="17">Guwahati</option><option value="80">Gwalior</option><option value="211">Haldwani</option><option value="360">Halol</option><option value="177">Hapur</option><option value="182">Haridwar</option><option value="346">Hazira</option><option value="49">Hisar</option><option value="395">Hoshiarpur</option><option value="383">Hospet</option><option value="380">Hosur</option><option value="184">Howrah</option><option value="61">Hubballi-Dharwad</option><option value="365">Hubli</option><option value="1">Hyderabad</option><option value="116">Imphal</option><option value="77">Indore</option><option value="79">Jabalpur</option><option value="129">Jaipur</option><option value="126">Jalandhar</option><option value="106">Jalgaon</option><option value="54">Jammu</option><option value="43">Jamnagar</option><option value="57">Jamshedpur</option><option value="370">Jharsguda</option><option value="130">Jodhpur</option><option value="349">Jorhat</option><option value="44">Junagadh</option><option value="9">Kadapa</option><option value="10">Kakinada</option><option value="199">Kalol</option><option value="93">Kalyan-Dombivali</option><option value="209">Kanchipuram</option><option value="156">Kanpur</option><option value="392">Kapurthala</option><option value="376">Karaikal</option><option value="14">Karimnagar</option><option value="51">Karnal</option><option value="335">Karur</option><option value="399">Kasaragod R S</option><option value="351">Kelambakkam</option><option value="220">Khammam</option><option value="35">Kirari Suleman Nagar</option><option value="73">Kochi (Cochin)</option><option value="102">Kolhapur</option><option value="183">Kolkata</option><option value="75">Kollam (Quilon)</option><option value="31">Korba</option><option value="131">Kota</option><option value="196">Kottayam</option><option value="74">Kozhikode (Calicut)</option><option value="359">Kullu</option><option value="7">Kurnool</option><option value="108">Latur</option><option value="155">Lucknow</option><option value="124">Ludhiana</option><option value="143">Madurai</option><option value="403">Malda</option><option value="105">Malegaon</option><option value="362">Mallapuram</option><option value="375">Mandideep</option><option value="377">Mandiya</option><option value="378">Manesar</option><option value="63">Mangalore</option><option value="59">Mango</option><option value="214">Manipal</option><option value="384">Maraimalai Nagar</option><option value="172">Mathura</option><option value="344">Maval</option><option value="159">Meerut</option><option value="394">Mehsana</option><option value="179">Mirzapur</option><option value="246">Mohali</option><option value="163">Moradabad</option><option value="372">Morbi</option><option value="87">Mumbai</option><option value="367">Munger</option><option value="171">Muzafar Nagar</option><option value="21">Muzaffarpur</option><option value="62">Mysore</option><option value="189">Nadiad</option><option value="347">Nagerkoil</option><option value="89">Nagpur</option><option value="358">Namakkal</option><option value="101">Nanded</option><option value="92">Nashik</option><option value="97">Navi Mumbai</option><option value="219">Navsari</option><option value="6">Nellore</option><option value="11">Nizamabad</option><option value="167">Noida</option><option value="373">Palakkad</option><option value="221">Palampur</option><option value="230">Palghat</option><option value="139">Pali</option><option value="202">Panaji</option><option value="194">Panchkula</option><option value="50">Panipat</option><option value="226">Panvel</option><option value="364">Patan</option><option value="127">Patiala</option><option value="18">Patna</option><option value="224">Phagwara</option><option value="386">Pollachi</option><option value="368">Pondicherry</option><option value="397">Port Blair</option><option value="343">Prakasam</option><option value="123">Puducherry</option><option value="405">Pudukkottai</option><option value="88">Pune</option><option value="71">Raichur</option><option value="29">Raipur</option><option value="8">Rajahmundry</option><option value="41">Rajkot</option><option value="210">Ramanathapuram</option><option value="174">Rampur</option><option value="56">Ranchi</option><option value="85">Ratlam</option><option value="396">Ratnagiri</option><option value="390">Rewari</option><option value="48">Rohtak</option><option value="222">Roorkee</option><option value="382">Ropar</option><option value="121">Rourkela</option><option value="398">Rudrapur</option><option value="84">Sagar</option><option value="145">Salem</option><option value="104">Sangli-Miraj &amp; Kupwad</option><option value="402">Sarkhej</option><option value="339">Satna</option><option value="83">Satna</option><option value="357">Shillong</option><option value="208">shimla</option><option value="387">Shimoga</option><option value="337">Sibsagar</option><option value="138">Sikar</option><option value="187">Siliguri</option><option value="393">Silvasa</option><option value="389">Sivakasi</option><option value="216">Solan</option><option value="95">Solapur</option><option value="374">Sonbhadra</option><option value="52">Sonipat</option><option value="336">Srikakulam</option><option value="53">Srinagar</option><option value="39">Surat</option><option value="231">Surendra Nagar</option><option value="379">Surendranagar</option><option value="366">Tarapur</option><option value="388">Tellicherry</option><option value="193">Tezpur</option><option value="90">Thane</option><option value="350">Thanjavur</option><option value="76">Thrissur</option><option value="363">Tinsukia</option><option value="144">Tiruchirappalli</option><option value="147">Tirunelveli</option><option value="12">Tirupati</option><option value="148">Tirupur</option><option value="354">Tiruvalla</option><option value="150">Tiruvottiyur</option><option value="197">Trichur</option><option value="72">Trivandrum (Thiruvananthapuram)</option><option value="70">Tumkur</option><option value="342">Tuticorin</option><option value="134">Udaipur</option><option value="81">Ujjain</option><option value="103">Ulhasnagar</option><option value="391">Uttarkashi</option><option value="40">Vadodara</option><option value="401">Valsad</option><option value="340">vapi</option><option value="160">Varanasi</option><option value="195">Vellore</option><option value="3">Vijayawada</option><option value="361">Villipuram</option><option value="2">Visakhapatnam</option><option value="16">Vizianagaram</option><option value="5">Warangal</option>																</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Pincode</label>
						<div class="controls">
							<select id="inputWarning" name="pinecode_to" class="select2 form-control select2-offscreen" tabindex="-1" title="" required="required" onfocus="hideStatus()">
																	<option>--Delivery City Pincode--</option>
																</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputError">Weight</label>
						<div class="controls">
							<input name="weight" type="text" id="inputWarning" required="required" onfocus="hideStatus()">
							<span class="add-on">kg</span>							
						</div>						
					</div>
					
					<div class="control-group">
						<label class="control-label" for="inputError">Length</label>
						<div class="controls">
							<input name="lenght" type="text" id="inputWarning" required="required" onfocus="hideStatus()">
							<span class="add-on">cm</span>								
						</div>						
					</div>
					
					<div class="control-group">
						<label class="control-label" for="inputError">Width</label>
						<div class="controls">
							<input name="width" type="text" id="inputWarning" required="required" onfocus="hideStatus()">
							<span class="add-on">cm</span>							
						</div>						
					</div>
					
					<div class="control-group">
						<label class="control-label" for="inputError">Height</label>
						<div class="controls">
							<input name="height" type="text" id="inputWarning" required="required" onfocus="hideStatus()">
							<span class="add-on">cm</span>							
						</div>						
					</div>
					<div class="control-group box-header well">
						<div class="controls">
							<button class="btn btn-primary" type="submit">Book</button>
							<button class="btn" type="reset" onsubmit="reset()">Reset</button>
						</div>
					</div>
				</form>
				<%
		if ((request.getAttribute("sendparcelBookingId") != null)
				&& (request.getAttribute("sendParcelDetails") != "")) {%>
							<div id="sendParcelDetails" align="center">
				<h3>SendparcelBookingId : ${sendparcelBookingId}, SendParcel Details: ${sendParcelDetails}</h3>
				
				</div>
		<%}
	%>
			</div>
		</div>

	</div>

	<div class="footer">
		<p align="left">&copy; Company 2015</p>
	</div>

	</div>
	<script>
		$("#bookParcelForm").validate();
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