<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sach bai viet</title>
</head>
<body>
<div class="main-content">
  <form action="<c:url value = '/admin-new'/>" id = "formsubmit" method = "get">
	
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
					</li>

				</ul>
				<!-- /.breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off"> <i
							class="ace-icon fa fa-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- /.nav-search -->
			</div>
			<div class="page-content">


				<div class="row">
					<div class="col-xs-12">
						<div class="row">
							<div class="col-xs-12">
								<div class="table-responsive">
								
								<table class="table table-bordered">
									    <thead>
									      <tr>
									        <th>Tên bài viết</th>
									        <th>Mô tả ngắn</th>
									        
									      </tr>
									    </thead>
									    <tbody>
									    <c:forEach var = "items" items ="${model.listResults}">
									     <tr>
									    <td>${item.title}</td>
									    <td>${item.shortDescription}</td>
									     </tr>
									    </c:forEach>
									     
									      
									      
									       
									    </tbody>
									  </table>
								 <ul class="pagination" id="pagination"></ul>
								<input type = "hidden" value "" id = "page" name = "page"/>
								<input type = "hidden" value "" id = "maxPageItem" name = "maxPageItem"/>
								<input type = "hidden" value "" id = "sortName" name = "sortName"/>
								<input type = "hidden" value "" id = "sortBy" name = "sortBy"/>
								
								
								
								</div>


							</div>

						</div>
					</div>
				</div>



			</div>


		</div>
	
</form>
</div>
<script>
var totalPages = ${model.totalPage}
var currentPage = ${mode.page};
var visiblePages = ${model.maxPageItem};
var limit =2;
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 10,
            startPage: currentPage,
            onPageClick: function (event, page) {
              
     		
            	if(currentPage!=page){
          $('#maxPageItem').val(limit);
     		$('#page').val(page);
     		$('#sortName').val('title');
     		$('#sortBy').val('desc');
     		$('#formsubmit').submit();
            	}
            }
        });
  
    });
</script>
</body>
</html>