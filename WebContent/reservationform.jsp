<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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

input {
	width: 130px;
	max-length: 13;
}
</style>
<body>

	<%
		String total = request.getParameter("total");
		String seat = request.getParameter("seat");
	%>


	<div class="content">
		<h1>Reservation For Movie Ticket</h1>
		<div class="main">
			<h2>Multiplex Theater Showing Screen 1</h2>
			<div class="demo">
				<div id="seat-map">
					<div class="front">SCREEN</div>
				</div>
				<form
					action="./MovieServlet?command=reservemovie&seat=<%=seat%>&total=<%=total%>"
					method="post">
					<div class="booking-details">
						<input type="hidden" name="num" value="${num}" />
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
							<li>: <input type="hidden" name="title" value="${title}" />${title}
							</li>
							<li>: <input type="hidden" name="date" value="${date}" />${date}
								<input type="hidden" name="id" value="${sessionScope.userid}" />
							</li>
							<li><select name="time">
									<option selected>09:00</option>
									<option>12:00</option>
									<option>15:00</option>
									<option>17:00</option>
									<option>19:00</option>
							</select></li>
							<li>: <b><span id="total">0</span><i>Won</i></b></li>
							<li><span id="counter">0</span></li>


							<li><select name="country">
									<option selected>Cheonan</option>
									<option>Seoul</option>
									<option>Anyang</option>
									<option>Busan</option>
									<option>Jeju</option>
							</select></li>
							<li>: <span name="id">${sessionScope.userid}</span>
							<li>: <input type="text" name="reservename"
								placeholder="Reserve Name" />
							</li>
							<li>: <input type="text" name="phone"
								placeholder="Phone Number" maxlength=11; />
							</li>
						</ul>
						<ul id="selected-seats" class="scrollbar scrollbar1"></ul>
						<div class="clear"></div>


						<button class="checkout-button" type="submit">Book Now</button>
						<div id="legend"></div>
					</div>
					<div style="clear: both"></div>
				</form>
			</div>

			<script type="text/javascript">
				var price = 8000; //price
				$(document)
						.ready(
								function() {
									var $cart = $('#selected-seats'), //Sitting Area
									$counter = $('#counter'), //Votes
									$total = $('#total'); //Total money

									document.frm.seat.value = $cart;
									document.frm.total.value = $total;
									var sc = $('#seat-map')
											.seatCharts(
													{
														map : [ //Seating chart
														'aaaaaaaaaa',
																'aaaaaaaaaa',
																'__________',
																'aaaaaaaa__',
																'aaaaaaaaaa',
																'aaaaaaaaaa',
																'aaaaaaaaaa',
																'aaaaaaaaaa',
																'aaaaaaaaaa',
																'__aaaaaa__' ],
														naming : {
															top : false,
															getLabel : function(
																	character,
																	row, column) {
																return column;
															}
														},
														legend : { //Definition legend
															node : $('#legend'),
															items : [
																	[
																			'a',
																			'available',
																			'Available' ],
																	[
																			'a',
																			'unavailable',
																			'Sold' ],
																	[
																			'a',
																			'selected',
																			'Selected' ] ]
														},
														click : function() { //Click event
															if (this.status() == 'available') { //optional seat
																$(
																		'<li>Row'
																				+ (this.settings.row + 1)
																				+ ' Seat'
																				+ this.settings.label
																				+ '</li>')
																		.attr(
																				'id',
																				'cart-item-'
																						+ this.settings.id)
																		.data(
																				'seatId',
																				this.settings.id)
																		.appendTo(
																				$cart);

																$counter
																		.text(sc
																				.find('selected').length + 1);
																$total
																		.text(recalculateTotal(sc)
																				+ price);

																return 'selected';
															} else if (this
																	.status() == 'selected') { //Checked
																//Update Number
																$counter
																		.text(sc
																				.find('selected').length - 1);
																//update totalnum
																$total
																		.text(recalculateTotal(sc)
																				- price);

																//Delete reservation
																$(
																		'#cart-item-'
																				+ this.settings.id)
																		.remove();
																//optional
																return 'available';
															} else if (this
																	.status() == 'unavailable') { //sold
																return 'unavailable';
															} else {
																return this
																		.style();
															}
														}
													});
									//sold seat
									sc.get([ 'Selected' ])
											.status('unavailable');

								});
				//sum total money
				function recalculateTotal(sc) {
					var total = 0;
					sc.find('selected').each(function() {
						total += price;
					});

					return total;
				}
			</script>
			<form name="frm" method="post" action="reservationform.jsp">
				<input type="hidden" name="seat" value="<%=seat%>" /> <input
					type="hidden" name="total" value="<%=total%>" />
			</form>
		</div>

	</div>
	<script src="./assets/js/jquery.nicescroll.js"></script>
	<script src="./assets/js/scripts.js"></script>
</body>
</html>
