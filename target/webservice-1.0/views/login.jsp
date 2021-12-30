<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dang nhap</title>

</head>
<body>
	<div class="login-reg-panel">
	
		
							
		<div class="register-info-box">
			<h2>Bạn muốn tận hưởng dịch vụ?</h2>
			<p>Hãy đến với chúng tôi</p>
			
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
	   		<div class="alert alert-${alert}">
      ${message}
  </div>
 
  
			<div class="login-show">
			  <form action="<c:url value = '/dang-nhap '/>" id = "formLogin" method = "POST">
			
				<h2>LOGIN</h2>
				<input type="text" class = "form-control" id = " inputEmail" name="userName" placeholder="Email">
				
			<input type="password" class = "form-control" id = " inputPassword" name="password"  placeholder="Password">
			<input type = "hidden" value = " login"  name = "action"/>
			
			<button type = "submit" class = "btn btn-primay">Login</button>
			</form>
			</div>
			
		</div>
	</div>
</body>
</html>