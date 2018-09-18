<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="icon" href="images/cloudy.png">
<title>Register</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


 

    <!-- Bootstrap core CSS -->
     <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
     <link href="form-validation.css" rel="stylesheet">
     <link href="css/register.css" rel="stylesheet">

<style>

    * {
            font-family: 微軟正黑體;
        }

        .nav-link {
            font-size: 20px;
        }
        
        

</style>

</head>




  <body class="bg-light">

	<header> 

<jsp:include page="navbar.jsp"/>
	<!-- 	上面為navbr --> 
	</header>


    <div class="container">
      <div class="py-5 text-center ">
      
<!--       下面這行是增加網頁上面空白 -->
<!--         <img class="d-block bg-danger mx-auto mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"> -->

<!--      	下面是右框架 -->  
    	 <div class="row ">
     
     
<!-- 		這裡準備要寫上傳圖片 -->  	
        <div class=" order-md-2 mb-4 mr-5 bg-danger">
<!--             <span class="text-muted">上傳照片</span> -->
			
		 	<div class="mt-5 mr-5" id="result"></div>
		 	<div class=" mr-5">
		    <input   id="pic" type="file" name = 'pic' accept = "image/*" onchange = "selectFile()" />
		    </div>
          
            

<!-- 以上是上傳圖片 -->
		</div>
       
        
        
        
<!--         下面是左框架 -->
        <div class="col-md-8 order-md-1">

          <form action="<c:url value="/Register.controller" />" th:object="${register}" method="post" class="needs-validation"  >

	    	<h2 class="text-center">註冊</h2>
      			<hr class="featurette-divider">            
          
			<div class="form-group">
				<input id="inputEmail" name="account" type="email" class="form-control"  placeholder="電郵地址(帳號)"  required>
				<div class="help-block with-errors"></div>
			</div>          
          
			<div class="form-group">
				<input id="inputName" name="Name" type="text" class="form-control" placeholder="姓名" required>
				<div class="help-block with-errors"></div>
			</div>          
          
            <div class="row">
	              <div class="col-md-6 mb-3">
					<input id="inputPassword" name="Password" class="form-control" type="password" placeholder="設定密碼" data-minlength="6" data-error="請輸入含有英文字母及數字的密碼，至少六個字元。" required>
					<div class="help-block with-errors"></div>
	              </div>
	              
	              
	              <div class="col-md-6 mb-3 form-group">  
			 		<input id="inputConfirmPassword" name="ConfirmPassword" class="form-control" type="password" placeholder="確認密碼" data-match="#inputPassword" data-error="密碼未吻合！" required>
					<div class="help-block with-errors"></div>
	              </div>
            </div>


				<div class="form-group mb-3" >
					<label for="bookdate">生日:</label>
					<input id="date" type="date" name="birthday" value="2017-06-01">
<!-- 					<date-input  id="bookdate" class="form-control" name="birthday"  date="{{date}}" timezone="[[timezone]]"></date-input> -->
					
<!-- 					<input type="date" id="bookdate" date="date" class="form-control" name="birthday" placeholder="2010-01-01"  required> -->
	
				</div>	


		     <div class="form-group mb-3">
		      	<input type="text" id="inputphone" class="form-control" placeholder="連絡電話" name="phone" required >
		     </div>

		     <div class="form-group mb-3">
		      	<input type="text" id="inputaddress" class="form-control" placeholder="地址" name="address" required >
		     </div>

            <div class="row">
              <div class="col-md-5 mb-3">
		        <select class="custom-select d-block w-100" id="country" name="nationality" required>
			        <option value="">國籍</option>
			        <option>台灣</option>
			        <option>韓國</option>
			        <option>日本</option>
		        </select>
               </div>
              
              <div class="col-md-4 mb-3">
		          <select class="custom-select d-block w-100" id="language" name="language" required >
			         <option value="">語言</option>
			         <option>中文</option>
			         <option>英文</option>
			         <option>韓文</option>
			         <option>日文</option>
		         </select>
              </div>
            </div>
           <input class="btn btn-lg btn-block bg-info text-white" type="Submit" value="註冊">
<!--          <button class="btn btn-lg btn-block bg-info text-white" type="submit">註冊</button> -->
        
          </form>
        </div>
      </div>
     </div>
          </div>

<!--     下面是footer --> 
<%-- <jsp:include page="footer.jsp"/> --%>
 <!-- 上面是footer --> 

    
    
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
    

 <script type="text/javascript">
        var files = document.getElementById('pic').files;
        var form = new FormData();//通过HTML表单创建FormData对象
        var url = '127.0.0.1:8080/'
        function selectFile(){
            var files = document.getElementById('pic').files;
            console.log(files[0]);
            if(files.length == 0){
                return;
            }
            var file = files[0];
            //把上传的图片显示出来
            var reader = new FileReader();
            // 将文件以Data URL形式进行读入页面
            console.log(reader);
            reader.readAsBinaryString(file);
            reader.onload = function(f){
                var result = document.getElementById("result");
                var src = "data:" + file.type + ";base64," + window.btoa(this.result);
                result.innerHTML = '<img src ="'+src+'"/>';
            }
            console.log('file',file);
            ///////////////////
            form.append('file',file);
            console.log(form.get('file'));
        }
    </script>


    
</body>
</html>