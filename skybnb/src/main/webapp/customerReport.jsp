<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ tagliburi ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Title</title>
<style>
* {
	font-family: 微軟正黑體;
}

.nav-link {
	font-size: 20px;
}
</style>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
<!-- 客製化的css 讓navbars 在top -->
<link href="/project/css/carousel.css" rel="stylesheet">
</head>

<body class="bg-dark">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
	<a class="navbar-brand mb-0" href="#"> <img
		src="/project/img/cloudy.png" width="30" height="30" alt="">
	</a> <a class="navbar-brand mb-0 h1 mr-5" href="#"> Skybnb </a> <a
		class="navbar-brand mb-0 h1"> <img src="/project/img/search.png"
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
			<li class="nav-item"><a class="nav-link" href="#">註冊</a></li>
			<li class="nav-item"><a class="nav-link" href="#">登入</a></li>
		</ul>
	</div>
	</nav>
	<br>
	<!--內文-->
	<div class="container" style="width: 500px;">
		<div class="card card-login mx-auto mt-5" style="height: 500px">
			<div class="card-header">客訴回報</div>
			<div class="card-body">
				<form action="<c:url value ="/report.controller"/>" method="post">
					<div class="form-group">
						<div class="form-label-group">
							<label for="inputmasgtitle">客訴主題</label>
							</option>
							<span>${errorMsgs["titleError"]}</span>
							<select name="reporttitle" class="mdb-select md-form" style="width: 425px"  >
								<span>${errorMsgs["titleError"]}</span>
                                <option name="reporttitle" value="">選擇你的主題</option>
								<option name="reporttitle" value="房間整理">房間整理</option>
								<option name="reporttitle" value="找不到鑰匙">找不到鑰匙</option>
								<option name="reporttitle" value="紅利點數">紅利點數</option>
								<option name="reporttitle" value="修繕浴室">修繕浴室</option>
								<option name="reporttitle" value="環境整潔">環境整潔</option>
								<option name="reporttitle" value="客訴房東">客訴房東</option>
								<option name="reporttitle" value="平台問題">平台問題</option>
							</select>

						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<labelfor="inputreportmsg">問題描述</label>
							<span>${errorMsgs["messageError"]}</span> <textarea
								name="reportmessage" style="width: 425px" rows="3"
								name="inputreportmsg" cols="20"></textarea>
						</div>
					</div>
					<input type="hidden" name="MemberReport" value="MN123465">
					<input type="hidden" name="HouseMember" value="MN123456">
					<button class="btn btn-primary btn-block" type="submit">送出</button>
				</form>
			</div>
		</div>
	</div>

	<!--內文-->



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