<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Review</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="HTML5 website template">
<meta name="keywords" content="global, template, html, sass, jquery">
<meta name="author" content="Bucky Maler">
<link rel="stylesheet" href="assets/css/main.css">
</head>
<style type="text/css">
input, textarea {
	outline: none;
	border: none;
	display: block;
	margin: 0;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	font-family: "PT Sans", "Helvetica Neue", "Helvetica", "Roboto", "Arial",
		sans-serif;
	font-size: 1rem;
	color: #555f77;
}

a:link {
	color: white;
	text-decoration: none;
} /*방문전*/
a:visited {
	color: white;
	text-decoration: none;
} /*방문후*/
a:hover {
	color: green;
	text-decoration: none;
} /*마우스를 올려 놨을 때*/
scroll {
	width: 600px;
	max-height: 800px;
	overflow-y: auto;
}
</style>
<body>

	<div class="perspective effect-rotate-left">
		<div class="container">
			<div class="outer-nav--return"></div>
			<div class="l-wrapper">
				<header class="header">
					<p>
						<a class="header--logo"
							href="http://localhost:8080/movieproject/index.html"> <img
							src="assets/img/logo.png" alt="Global">
						</a>
					</p>
					<div class="header--nav-toggle">
						<span></span>
					</div>
				</header>

				<nav class="l-side-nav">
					<ul class="side-nav">
						<li class="is-active"><span><a href="index.jsp">Home</a></span></li>
						<li><span><a
								href="MovieServlet?command=selectmovieformember">Movies</a></span></li>
						<li><span><a href="reservationform.jsp">Tickets</a></span></li>
						<li><span><a href="mypage.jsp">MyPage</a></span></li>
					</ul>
				</nav>


				<div class="intro">
					<div class="intro--banner">
						<h1>
							Welcome<br>to<br>MovieWorld
						</h1>
						<a
							href="http://localhost:8080/movieproject/MovieServlet?command=login"><button
								class="cta">
								For Member <span class="btn-background"></span>
							</button> </a> <a
							href="http://localhost:8080/movieproject/MovieServlet?command=selectmovieformanager"><button
								class="cta">
								Manager Only <span class="btn-background"></span>
							</button> </a>
					</div>
				</div>
			</div>
		</div>
		<ul class="outer-nav">
			<li class="is-active">Home</li>
			<li>Movies</li>
			<li>Tickets</li>
			<li>Review</li>
			<li>MyPage</li>
		</ul>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script>
			window.jQuery
					|| document
							.write('<script src="assets/js/vendor/jquery-2.2.4.min.js"><\/script>')
		</script>
		<script src="assets/js/functions-min.js"></script>
	</div>
</body>
</html>