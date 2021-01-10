<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
<title>Chỉnh sửa bài viết</title>
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
					<c:if test="${action == 'new' }">
						<li class="active">New</li>
					</c:if>
					<c:if test="${action == 'edit' }">
						<li class="active">Edit</li>
					</c:if>
				</ul>
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty messageResponse}">
							<div class="alert alert-${alert}">${messageResponse}</div>
						</c:if>

						<form action="${pageContext.request.contextPath}/admin-New"
							method="POST" class="form-horizontal edit-account-form"
							id="RegistrationForm" novalidate="novalidate">
							
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Role ID</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="fname" name="fname"
										value="${model.id}" />
								</div>
							</div>
							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Role
									Code</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="lname" name="lname"
										value="${model.code}" />
								</div>
							</div>

							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Role Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="lname" name="lname"
										value="${model.name}" />
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
							<br />
							

							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty model.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold" value="Edit role"
											id="btnAddOrUpdateNew" name="action" />
									</c:if>
									<c:if test="${empty model.id}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold" value="New role"
											id="btnAddOrUpdateNew" name="action" />
									</c:if>
								</div>
							</div>
							<input type="hidden" value="${model.id}" id="id"
								name="roleId" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
