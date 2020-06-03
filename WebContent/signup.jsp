<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="HTML5 website template">
<meta name="keywords" content="global, template, html, sass, jquery">
<meta name="author" content="Bucky Maler">
<link rel="stylesheet" href="assets/css/main.css">
<title>Login</title>
</head>
<body>

	<!-- notification for small viewports and landscape oriented smartphones -->
	<div class="device-notification">
		<a class="device-notification--logo" href="#0"> <img
			src="assets/img/logo.png" alt="Global">
			<p>Global</p>
		</a>
		<p class="device-notification--message">Wecome to Movieworld!</p>
	</div>

	<div class="perspective effect-rotate-left">
		<div class="container">
			<div class="outer-nav--return"></div>
			<div class="l-wrapper">

				<div class="hire">
					<h2>You need to be my member</h2>
					<!-- checkout formspree.io for easy form setup -->
					<form
						action="http://localhost:8080/movieproject/MovieServlet?command=signup"
						method="post" class="work-request">
						<div class="work-request--options"></div>
						<div class="work-request--information">
							<div class="information-name">
								<input id="name" name="name" type="text" spellcheck="false"
									placeholder="name">
							</div>
							<br>
							<div class="information-id">
								<input id="id" name="id" type="text" spellcheck="false"
									placeholder="ID">
							</div>
							<br>
							<div class="information-password">
								<input id="password" name="password" type="text"
									spellcheck="false" placeholder="password" maxlength=10>
							</div>
							<br>
							<div class="information-phone">
								<input id="phone" name="phone" type="text" spellcheck="false"
									placeholder="Phone" maxlength=11>
							</div>
						</div>
						<span class="options-a"><input id="opt-1" type="submit"
							value="Signup"></span>
					</form>
				</div>
			</div>
		</div>
	</div>
	<ul class="outer-nav">
		<li class="is-active">Home</li>
		<li>Movies</li>
		<li>Tickets</li>
		<li>Review</li>
		<li>Login</li>
	</ul>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="assets/js/vendor/jquery-2.2.4.min.js"><\/script>')
	</script>
	<script src="assets/js/functions-min.js"></script>
</body>
</html>