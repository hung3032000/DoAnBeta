<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>

<%
	String monthSelected = request.getParameter("cus_monthbirthday");
if (monthSelected == null) {
	monthSelected = "Month";
}
String yearSelected = request.getParameter("cus_yearbirthday");
if (yearSelected == null) {
	yearSelected = "Year";
}
String daySelected = request.getParameter("cus_daybirthday");
if (daySelected == null) {
	daySelected = "Day";
}
%>
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
								<label class="col-sm-3 control-label no-padding-right">Title</label>
								<div class="col-sm-9">
									<select class="form-control" id="userTitle" name="userTitle">
										<c:if test="${empty model.title}">
											<option class="form-selectOption" label="Mr." value="Mr.">Mr.
											</option>
											<option class="form-selectOption" label="Mrs." value="Mrs.">Mrs.</option>
											<option class="form-selectOption" label="Ms." value="Ms.">Ms.
											</option>
											<option class="form-selectOption" label="-" value="">-
											</option>
										</c:if>
										<c:if test="${not empty model.title}">

											<option class="form-selectOption" label="${model.title}"
												value="${model.title}">${model.title}</option>
											<option class="form-selectOption" label="Mr." value="Mr.">Mr.
											</option>
											<option class="form-selectOption" label="Mrs." value="Mrs.">Mrs.</option>
											<option class="form-selectOption" label="Ms." value="Ms.">Ms.
											</option>
											<option class="form-selectOption" label="-" value="">-
											</option>

										</c:if>
									</select>
								</div>
							</div>
							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">First
									Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="fname" name="fname"
										value="${model.fName}" />
								</div>
							</div>
							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Last
									Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="lname" name="lname"
										value="${model.lName}" />
								</div>
							</div>

							<br />
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right">Email</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="email" name="email"
										value="${model.email}"
										<c:if test="${not empty model.title}">disabled="disabled"</c:if> />
								</div>
							</div>
							<br />

							<c:if test="${empty model.email}">
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">Password</label>
									<div class="col-sm-9">
										<input class="form-control" type="password" id="password"
											name="password" value="" maxlength="14"
											data-dwname="password" autocomplete="current-password"
											aria-required="true">
									</div>
								</div>
								<br />
							</c:if>
							<c:if test="${not empty model.email}">
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">Address</label>
									<div class="col-sm-9">
										<input class="form-control" type="text" id="address"
											name="address" value="${model.address}" 
											data-dwname="address" autocomplete="current-address"
											aria-required="true">
									</div>
								</div>
								<br />
							</c:if>
							<c:if test="${not empty model.email}">


								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">Day</label>
									<div class="col-sm-9">
										<select class="form-control" id="Day" name="Days">
											<c:if test="${day == null}">
												<option class="form-selectOption" label="Day" value="Day">Day</option>
											</c:if>
											<c:if test="${day != null }">
												<option class="form-selectOption" label="${day}" value="Day">Day</option>
											</c:if>
											<%
												for (int day = 1; day <= 31; day++) {
											%>
											<option class="form-selectOption" value="<%=day%>"
												label="<%=day%>" <%if (daySelected.equals(day + "")) {%>
												selected <%}%>>
												<%=day%></option>
											<%
												}
											%>



										</select>
									</div>
								</div>
								<br />
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">Month</label>
									<div class="col-sm-9">
										<select class="form-control" id="Month" name="Month">

											<c:if test="${day == null}">
												<option class="form-selectOption" label="Month"
													value="Month">Month</option>
											</c:if>
											<c:if test="${day != null }">
												<option class="form-selectOption" label="${month}"
													value="Month">Month</option>
											</c:if>
											<%
												for (int month = 1; month <= 12; month++) {
											%>
											<option class="form-selectOption" value="<%=month%>"
												<%if (monthSelected.equals(month + "")) {%> selected <%}%>>
												<%=month%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								<br />

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right">Year</label>
									<div class="col-sm-9">
										<select class="form-control" id="Year" name="Year">
											<c:if test="${not empty model}">

												<c:if test="${day == null}">
													<option class="form-selectOption" label="Year" value="Year">Year</option>
												</c:if>
												<c:if test="${day != null }">
													<option class="form-selectOption" label="${year}"
														value="Year">Year</option>
												</c:if>
												<%
													for (int year = 1980; year <= 2020; year++) {
												%>
												<option class="form-selectOption" value="<%=year%>"
													<%if (yearSelected.equals(year + "")) {%> selected <%}%>>
													<%=year%></option>
												<%
													}
												%>
											</c:if>
										</select>
									</div>
								</div>
								<br />
							</c:if>
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
								<label class="col-sm-3 control-label no-padding-right">Role
									ID</label>
								<div class="col-sm-9">
									<select class="form-control" id="roleid" name="roleid">
								
										<c:if test="${empty model.email}">
											<c:forEach var="item" items="${role.listResult}">
												<option value="${item.roleId}">${item.name}</option>
											</c:forEach>
										</c:if>
										
										<c:if test="${not empty model.email}">
									
											<c:forEach var="item" items="${role.listResult}">
												<option value="${item.roleId}"
													<c:if test="${item.roleId == model.roleId}">selected="selected"</c:if>>
													${item.name}</option>
											</c:forEach>
										</c:if>
									</select>
								</div>
							</div>
							<br />

							<div class="form-group">
								<div class="col-sm-12">
									<c:if test="${not empty model.email}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold" value="Edit User"
											id="btnAddOrUpdateNew" name="action" />
									</c:if>
									<c:if test="${empty model.email}">
										<input type="submit"
											class="btn btn-white btn-warning btn-bold" value="New User"
											id="btnAddOrUpdateNew" name="action" />
									</c:if>
								</div>
							</div>
							<input type="hidden" value="${model.email}" id="email"
								name="email" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
