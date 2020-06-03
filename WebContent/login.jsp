<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="HTML5 website template">
<meta name="keywords" content="global, template, html, sass, jquery">
<meta name="author" content="Bucky Maler">
<link rel="stylesheet" href="assets/css/main.css">
<title>Login</title>
<style>
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
</style>
</head>
<body>

	<!-- notification for small viewports and landscape oriented smartphones -->
	<div class="device-notification">
		<a class="device-notification--logo" href="#0"> <img
			src="assets/img/logo.png" alt="Global">
			<p>Global</p>
		</a>
		<p class="device-notification--message">Welcome to MovieWorld!</p>
	</div>

	<div class="perspective effect-rotate-left">
		<div class="container">
			<div class="outer-nav--return"></div>
			<div class="l-wrapper">

				<div class="hire">
					<h2>Login</h2>
					<!-- checkout formspree.io for easy form setup -->
					<form
						action="http://localhost:8080/movieproject/MovieServlet?command=login"
						method="post" class="work-request">
						<div class="work-request--options"></div>
						<div class="work-request--information">
							<div class="information-name">
								<input id="id" name="id" type="text" spellcheck="false">
								<label for="id">ID</label>
							</div>
							<div class="information-email">
								<input id="password" name="password" type="text"
									spellcheck="false"> <label for="password">PassWord</label>
							</div>
						</div>
						<input type="submit" value="Login"> <br> <span
							class="options-a"><a
							href="http://localhost:8080/movieproject/signup.jsp"><label
								id="signup"> SignUp </label></a></span>
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