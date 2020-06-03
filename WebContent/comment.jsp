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
								<h2>Comment</h2>
								<form action="">
									<div>my id</div>
									<textarea name="" id="" cols="30" rows="3"
										placeholder="Add comment..."></textarea>
									<div class="bottom-comment">
										<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
										<ul class="comment-actions">
											<li class="complain">Complain</li>
											<li class="reply">Reply</li>
										</ul>
									</div>
								</form>
							</div>
						</div>

						<div class="comment-wrap">
							<div class="photo">
								<div class="avatar"
									style="background-image: url('https://s3.amazonaws.com/uifaces/faces/twitter/jsa/128.jpg')"></div>
							</div>
							<table border="1" style="width: 700px;">
								<tr>
									<td><div>other user</div>
										<div class="comment-block">
											<p class="comment-text">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit. Iusto temporibus iste nostrum
												dolorem natus recusandae incidunt voluptatum. Eligendi
												voluptatum ducimus architecto tempore, quaerat explicabo
												veniam fuga corporis totam reprehenderit quasi sapiente modi
												tempora at perspiciatis mollitia, dolores voluptate. Cumque,
												corrupti?</p>
											<div class="bottom-comment">
												<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
												<ul class="comment-actions">
													<li class="complain">Complain</li>
													<li class="reply">Reply</li>
												</ul>
											</div>
										</div></td>
								<tr>
								<tr>
									<td><div>other user</div>
										<div class="comment-block">
											<p class="comment-text">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit. Iusto temporibus iste nostrum
												dolorem natus recusandae incidunt voluptatum. Eligendi
												voluptatum ducimus architecto tempore, quaerat explicabo
												veniam fuga corporis totam reprehenderit quasi sapiente modi
												tempora at perspiciatis mollitia, dolores voluptate. Cumque,
												corrupti?</p>
											<div class="bottom-comment">
												<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
												<ul class="comment-actions">
													<li class="complain">Complain</li>
													<li class="reply">Reply</li>
												</ul>
											</div>
										</div></td>
								<tr>
								<tr>
									<td><div>other user</div>
										<div class="comment-block">
											<p class="comment-text">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit. Iusto temporibus iste nostrum
												dolorem natus recusandae incidunt voluptatum. Eligendi
												voluptatum ducimus architecto tempore, quaerat explicabo
												veniam fuga corporis totam reprehenderit quasi sapiente modi
												tempora at perspiciatis mollitia, dolores voluptate. Cumque,
												corrupti?</p>
											<div class="bottom-comment">
												<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
												<ul class="comment-actions">
													<li class="complain">Complain</li>
													<li class="reply">Reply</li>
												</ul>
											</div>
										</div></td>
								<tr>
								<tr>
									<td><div>other user</div>
										<div class="comment-block">
											<p class="comment-text">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit. Iusto temporibus iste nostrum
												dolorem natus recusandae incidunt voluptatum. Eligendi
												voluptatum ducimus architecto tempore, quaerat explicabo
												veniam fuga corporis totam reprehenderit quasi sapiente modi
												tempora at perspiciatis mollitia, dolores voluptate. Cumque,
												corrupti?</p>
											<div class="bottom-comment">
												<div class="comment-date">Aug 24, 2014 @ 2:35 PM</div>
												<ul class="comment-actions">
													<li class="complain">Complain</li>
													<li class="reply">Reply</li>
												</ul>
											</div>
										</div></td>
								<tr>
							</table>
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