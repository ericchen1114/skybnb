<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html lang="en">

<head>
<title>OrderList</title>
<!-- Required meta tags -->
<style>
* {
	
font-family: 微軟正黑體;
	
}

.nav-link {
	font-size: 20px;
}

/*table*/
.center{
  width: 90%;
  display: table;
  margin-left: auto; 
  margin-right: auto; 
  border: 1px none #CFCFCF; 
  border-radius:7px;   
  box-shadow:3px 3px 12px #787878;
   
   
}
.table th{
	border: 1px solid #C9C9C9;
	background-color:#A1A1A1;
	color:#FAFAFA;
	text-align:center;
	
	white-space:nowrap;
	 
}
.table td{
border-bottom: 1px solid #C9C9C9; 
/*     border: 1px solid #C9C9C9; */ 
white-space:nowrap;
text-align:center;
}

.table{
	border-collapse: separate;
	border-spacing: 0;	
}
/*titile*/
#text{
	
	font-family:微軟正黑體;
}
#mapicon{
/* 	float:left;  */
	maring:2%;
	width:8%;
}
#title{
	float:left;
	margin-left:5%;
	margin-bottom:0.5%;
	margin-top:1%;
	text-align:left;
}
/*第一欄第一列：左上*/
tr:first-child th:first-child{
  border-top-left-radius: 7px;
}
/*第一欄最後列：左下*/
tr:last-child td:first-child{
  border-bottom-left-radius: 7px;
}
/*最後欄第一列：右上*/
tr:first-child th:last-child{
  border-top-right-radius: 7px;
}
/*最後欄第一列：右下*/
tr:last-child td:last-child{
  border-bottom-right-radius:7px;
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
<!-- 	<form action="bonusselect.controller" method="get"/> -->
<!-- 		class="form-signin text-center mt-5"> -->

<div id="title">
	<h1 id="text"><IMG id="mapicon" SRC="images/orderlistImages/mapicon.png" />您的旅程</h1>
</div>	

<div class="center">

    <table class="table table-hover">
      <thead>
        <tr>
          <th>訂單編號</th>
          <th>會員ID</th>
          <th>房間ID</th>
          <th>訂單日期</th>
          <th>入住日期</th>
          <th>退房日期</th>
          <th>紅利</th>
          <th>結帳金額</th>
          <th>是否已退訂</th>

<!--     	　　<th>人數</th>      -->
<!--           <th>星星數</th> -->
<!--           <th>評論</th> -->
<!--           <th>評論狀態</th> -->
        </tr>
      </thead>
      <tbody>
      <c:if test="${not empty select}">
      <c:forEach var="obj" items="${select}">
      	<c:url value="/orderlistdetail.controller" var="link" scope="page">
      		<c:param name="orderHouseNumber" value="${obj.orderHouseNumber}"/>
      		<c:param name="memberID" value="${obj.memberID}"/>
      		<c:param name="houseID" value="${obj.houseID}"/>
      		<c:param name="orderDate" value="${obj.orderDate}"/>
      		<c:param name="checkInDate" value="${obj.checkInDate}"/>
      		<c:param name="checkOutDate" value="${obj.checkOutDate}"/>     		
      		<c:param name="bonus" value="${obj.bonus}"/>
      		<c:param name="checkoutAmount" value="${obj.checkoutAmount}"/>
      		<c:param name="cancelReservation" value="${obj.cancelReservation}"/>

<%--       		<c:param name="numberOfPeople" value="${obj.numberOfPeople}"/> --%>
<%--       		<c:param name="starCount" value="${obj.starCount}"/> --%>
<%--       		<c:param name="comment" value="${obj.comment}"/> --%>
<%--       		<c:param name="commentStatus" value="${obj.commentStatus}"/> --%>
       </c:url>
        <tr>
          <td><a href="${link}">${obj.orderHouseNumber}</a></td>
          <td>${obj.memberID}</td>
          <td>${obj.houseID}</td>
          <td>${obj.orderDate}</td>
          <td>${obj.checkInDate}</td>
          <td>${obj.checkOutDate}</td>
          <td>${obj.bonus}</td>
          <td>${obj.checkoutAmount}</td>
          <td>${obj.cancelReservation}</td>
<%--           <td>${obj.cancelReservation}</td> --%>
<%-- 　　　　　<td>${obj.numberOfPeople}</td> --%>
<%--           <td>${obj.starCount}</td> --%>
<%--           <td>${obj.comment}</td> --%>
<%--           <td>${obj.commentStatus}</td> --%>
        </tr>
         </c:forEach>
         </c:if>
      </tbody>
    </table>
  </div>
   <div >${ errorMsgs["select"]}</div> 
<!-- 	</form> -->
<!-- 	<div id="accordion"> -->
<!--   <div class="card"> -->
<!--     <div class="card-header" id="headingOne"> -->
<!--       <h5 class="mb-0"> -->
<!--         <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> -->
<!--           Collapsible Group Item #1 -->
<!--         </button> -->
<!--       </h5> -->
<!--     </div> -->

<!--     <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion"> -->
<!--       <div class="card-body"> -->
<!--         Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!--   <div class="card"> -->
<!--     <div class="card-header" id="headingTwo"> -->
<!--       <h5 class="mb-0"> -->
<!--         <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> -->
<!--           Collapsible Group Item #2 -->
<!--         </button> -->
<!--       </h5> -->
<!--     </div> -->
<!--     <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion"> -->
<!--       <div class="card-body"> -->
<!--         Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!--   <div class="card"> -->
<!--     <div class="card-header" id="headingThree"> -->
<!--       <h5 class="mb-0"> -->
<!--         <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> -->
<!--           Collapsible Group Item #3 -->
<!--         </button> -->
<!--       </h5> -->
<!--     </div> -->
<!--     <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion"> -->
<!--       <div class="card-body"> -->
<!--         Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS. -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->
	<!-- 	以上為自己寫的部分 </main> -->
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