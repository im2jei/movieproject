<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Review</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="HTML5 website template">
<meta name="keywords" content="global, template, html, sass, jquery">
<meta name="author" content="Bucky Maler">
<link rel="stylesheet" href="assets/css/main.css">
</head>
<style>
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
</style>
<body>
	<div class="container">
		<div class="outer-nav--return"></div>
		<div class="l-wrapper">
			<header class="header">
				<a class="header--logo"
					href="http://localhost:8080/movieproject/index.html"> <img
					src="assets/img/logo.png" alt="Global">
					<p>Global</p>
				</a>
				<div class="header--nav-toggle">
					<span></span>
				</div>
			</header>
			<div class="about">
				<div class="about--banner">
					<div id=img>
						<h2>
							${board.title} <br> <input type="hidden" name="num"
								value="${num}">
							<iframe width="789" height="335" src="${board.src}"
								frameborder="0"
								allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</h2>
						<a
							href="./MovieServlet?command=reservemovieform&num=${num}&title=${board.title}&date=${board.mdate}">Buy
							Ticket<span> <svg version="1.1" id="Layer_1"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
									viewBox="0 0 150 118"
									style="enable-background: new 0 0 150 118;"
									xml:space="preserve">
                    <g
										transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)">
                      <path
										d="M870,1167c-34-17-55-57-46-90c3-15,81-100,194-211l187-185l-565-1c-431,0-571-3-590-13c-55-28-64-94-18-137c21-20,33-20,597-20h575l-192-193C800,103,794,94,849,39c20-20,39-29,61-29c28,0,63,30,298,262c147,144,272,271,279,282c30,51,23,60-219,304C947,1180,926,1196,870,1167z" />
                    </g>
                    </svg>
						</span>
						</a> <a href="http://localhost:8080/movieproject/comment.jsp">Review
							Comments<span> <svg version="1.1" id="Layer_1"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
									viewBox="0 0 150 118"
									style="enable-background: new 0 0 150 118;"
									xml:space="preserve">
                    <g
										transform="translate(0.000000,118.000000) scale(0.100000,-0.100000)">
                      <path
										d="M870,1167c-34-17-55-57-46-90c3-15,81-100,194-211l187-185l-565-1c-431,0-571-3-590-13c-55-28-64-94-18-137c21-20,33-20,597-20h575l-192-193C800,103,794,94,849,39c20-20,39-29,61-29c28,0,63,30,298,262c147,144,272,271,279,282c30,51,23,60-219,304C947,1180,926,1196,870,1167z" />
                    </g>
                    </svg>
						</span>
						</a>
						<h3>Coming On: ${board.mdate}</h3>
						<div>${board.summary }</div>
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