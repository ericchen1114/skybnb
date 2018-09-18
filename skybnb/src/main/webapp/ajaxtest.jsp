<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>Enter some text in the fields below, then press the "Submit form" button to submit the form.</p>

<form id="myForm" action="Score.Controller" method="post">
  First name: <input type="hidden" id ="ft" name="fname"/><br>
<!--    <p id="score" name="fname">目前顆數:<span id="sp" class='num'> 0 </span>顆星</p> -->
  Last name: <input type="text" name="lname"/><br>
  <input type="button" onclick="myFunctio[n()" value="Submit form"/>
</form>

<script>
var a =15;
function myFunction() {
	 document.getElementById("ft").value =a;
     document.getElementById("myForm").submit(); 
}
</script>

</body>
</html>