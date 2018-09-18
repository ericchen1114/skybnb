<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="images/cloudy.png">
<title>skyBnbBackstage</title>
<style>
* {
	font-family: 微軟正黑體;
}

.nav-link {
	font-size: 20px;
}
.thead-dark{
width: 100%;
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
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
	<a class="navbar-brand mb-0" href="#"> <img
		src="/project/img/cloudy.png" width="30" height="30" alt="">
	</a> <a class="navbar-brand mb-0 h1 mr-5" href="#"> Skybnb </a> <a
		class="navbar-brand mb-0 h1"> <img src="/project/img/search.png"
		width="25" height="25" alt="">
	</a> <!-- <form class="form-inline my-2 my-lg-0 mr-auto" action="/action_page.php">
            <input class="form-control mr-sm-2" type="text" placeholder="試試 台北">
            <button class="btn btn-success my-2 my-sm-0" type="submit">搜尋</button>
        </form> -->

	<div class="collapse navbar-collapse justify-content-end ">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">客訴處理</a></li>
			<li class="nav-item"><a class="nav-link" href="#">客訴處理完成</a></li>
			<li class="nav-item"><a class="nav-link" href="#">修改黑名單</a></li>
			<li class="nav-item"><a class="nav-link" href="#">登入</a></li>
		</ul>
	</nav>

	<!-- 	nabarSet -->
	<div style="padding: 60px;">
		<table class="table table-hover">

			 <thead >
				<tr>
					<th scope="col">客訴編號</th>
					<th scope="col">客訴會員ID</th>
					<th scope="col">被客訴會員ID</th>
					<th scope="col">檢舉主題</th>
					<th scope="col">客訴描述</th>
					<th scope="col">客訴處理狀況</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty reportlist}"> 
					<c:forEach var="list" items="${reportlist}">
							<th scope="row">${list.reportNumber}</th>
							<td>${list.memberReport}</td>
							<td>${list.houseMember}</td>
							<td>${list.reportTitle}</td>
							<td>${list.reportDiscription}</td>
							<td>${list.reportStatus}</td>
							<td><a href="<c:url value ="/reportupdate.contrller?num=${list.reportNumber}"/>" method="get">審核</a></td>
 
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>

</html>