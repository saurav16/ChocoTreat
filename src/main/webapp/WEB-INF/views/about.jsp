<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>ChocoTreat</title>
<c:import url="/head-meta" />

</head>

<style>

.box {
	width: 100%;
	height: 100%;
	position: relative;
	text-align: center;
}

.box .title {
	width: 100%;
	padding: 12px 10px;
	margin: 0;
	position: absolute;
	top: 35%;
	left: 0;
	font-size: 24px;
	color: #fff;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 5;
	transition: all 0.5s ease 0s;
}

.box .box-content {
	width: 100%;
	padding: 100px 10px;
	margin: 0;
	position: absolute;
	top: 65%;
	left: 0;
	font-size: 20px;
	color: #fff;
	background-color: lightblue;
	z-index: 1;
	transition: all 0.5s ease 0s;
}
</style>
<body>

	<c:import url="head.jsp" />
	<br>

	<div class="container">
		<div class="box">
			<div class="col-md-12 col-sm-6">


				<h2 class="title">
					<b>ABOUT US</b>
				</h2>
				<div class="box-content">
					<p class="description">Imagine all the chocolate items from all
						around the world all under one place! ChocoTreat is a web portal
						designed exclusively for all types of chocolates from all around
						the world with items be like Dark Chocolates, Chocolate cakes and
						many more, this site will help in serving all your desires fro
						chocolates. This is first of its kind web portal which has been
						launched in India. We at ChocoTreat offer latest and genuine
						products at reasonable prices. Also you can be assured of safe
						payment gateway and free home delivery of your desired products
						within the minimum time. So don't wait and just switch to the
						products tab and start shopping!!</p>

				</div>
			</div>

		</div>
	</div>

	<br>
	<br>
	<br>

</body>



</html>