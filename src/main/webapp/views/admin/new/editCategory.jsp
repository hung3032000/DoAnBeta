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
						<form id="formSubmit"
							action="${pageContext.request.contextPath}/admin-CategoryNew"
							method="Post">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Category
									Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="categoryName"
										name="categoryName" value="${model.name }" />

								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Category
									ID</label>
								<div class="col-sm-9">
									<select class="form-control" id="Categoryid" name="Categoryid">
										<option value="1">Parent</option>
										<c:if test="${empty model.id}">
											<c:forEach var="item" items="${category.listResult}">
												<option value="${item.id}">${item.name}</option>
											</c:forEach>
										</c:if>
										<c:if test="${not empty model.id}">
											<option value="1">Parent</option>
											<c:forEach var="item" items="${category.listResult}">
												<option value="${item.id}"
													<c:if test="${item.id == model.parent_id}">selected="selected"</c:if>>
													${item.name}</option>
											</c:forEach>
										</c:if>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Image</label>
								<div class="col-sm-9">
									<input
										id='inputfile' type='file' name='inputfile'
										onChange='getoutput()'><br> <input type='hidden'
										name='outputfile' id="outputfile"><br>
								</div>

							</div>

							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Status</label>
								<div class="col-sm-9">
									<select class="form-control" id="status" name="status">
										<c:if test="${empty model.status}">
											<option class="form-selectOption" label="Active" value="1">Active
											</option>
											<option class="form-selectOption" label="Inactive" value="0">Inactive
											</option>

										</c:if>
										<c:if test="${not empty model.status}">
											<option class="form-selectOption"
												<c:if test="${model.status == 1}"> label="Active"</c:if>
												<c:if test="${model.status == 0}"> label="Inactive"</c:if>
												value="${model.status}">
												<c:if test="${model.status == 1}">Active</c:if>
												<c:if test="${model.status == 0}">Inactive</c:if>
											</option>
											<c:if test="${model.status == 0}">
												<option class="form-selectOption" label="Active" value="1">Active
												</option>
											</c:if>
											<c:if test="${model.status == 1}">
												<option class="form-selectOption" label="Inactive" value="0">Inactive
												</option>
											</c:if>
										</c:if>
									</select>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty model.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="Edit Category" id="btnAddOrUpdateNew" name="action" />
									</c:if>
									<c:if test="${empty model.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold"
											value="New Category" id="btnAddOrUpdateNew" name="action" />
									</c:if>
								</div>
							</div>
							<input type="hidden" value="${model.id}" id="id"
								name="categoryid" />
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

	</script>
</body>
</html>
