<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new" />
<c:url var="NewURL" value="Adminlist.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa bài viết</title>
</head>
<body>
	<div class="main-content">

		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.setting.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>
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
						<c:if test="${not empty message }">
							<div class="alert alert -${alert}">${message}</div>
						</c:if>
						<form id = "formSubmit">
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Thể loại </label>
								<div class="col-sm-9">
						<select type = "number" class = "form-control" id = "categoryId" name = "categoryId">
						<option value = "">Chọn dịch vụ</option>
						<option value  = "1">Dịch vụ 1</option>
						<option value  = "2">Dịch vụ 2</option>
						<option value  = "3">Dịch vụ 3</option>
						<option value  = "4">Dịch vụ 4</option>
																							
						</select>
						</div>
						</div>
						<br/>
						<br/>
						<br/>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Tiêu đề</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="title" name="title"
									value="" />
							</div>
						</div>
						<br/>
						<br/>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Ảnh</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="thumbnail"
									name="thumbnail" value="" />
							</div>

						</div>
						<br/>
						<br/>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Mô tả ngắn</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="shortDescription"
									name="shortDescription" value="" />
							</div>
						</div>
						<br/>
						<br/>
						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Nội dung</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="content"
									name="content" value="" />
							</div>
						</div>
						<br/>
						<br/>
							<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right">Địa chỉ id</label>
							<div class="col-sm-9">
								<input type="number" class="form-control" id="id"
									name="id" value = "" />
							</div>
						</div>
						<br/>
						<br/>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="button" class="btn btn-white btn warning btn-bold" value = "Cập Nhập" id="btnupdate" />
								<input type="button" class="btn btn-white btn warning btn-bold" value = "Thêm mới" id="btnadd" />						
								<input type="button" class="btn btn-white btn warning btn-bold" value = "Xóa" id="btndelete" />
								
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>
	
<script>
$('#btnadd').click(function (e) {
	e.preventDefault();
	var data={};
	var formData = $('#formSubmit').serializeArray();
	$.each(formData, function (i,v) {
		data[""+v.name+""] = v.value;
		
	});
	addNew(data);
});

$('#btnupdate').click(function (e) {
	e.preventDefault();
	var data={};
	var formData = $('#formSubmit').serializeArray();
	$.each(formData, function (i,v) {
		data[""+v.name+""] = v.value;
		
	});
	updateNew(data);
});

$('#btndelete').click(function (e) {
	e.preventDefault();
	var data={};
	var formData = $('#formSubmit').serializeArray();
	$.each(formData, function (i,v) {
		data[""+v.name+""] = v.value;
		
	});
	deleteNew(data);
});


function addNew(data) {
	$.ajax({
		url: '${APIurl}',
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(data),
		dataType: 'json',
		success: function (result) {
			window.location.href = "${NewURL}?type=list&maxPageItem=4&page=1";
		},
		error: function (error) {
			console.log(error)
		}	
	});
}

function updateNew(data) {
	$.ajax({
		url: '${APIurl}',
		type: 'PUT',
		contentType: 'application/json',
		data: JSON.stringify(data),
		dataType: 'json',
		success: function (result) {
			window.location.href = "${NewURL}?type=list&maxPageItem=4&page=1";
		},
		error: function (error) {
			console.log(error)
		}	
	});
}

function deleteNew(data) {
	$.ajax({
		url: '${APIurl}',
		type: 'DELETE',
		contentType: 'application/json',
		data: JSON.stringify(data),
		success: function (result) {
			window.location.href = "${NewURL}?type=list&maxPageItem=4&page=1";
		},
		error: function (error) {
			console.log(error)
		}	
	});
}

</script>
</body>
</html>