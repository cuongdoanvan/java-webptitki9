<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
       
        <title><dec:title default = "Trang chủ"/></title>
  
      
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:url value = "/template/web/css/styles.css"/>" rel="stylesheet"  type = "text/css" media="all"/>
        <link href="<c:url value = "/template/web/bootstrap-4.3.1-dist/css/bootstrap.min.css"/>" rel="stylesheet"  type = "text/css" media = "all" />
    </head>
<body>
<%@include file = "/common/web/header.jsp" %>


<div class = "container">
	<dec:body/>
</div>


<%@include file = "/common/web/footer.jsp" %>

     <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src= "<c:url value = "/template/web/bootstrap-4.3.1-dist/js/bootstrap.bundle.min.js"/>"> </script>
</body>
</html>