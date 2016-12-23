<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:import url="/head-meta" />
<style>
.carousel-inner img {
	width: 70%; /* Set width to 70% */
	margin: auto;
	min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
</style>
</head>

<body>

	<c:import url="/head" />

	<!-- carousel starts from here -->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/WEB-INF/resources/carousel1.jpg" alt="Image">
			</div>

			<div class="item">
				<img src="/WEB-INF/resources/carousel2.jpg" alt="Image">
			</div>

			<div class="item">
				<img src="/WEB-INF/resources/carousel3.jpg" alt="Image">
			</div>

			<div class="item">
				<img src="/WEB-INF/resources/carousel4.jpg" alt="Image">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- carousel content ends here -->

	<!-- mid body part begins here -->

	<div class="container text-center">
		<h3>Shop delicious always..!!</h3>
		<br>
		<div class="row">
			<a
				href="${pageContext.request.contextPath}/products?item=kookaburra+bat">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading" align="center">KOOKABURRA BATS</div>
						<div class="panel-body">
							<img src="resources/images/product1.jpg" class="img-responsive"
								style="width: 100%" alt="Image">
						</div>
						<div class="panel-footer">The iconic Kahuna has been the
							spearhead of the Kookaburra range for the last 12 years. Its
							powerful profile, big edges and renowned graphics make it ideal
							for the stroke maker who likes to take control and lead by
							example.</div>
					</div>
				</div>
			</a> <a
				href="${pageContext.request.contextPath}/products?item=adidas+football">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading" align="center">ADIDAS FOOTBALL</div>
						<div class="panel-body">
							<img src="resources/images/product2.jpg" class="img-responsive"
								style="width: 100%" alt="Image">
						</div>
						<div class="panel-footer">This new product by nike wont make
							you leave the field and remains durable for a long time.</div>
					</div>
				</div>
			</a> <a
				href="${pageContext.request.contextPath}/products?item=yonex+racquet">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading" align="center">YONEX RACQUET</div>
						<div class="panel-body">
							<img src="resources/images/product3.jpg" class="img-responsive"
								style="width: 100%" alt="Image">
						</div>
						<div class="panel-footer">All badminton players have a
							reason to rejoice now with this new racquet from Yonex. Designed
							with the latest technology and equipments, this wont be damaged
							easily.</div>
					</div>
				</div>
			</a>
		</div>
	</div>

	<br>
	<!-- mid-body part ends here -->

</body>
</html>