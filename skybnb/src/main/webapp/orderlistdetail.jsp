<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Title</title>
<!-- Required meta tags -->
<style>
* {
	font-family: 微軟正黑體;
}

.nav-link {
	font-size: 20px;
}

#mapicon {
	width: 12%;
    float: left;
	
}

#title {
	text-align: left;
	margin: 2% 40% 2% 20%;
	border:none;
	width: 80%;
}
#text02{
	float: left;
    margin-left: 3%;
    font-size: 212%;
}
strong {
    font-weight: bolder;
}

#btn1 {
	width: 10%;
/* 	margin-top: 0.2%; */
	margin-left: -80%;
	margin-bottom: 2%;
}
.detail{
	width: 40%;
	display: table;
	margin-left: 5%;
	margin-right: auto;
}
.table td{
/* 	background-color:#E8E8E8; */
	border-bottom:1px solid #C9C9C9;
}
.table {
	border-collapse: separate;
	border-spacing: 0;
}
.table th{
   	width:15%;
	text-align:left;
	white-space:nowrap;
	/* background-color:#E8E8E8;	 */
border-bottom:1px solid #C9C9C9;
}

#all {
	margin:0px;
	background-size: 3096px auto;
	background-repeat: no-repeat;
	background-image: url("images/orderlistImages/bgImage03.jpg");
	filter: alpha(opacity = 50);
}

#googlemap {
	float: right;
	margin-right:10%;
	margin-top:6%;
}
</style>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
<!-- 客製化的css 讓navbars 在top -->
<link href="css/carousel.css" rel="stylesheet">
</head>

<body>
	<header> <nav
		class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top"> <a
		class="navbar-brand mb-0" href="#"> <img src="images/cloudy.png"
		width="30" height="30" alt="">
	</a> <a class="navbar-brand mb-0 h1 mr-5" href="#"> Skybnb </a> <a
		class="navbar-brand mb-0 h1"> <img src="images/search.png"
		width="25" height="25" alt="">
	</a>
	<form class="form-inline my-2 my-lg-0 mr-auto"
		action="/action_page.php">
		<input class="form-control mr-sm-2" type="text" placeholder="試試 台北">
		<button class="btn btn-success my-2 my-sm-0" type="submit">搜尋</button>
	</form>
	<div class="collapse navbar-collapse justify-content-end ">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">進階搜尋</a></li>
			<li class="nav-item"><a class="nav-link" href="#">上架房屋</a></li>
			<li class="nav-item"><a class="nav-link" href="#">訂單查詢</a></li>
			<li class="nav-item"><a class="nav-link" href="#">願望清單</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> (登入者姓名) </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">編輯基本資料</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">登出</a>
				</div></li>
		</ul>
	</div>
	</nav> </header>
<body>
	<main role="main" class="mt-2"> 
	<!-- 	以下為自己寫的部分 -->
	<form action="<c:url value="orderlistdetail.controller" />" class="form-signin text-center mt-5">
		
		<div id="all">
<!-- 			<div id="title"> -->
<!-- 				<h1 id="text"> -->
<!-- 					<IMG id="mapicon" SRC="images/orderlistImages/mapicon.png" />您的旅程 -->
<!-- 				</h1> -->
<!-- 			</div> -->
			<iframe id="googlemap"
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.0051090185048!2d121.54120951404435!3d25.0339006839724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abd379a5ec97%3A0xec12a62666a81e3d!2zMTA25Y-w5YyX5biC5aSn5a6J5Y2A5b6p6IiI5Y2X6Lev5LiA5q61Mzkw6Jmf!5e0!3m2!1szh-TW!2stw!4v1528771651423"
				width="600" height="500" frameborder="0" style="border: 0"
				allowfullscreen>
			</iframe>
			<div class="detail">
				<table class="table table-hover borderless">
					<thead>
						<th id="title">
							<IMG id="mapicon" SRC="images/orderlistImages/mapicon.png" />
							<strong id="text02">您的旅程</strong>	
						</th>
					</thead>
					<tbody>
						<tr>
							<th scope="row">訂單編號: </th>
							<td></td>
						</tr>

						<tr>
							<th scope="row">房間名稱:　</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">房間類型 :　</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">訂單日期 : </th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">入住日期 : </th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">退房日期 :</th>
							<td></td>
						</tr>
						
						<tr>
							<th scope="row">人數 : </th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">紅利 : </th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">總金額 : </th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">星星總數 : </th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">評論: </th>
							<td></td>
						</tr>
						
						
					</tbody>
				</table>
			</div>
			<button type="button" id="btn1" class="btn">評分</button>
		</div>
		</div>
	</form>
	<!-- 	以上為自己寫的部分 --> </main>
</body>
<hr class="featurette-divider">
<!-- 這行要加 -->
<footer class="container">
<p class="float-right">
	<a href="#">Back to top</a>
</p>
<p>
	<img src="images/cloudy.png" width="20" height="20" alt="">&copy;
	Skybnb, Inc. &middot;
</p>
</footer>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
	integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
	crossorigin="anonymous"></script>
</body>

</html>