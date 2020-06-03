<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Setting Movies</title>

<!-- Icons font CSS-->
<link
	href="./assets/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="./assets/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="./assets/vendor/select2/select2.min.css" rel="stylesheet"
	media="all">
<link href="./assets/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="./assets/css/main2.css" rel="stylesheet" media="all">
<style>
body {
	background: black;
	padding-top: 100px;
	font-style: italic;
	float: center;
}

textarea {
	height: auto;
	max-width: 600px;
	color: #999;
	font-weight: 400;
	font-size: 16px;
	font-family: 'Ubuntu', Helvetica, Arial, sans-serif;
	width: 100%;
	background: #fff;
	border-radius: 3px;
	line-height: 2em;
	border: none;
	box-shadow: 0px 0px 5px 1px rgba(0, 0, 0, 0.1);
	padding: 30px;
	-webkit-transition: height 2s ease;
	-moz-transition: height 2s ease;
	-ms-transition: height 2s ease;
	-o-transition: height 2s ease;
	transition: height 2s ease;
}

* {
	-webkit-font-smoothing: antialiased !important;
}

h2 {
	color: white;
}
</style>
</head>

<body>

	<form action="MovieServlet?command=updatemovie"
		enctype="multipart/form-data" method="post">
		<div class="wrapper wrapper--w680">
			<div class="card card-1">
				<div class="card-body">
					<h2 class="title">Update movies</h2>
					<div class="input-group">
						<input type="hidden" value="${movie.num}" name="num"> <input
							class="input--style-1" type="text" value="${movie.title}"
							name="title">
					</div>
					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-1 js-datepicker" type="text"
									value="${movie.mdate}" name="date"> <i
									class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
							</div>
						</div>
						<div class="col-2"></div>
					</div>
					<div class="input-group">
						<input class="input--style-1" type="text" value="${movie.src}"
							name="src">
					</div>
					<div class="input-group">
						<textarea id="TextArea" value="${movie.summary}" name="summary">
</textarea>
					</div>
				</div>

				<div class="input-group">
					<input class="input--style-1" type="file" value="${movie.fname}"
						name="uploadFile">
				</div>


				<div class="p-t-20">
					<button class="btn btn--radius btn--green" type="submit">Submit</button>
				</div>
			</div>
		</div>
	</form>

	<!-- Jquery JS-->
	<script src="./assets/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="./assets/vendor/select2/select2.min.js"></script>
	<script src="./assets/vendor/datepicker/moment.min.js"></script>
	<script src="./assets/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="./assets/js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
