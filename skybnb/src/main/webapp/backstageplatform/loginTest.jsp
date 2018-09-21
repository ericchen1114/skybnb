<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//請求數據,登錄賬號 +密碼
var data = {
        userAccount: lock_username,
        userPasswd:hex_md5(lock_password).toUpperCase()
}

$.ajax({
       url : ctx + "/unlock.do",
       type : "POST",
       data : JSON.stringify(data), //轉JSON字符串
       dataType: 'json',
       contentType:'application/json;charset=UTF-8', //contentType很重要   
       success : function(result) {
           console.log(result);
       }
});
</script>
</head>
<body>

<a>TEST</a>
</body>
</html>