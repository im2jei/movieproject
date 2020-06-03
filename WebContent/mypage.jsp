<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

scroll {
	width: 600px;
	max-height: 800px;
	overflow-y: auto;
}

input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {
	color: #ced2db;
}

input::-moz-placeholder, textarea::-moz-placeholder {
	color: #ced2db;
}

input:-moz-placeholder, textarea:-moz-placeholder {
	color: #ced2db;
}

input:-ms-input-placeholder, textarea:-ms-input-placeholder {
	color: #ced2db;
}

p {
	line-height: 1.3125rem;
}

.comments {
	margin: 2.5rem auto 0;
	max-width: 60.75rem;
	padding: 0 1.25rem;
}

.comment-wrap {
	margin-bottom: 1.25rem;
	display: table;
	width: 100%;
	min-height: 5.3125rem;
}

.comment-block {
	padding: 1rem;
	display: table-cell;
	vertical-align: top;
	border-radius: 0.1875rem;
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.08);
}

.comment-block textarea {
	width: 100%;
	resize: none;
}

.comment-text {
	margin-bottom: 1.25rem;
}

.bottom-comment {
	color: #acb4c2;
	font-size: 0.875rem;
}

.comment-date {
	float: left;
}

.comment-actions {
	float: right;
}

.comment-actions li {
	display: inline;
	margin: -2px;
	cursor: pointer;
}

.comment-actions li.complain {
	padding-right: 0.75rem;
	border-right: 1px solid #e1e5eb;
}

.comment-actions li.reply {
	padding-left: 0.75rem;
	padding-right: 0.125rem;
}

.comment-actions li:hover {
	color: #0095ff;
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
</style>
<body>
	<!-- notification for small viewports and landscape oriented smartphones -->
	<div class="device-notification">
		<p class="device-notification--message">Global has so much to
			offer that we must request you orient your device to portrait or find
			a larger screen. You won't be disappointed.</p>
	</div>
	<div class="perspective effect-rotate-left">
		<div class="container">
			<div class="outer-nav--return"></div>
			<div class="l-wrapper">
				<header class="header">
					<p>
						<a class="header--logo"
							href="http://localhost:8080/movieproject/index.html"> <img
							src="assets/img/logo.png" alt="Global"> Global
						</a>
					</p>
					<div class="header--nav-toggle">
						<span></span>
					</div>
				</header>
				<div class="about">
					<div class="comments">
						<div class="comment-wrap">
							<div class="comment-block">
								<h2>Reserved Movies</h2>
								<br> <br>
								<table border="1" style="width: 700px;">

									<tr>

										<td>Movie</td>
										<td>Date</td>
										<td>Time</td>
										<td>Country</td>
										<td>ID</td>
										<td>Name</td>
										<td>Phone</td>
									</tr>

									<c:forEach var="r" items="${rlist}">
										<tr>
											<td>${r.title}</td>
											<td>${r.rdate}</td>
											<td>${r.time}</td>
											<td>${r.country}</td>
											<td>${r.id}</td>
											<td>${r.name}</td>
											<td>${r.phone}</td>
											<td><p>
													<a
														href="MovieServlet?command=deletereserve&title=${r.title}&id=${sessionScope.userid}">Cancel</a>
												</p></td>
										</tr>
									</c:forEach>
								</table>
							</div>
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
	</div>
</body>
</html>