<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-new" />
<c:url var="NewURL" value="/admin-new" />
<html>
<head>
<title>Edit category</title>
</head>
<body>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
							chủ</a></li>
					<li class="active">Chỉnh sửa bài viết</li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty messageResponse}">
							<div class="alert alert-${alert}">${messageResponse}</div>
						</c:if>
						<form id="formSubmit" action="${pageContext.request.contextPath}/admin-CategoryNew"
							method="Post">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Category Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="title" name="title"
										value="" />

								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Category ID</label>
								<div class="col-sm-9">
									<select class="form-control" id="categoryName"
										name="categoryName">
										<%-- <c:if test="${empty category.listResult}"> --%>
											<option value="0">Chọn loại bài viết</option>
											<c:forEach var="item" items="${category.listResult}">
												<option value="${item.id}">${item.name}</option>
											</c:forEach>
								<%-- 		</c:if> --%>
										<%-- <c:if test="${not empty model.categoryCode}">
											<option value="">Chọn loại bài viết</option>
											<c:forEach var="item" items="${categories}">
												<option value="${item.id}"
													<c:if test="${item.id == model.id}">selected="selected"</c:if>>
													${item.name}</option>
											</c:forEach>
										</c:if> --%>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Image</label>
								<div class="col-sm-9">

									<input id='inputfile' type='file' name='inputfile'
										onChange='getoutput()'><br> <input type='hidden'
										name='outputfile' id="outputfile"><br>

								</div>
							</div>
							<br /> <br />
							
							
							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty model.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="Cập nhật bài viết" id="btnAddOrUpdateNew" />
									</c:if>
									<c:if test="${empty model.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="Thêm bài viết" id="btnAddOrUpdateNew" />
									</c:if>
								</div>
							</div>
							<input type="hidden" value="${model.id}" id="id" name="id" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function getFile(filePath) {
			return filePath.substr(filePath.lastIndexOf('\\') + 1).split('.')[0];
		}

		function getoutput() {
			outputfile.value = getFile(inputfile.value) + "."
					+ inputfile.value.split('.')[1];
		}
		document.getElementById('outputfile').value = image;
		
		var editor = '';
		$(document).ready(function() {
			editor = CKEDITOR.replace('content');
		});

		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();
			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			data["content"] = editor.getData();
			var id = $('#id').val();
			if (id == "") {
				addNew(data);
			} else {
				updateNew(data);
			}
		});
		function addNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'POST',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}?type=edit&id="
									+ result.id + "&message=insert_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
						}
					});
		}
		function updateNew(data) {
			$
					.ajax({
						url : '${APIurl}',
						type : 'PUT',
						contentType : 'application/json',
						data : JSON.stringify(data),
						dataType : 'json',
						success : function(result) {
							window.location.href = "${NewURL}?type=edit&id="
									+ result.id + "&message=update_success";
						},
						error : function(error) {
							window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
						}
					});
		}
	</script>
</body>
</html>