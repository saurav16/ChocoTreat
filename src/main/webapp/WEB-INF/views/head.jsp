<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<title>ChocoTreat</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>

/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

/* CSS for footer */
.full {
	width: 100%;
}

.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}

.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}

.footer p {
	margin: 0;
}

.footer img {
	max-width: 100%;
}

.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}

.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}

.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}

.footer a {
	color: #78828D
}

.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}

.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}

.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}

.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}

.social li a {
	color: #EDEFF1;
}

.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}

.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}

.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}

.footer-bottom p.pull-left {
	padding-top: 6px;
}

.payments {
	font-size: 1.5em;
}

/* CSS for footer ends here */
</style>
<body>

	<!-- navbar starts from here -->

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/index">">ChocoTreat</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus">About
							Us</a></li>
					<li><a href="${pageContext.request.contextPath}/products">Products</a></li>
					<li><a href="${pageContext.request.contextPath}/contactus">Contact
							Us</a></li>

					<%
						if (request.isUserInRole("ADMIN")) {
					%>
					<li><a href="${pageContext.request.contextPath}/categories">Categories</a></li>
					<%
						}
					%>

				</ul>
				<ul class="nav navbar-nav navbar-right">

					<c:choose>
						<c:when test="${not empty pageContext.request.userPrincipal}">
							<li><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
							<%
								if (!request.isUserInRole("ADMIN")) {
							%>
							<li><a
								href="${pageContext.request.contextPath}/initiateflow"><span
									class="glyphicon glyphicon-shopping-cart"><asp:Label
											ID="lblCartCount" runat="server" class="badge badge-warning"
											ForeColor="White" /></span>Cart</a></li>
							<%
								}
							%>


						</c:when>

						<c:otherwise>
							<li><a href="${pageContext.request.contextPath}/signup"><span
									class="glyphicon glyphicon-user"></span> Sign Up</a></li>
							<li><a href="${pageContext.request.contextPath}/loginpage"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>


							<li><a
								href="${pageContext.request.contextPath}/initiateflow"><span
									class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>

						</c:otherwise>
					</c:choose>


				</ul>
				
			</div>
		</div>
	</nav>

	<!-- navigation bar ends here -->

	<!-- footer starts from here -->

	<footer>
		<div class="footer" id="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
						<h3>ChocoTreat</h3>
						<ul>
							<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
							<li><a href="${pageContext.request.contextPath}/aboutus">About
									Us</a></li>
							<li><a href="${pageContext.request.contextPath}/products">Products</a></li>
							<li><a href="${pageContext.request.contextPath}/contactus">Contact
									Us</a></li>
						</ul>
					</div>
					<div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
						<h3>Follow us on :</h3>
						<ul class="social">
							<li><a href="#"> <i class="fa fa-facebook">   </i>
							</a></li>
							<li><a href="#"> <i class="fa fa-twitter">   </i>
							</a></li>
							<li><a href="#"> <i class="fa fa-google-plus">   </i>
							</a></li>
						</ul>
					</div>
				</div>
				<!--/.row-->
			</div>
			<!--/.container-->
		</div>
		<!--/.footer-->

		<div class="footer-bottom">
			<div class="container">
				<p class="pull-left">Copyright © ChocoTreat 2016. All right
					reserved.</p>
				<div class="pull-right">
					<ul class="nav nav-pills payments">
						<li><i class="fa fa-cc-visa"></i></li>
						<li><i class="fa fa-cc-mastercard"></i></li>
						<li><i class="fa fa-cc-paypal"></i></li>
					</ul>
				</div>
			</div>
		</div>
		<!--/.footer-bottom-->
	</footer>

	<!-- footer ends here -->


</body>