<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
<link href="css/navbar/carousel.css" rel="stylesheet">
<link href="css/login/signin.css" rel="stylesheet">
<title>Insert title here</title>
<style>
* {
	font-family: 微軟正黑體;
}

.nav-link {
	font-size: 20px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
	<a class="navbar-brand mb-0" href="#"> <img src="images/cloudy.png"
		width="30" height="30" alt="">
	</a> <a class="navbar-brand mb-0 h1 mr-5" href="#">Skybnb</a> <a
		class="navbar-brand mb-0 h1"> <img src="images/search.png"
		width="25" height="25" alt="">
	</a>
	<form class="form-inline my-2 my-lg-0 mr-auto"
		action="navbar.controller">
		<input class="form-control mr-sm-2" type="text" placeholder="試試 台北">
		<button class="btn btn-success my-2 my-sm-0" type="submit">搜尋</button>
	</form>
	<div class="collapse navbar-collapse justify-content-end ">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">進階搜尋</a></li>
			<li class="nav-item"><a class="nav-link" href="<c:url value="/orderlistselect.controller"/>" method="get">查詢訂單</a></li>
			<li class="nav-item"><a class="nav-link" href="#">上架房屋</a></li>
			<li class="nav-item"><a class="nav-link" href="#">註冊</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="modal"
				data-target="#exampleModalCenter">登入</a></li>
		</ul>
	</div>
	</nav>


	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
				<form class="form-signin">
					<div class="text-center">
						<h1 class="h3 mb-3 font-weight-normal">登入</h1>
					</div>
				</form>
				</div>
			
			
				<div class="modal-header">
				<form class="form-signin">
					<div class="text-center">
					
					<button class="btn btn-sm btn-outline-secondary btn-block" type="submit">
					<img src="images/chen/facebook.png" width="20" height="20" alt="">
					使用Facebook帳號登入</button>
					</div>
					<div class="text-center mt-3">
					<button class="btn btn-sm btn-outline-secondary btn-block" type="submit">
					<img src="images/chen/google.png" width="18" height="18" alt="">
					使用Google帳號登入</button>
					</div>
				</form>
				</div>

			<div class="text-center">
				<form class="form-signin">
					<img class="mb-4"
						src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg"
						alt="" width="72" height="72">
					<label for="inputEmail" class="sr-only">信箱</label> <input
						type="email" id="inputEmail" class="form-control" placeholder="信箱"
						required autofocus> <label for="inputPassword"
						class="sr-only">密碼</label> <input type="password"
						id="inputPassword" class="form-control" placeholder="密碼" required>
					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">
							記住我
						</label>
					</div>
					<button class="btn btn-sm btn-primary btn-block" type="submit">登入</button>
					<div class="mt-2">
					<a href="#">忘記密碼？</a>
					</div>
				</form>
				</div>
				<div class="modal-footer">
					<form class="form-signin">
					<div class="text-center">
						還沒有帳號？   
						<a href="#">註冊</a>
					</div>
				</form>
				</div>

			</div>
		</div>
	</div>


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