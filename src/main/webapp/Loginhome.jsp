<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "/common/taglib.jsp" %>
<c:url var="APIuserurl" value="/api-admin-user" />
<c:url var="APIregisterurl" value="/api-register-user" />
<c:url var="NewURL" value="Adminhome.jsp" />
<c:url var="logURL" value="Loginhome.jsp" />
<c:url var="registerURL" value="Webhome.jsp" />
<!DOCTYPE html>
<html>
    <head>
       
             <title><dec:title default = "Dang nhap"/></title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link href = "<c:url value = '/template/login/style.css'/>" rel="stylesheet"  type = "text/css" media = "all" />
              <script src = "<c:url value = '/template/login/jquery.js'/>"></script>
   </head>
<body >

	<div class="login-reg-panel">
	
		<div class="register-info-box">
			<h2>Welcome to back 
</h2>
			<p>Have a good day</p>
		
			
				
		</div>
		<form id="submitform">

			<div class="white-panel">

				<div class="login-show">
					<h2>LOGIN</h2>

					<div class="form-group">


						<input type="text" class="form-control" id="userName"
							name="userName" value="" />

					</div>
					<div class="form-group">

						<input type="text" class="form-control" id="password"
							name="password" value="" />

					</div>
						<div class="col-sm-12 form-group">
					<input type="button" class="col-sm-3 btn btn-white btn warning btn-bold"
						value="Login" id="btnlogin" />
						
					<input type="button" class="col-sm-9 btn btn-white btn warning btn-bold"
						value="Register" id="btnregister" />
 </div>
				</div>

			</div>

		</form>
	</div>

	<script>
		$('#btnlogin').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#submitform').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;

			});
			showUser(data);
		});
		function showUser(data) {
			$.ajax({
				url : '${APIuserurl}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				success : function(result) {
					window.location.href = "${NewURL}";
				},
				error : function(error) {
					window.location.href = "${logURL}";
				}
			});
		}
		
		$('#btnregister').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#submitform').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;

			});
			register(data);
		});
		function register(data) {
			$.ajax({
				url : '${APIregisterurl}',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				success : function(result) {
					window.location.href = "${registerURL}";
				},
				error : function(error) {
					window.location.href = "${logURL}";
				}
			});
		}
	</script>
</body>




</html>