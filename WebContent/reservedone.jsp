<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Movie Ticket Booking Widget Flat Responsive Widget
	Template :: w3layouts</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Movie Ticket Booking Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Kotta+One'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="./assets/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="./assets/js/jquery-1.11.0.min.js"></script>
<script src="./assets/js/jquery.seat-charts.js"></script>
</head>
<style>
body {
	background-color: #0c0c0c;
	font-size: 14px;
	line-height: 1.6;
	font-family: "Montserrat", sans-serif;
	color: #fff;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%
}

#reserveok {
	text-align: center;
}

input {
	width: 130px;
	max-length: 13;
}
</style>
<body>

	<div id="reserveok" class="content">
		<h1>Your Tickets are reserved.</h1>
		<div class="main">
			<form
				action="./MovieServlet?command=selectmovieformember&total=${total}"
				method="post">
				<input type="hidden" name="title" value="${dto.title}" /> <input
					type="hidden" name="date" value="${dto.rdate}" /> <input
					type="hidden" name="time" value="${dto.time}" /> <input
					type="hidden" name="country" value="${dto.country}" /> <input
					type="hidden" name="id" value="${sessionScope.userid}" /> <input
					type="hidden" name="name" value="${dto.name}" /> <input
					type="hidden" name="phone" value="${dto.phone}" />
				<ul class="book-left">
					<li>Movie</li>
					<li>Date</li>
					<li>Time</li>
					<li>Total</li>
					<li>Seats :</li>
					<li>Country</li>
					<li>ID</li>
					<li>Name</li>
					<li>Phone</li>
				</ul>
				<ul class="book-right">
					<li>${dto.title}</li>
					<li>${dto.rdate}</li>
					<li>${dto.time}</li>
					<li><b>${total}<i>Won</i></b></li>
					<li>${dto.seat}</li>
					<li>${dto.country}</li>
					<li>${sessionScope.userid}</li>
					<li>${dto.name}</li>
					<li>${dto.phone}</li>
				</ul>
				<div class="clear"></div>
				<ul id="selected-seats" name="seat" class="scrollbar scrollbar1"></ul>


				<button class="checkout-button" type="submit">Go back to
					MovieList</button>
				<a
					href="./MovieServlet?command=selectreservemovie&id=${sessionScope.userid}"><button
						class="checkout-button" type="button">Go MyPage</button></a>
				<div id="legend"></div>
				<div style="clear: both"></div>
			</form>


		</div>

	</div>
	<script src="./assets/js/jquery.nicescroll.js"></script>
	<script src="./assets/js/scripts.js"></script>
</body>
</html>
