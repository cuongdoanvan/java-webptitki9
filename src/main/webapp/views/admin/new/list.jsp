
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
	<c:url var="NewURL" value="Adminedit.jsp" />
	<c:url var="searchurl" value="/api-admin-search" />
	<c:url var="APIurl" value="/api-admin-new" />

	
<html>
<head>
<meta charset="UTF-8">
<title>Danh sach bai viet</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
	<div class="main-content">

			<div class="main-content-inner">
				
				<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							
						</ul><!-- /.breadcrumb -->
						
			
				</div>
				<form id = "formSubmit">
				<div class="form-group">
							<input type="button" class="btn btn-white btn warning btn-bold" value = "Search" id="btnsearch" />
							<div class="col-sm-2">
								<input type="number" class="form-control" id="id"
									name="id" value = "" />
							</div>
						</div>
					
													
							
								
				</form>
			
				<div class="page-content">


					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box table-filter">
								<div class=table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
									
											<a flag="info"
												class="bt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tootip" title='Them bai viet'
												href='<c:url value = "Adminedit.jsp"/>'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>

											</span>

											</a>
											<a
												class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Xoa bai viet' 
													href='<c:url value = "Adminedit.jsp"/>'> 
												<span> <i class="fa fa-trash-o bigger-110 pink"></i>
												</span>
											</a>
										
										</div>
									</div>
								</div>
							</div>
									<table class="table table-bordered" id = 'table2'>
									
												 <tbody>
       
       
                                                </tbody>

										
										</table>
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">

										<table class="table table-bordered" id = 'table'>
											<thead>
												<tr>
											
													<th>Tên dịch vụ</th>
													<th>Mô tả ngắn</th>
													<th>Thời gian</th>
													<th>Địa chỉ id</th>
													

												</tr>
											</thead>
												 <tbody>
       
       
                                                </tbody>

										
										</table>
										
										<ul class="pagination" id="pagination"></ul>
										<input type="hidden" value= "" id="page" name="page" /> <input
											type="hidden" value ="" id="maxPageItem" name="maxPageItem" />
										<input type="hidden" value= "" id="sortName" name="sortName" />
										<input type="hidden" value= "" id="sortBy" name="sortBy" />
										<input type="hidden" value= "" id="type" name="type" />
									</div>


								</div>

							</div>
					
					



							
						</div>
					</div>

				</div>


			</div>

	
	</div>
	<script>
		var totalPages = $
		{
			model.totalPage
		}
		var currentPage = $
		{
			model.page
		};
		var visiblePages = $
		{
			model.maxPageItem
		};
		var limit = 2;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 10,
				startPage : currentPage,
				onPageClick : function(event, page) {

					if (currentPage != page) {
						$('#maxPageItem').val(2);
						$('#page').val(page);
						$('#sortName').val('title');
						$('#sortBy').val('desc');
						$('#type').val('list');
						$('#formsubmit').submit();
					}
				}
			});

		});
		
  
	</script>
	<script >
	
	
		$.ajax({
			url: '${APIurl}',
			type: 'GET',
			contentType: 'application/json',
		
			dataType: 'json',
			success: function (result){
				  var data = '';
				  
                  // ITERATING THROUGH OBJECTS
                  $.each(result, function (key, value) {

                      //CONSTRUCTION OF ROWS HAVING
                      // DATA FROM JSON OBJECT
                      data += '<tr>';
                      data += '<td>' + 
                          value.title + '</td>';

                      data += '<td>' + 
                          value.shortDescription + '</td>';

                      data += '<td>' + 
                          value.content + '</td>';
                      

                       data += '<td>' + 
                              value.id + '</td>';

                 

                      data += '</tr>';
                  });
                    
                  //INSERTING ROWS INTO TABLE 
                  $('#table').append(data);
		
		
			}
			
		});
		
	
	</script>
	<script>
$('#btnsearch').click(function (e) {
	e.preventDefault();
	var data={};
	var formData = $('#formSubmit').serializeArray();
	$.each(formData, function (i,v) {
		data[""+v.name+""] = v.value;
		
	});
	search(data);
});

function search(data) {
	$.ajax({
		url: '${searchurl}',
		type: 'GET',
		contentType: 'application/json',
		data: JSON.stringify(data),
		dataType: 'json',
		success: function (result) {
			console.log(result)
		},
		error: function (error) {
			console.log(error)
		}	
	});
}
</script>
	

</body>
</html>