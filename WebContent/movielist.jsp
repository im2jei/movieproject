<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>MovieList</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="HTML5 website template">
<meta name="keywords" content="global, template, html, sass, jquery">
<meta name="author" content="Bucky Maler">

<link rel="stylesheet" href="./assets/css/main.css">
<style type="text/css">
h2 {
	text-align: center;
	font-size: 38pt;
}

#s1 {
	margin: 10px;
	height: 1000px;
	float: left;
}

#a1 {
	padding-right: 10px;
	float: right;
}

#m1 {
	margin: 40px;
	width: 180px;
	height: 280px;
	float: left;
}

movielist {
	margin: 100px;
}

html> /**/ body {
	overflow-y: scroll;
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
</head>
<body>
	<!-- notification for small viewports and landscape oriented smartphones -->
	<div class="perspective effect-rotate-left">
		<!-- <div class="container"> -->
		<div class="outer-nav--return"></div>
		<div class="l-wrapper">
			<header class="header">
				<div>
					<nav class="l-side-nav">

						<ul class="side-nav">
							<li class="is-active"><span><a href="index.jsp">Home</a></span></li>
							<li><span><a
									href="MovieServlet?command=selectmovieformember">Movies</a></span></li>
							<li><span><a href="reservationtime.jsp">Tickets</a></span></li>
							<li><span><a href="mypage.jsp">MyPage</a></span></li>
						</ul>
					</nav>
				</div>
				<span>${sessionScope.userid} <a href="">Using</a></span>
			</header>

			<h2>Movie List</h2>
			<div>
				<a href="login.jsp">ADD MOVIE</a>
			</div>
			<div class="work--lockup">
				<section id="s1">

					<c:forEach var="movies" items="${list}">
						<article id="a1">
							<table>
								<tr>
									<td id="m1"><div>
											<a href="./MovieServlet?command=viewmore&num=${movies.num }">
												<img src="./movie/upload/${movies.fname}" width="200"
												height="280"><br>${movies.title}
											</a><br> <a
												href="./MovieServlet?command=updatemovieform&num=${movies.num }">Edit</a>
											<a
												href="./MovieServlet?command=deletemovie&num=${movies.num }">Delete</a>
										</div></td>
								</tr>
							</table>
						</article>
					</c:forEach>
				</section>
			</div>
			<ul class="outer-nav">
				<li class="is-active">Home</li>
				<li>Movies</li>
				<li>Tickets</li>
				<li>MyPage</li>
			</ul>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="assets/js/vendor/jquery-2.2.4.min.js"><\/script>')
	</script>
	<script src="./assets/js/functions-min.js"></script>
	<!-- </div> -->
</body>
</html>