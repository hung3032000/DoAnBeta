<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Users</title>
</head>

<body>
	<div class="main-content">

		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="${pageContext.request.contextPath}/admin-home">HomePage</a></li>
				</ul>

			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<c:if test="${not empty messageResponse}">
							<div class="alert alert-${alert}">${messageResponse}</div>
						</c:if>

						<!-- user -->

						<c:if test="${USER.listResult != null }">

							<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Add User'
												href='<c:url value="/admin-New"/>'> <span> <i
													class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
											</a>

										</div>
									</div>
								</div>
							</div>
							<form action="<c:url value='/admin-New'/>" id="formSubmit"
								method="post">
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th><input type="checkbox" id="checkAll"></th>
														<th>Title</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Email</th>
														<th>Address</th>
														<th>Day of Birth</th>
														<th>Status</th>
														<th>Role ID</th>
														<th>Created at</th>
														<th>Updated at</th>
														<th>Manipulation</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="item" items="${USER.listResult}">
														<tr>
															<td><input type="checkbox"
																id="checkbox_${item.email}" value="${item.email}"></td>
															<td>${item.title}</td>
															<td>${item.fName}</td>
															<td>${item.lName}</td>
															<td>${item.email}</td>
															<td>${item.address}</td>
															<td>${item.dateOfBirth}</td>
															<td>${item.status}</td>
															<td>${item.roleId}</td>
															<td>${item.created_at}</td>
															<td>${item.updated_at}</td>
															<td><c:url var="editURL" value="/admin-New">
																	<c:param name="action" value="detail" />
																	<c:param name="email" value="${item.email}" />
																</c:url> <a class="btn btn-sm btn-primary btn-edit"
																data-toggle="tooltip" title="Edit User"
																href='${editURL}'><i class="fa fa-pencil-square-o"
																	aria-hidden="true"></i> </a> <c:url var="editURL"
																	value="/admin-New">

																	<c:param name="action" value="delete" />
																	<c:param name="email" value="${item.email}" />
																</c:url> <a
																class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
																data-toggle="tooltip" title="Delete User"
																href='${editURL}'><i
																	class="fa fa-trash-o bigger-110 pink"
																	aria-hidden="true"></i> </a></td>

														</tr>
													</c:forEach>
												</tbody>
											</table>


										</div>
									</div>
								</div>
							</form>
						</c:if>
						<!-- category -->

						<c:if test="${category.listResult != null }">
							<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Thêm Mới'
												href='<c:url value="/admin-CategoryNew"/>'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
											</a>

										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th><input type="checkbox" id="checkAll"></th>
													<th>ID</th>
													<th>Category Name</th>
													<th>Parent ID</th>
													<th>Image</th>
													<th>Status</th>
													<th>Created at</th>
													<th>Updated at</th>
													<th>Manipulation</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${category.listResult}">
													<tr>
														<td><input type="checkbox" id="checkbox_${item.id}"
															value="${item.id}"></td>
														<td>${item.id}</td>
														<td>${item.name}</td>
														<td>${item.parent_id}</td>
														<td>${item.image}</td>
														<td>${item.status}</td>
														<td>${item.created_at}</td>
														<td>${item.updated_at}</td>
														<td><c:url var="editURL" value="/admin-CategoryNew">
																<c:param name="action" value="detail" />
																<c:param name="categoryId" value="${item.id}" />
															</c:url> <a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Edit Category"
															href='${editURL}'><i class="fa fa-pencil-square-o"
																aria-hidden="true"></i> </a> <c:url var="editURL"
																value="/admin-CategoryNew">

																<c:param name="action" value="delete" />
																<c:param name="categoryId" value="${item.id}" />
															</c:url> <a
															class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
															data-toggle="tooltip" title="Delete Category"
															href='${editURL}'><i
																class="fa fa-trash-o bigger-110 pink" aria-hidden="true"></i>
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- <ul class="pagination" id="pagination"></ul>
										<input type="hidden" value="" id="page" name="page" /> <input
											type="hidden" value="" id="maxPageItem" name="maxPageItem" /> -->

									</div>
								</div>
							</div>
						</c:if>

						<!-- role -->

						<c:if test="${role.listResult != null }">
							<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Thêm Mới'
												href='<c:url value="/admin-RoleNew"/>'> <span> <i
													class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
											</a>

										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th><input type="checkbox" id="checkAll"></th>
													<th>Role ID</th>
													<th>Role Code</th>
													<th>Role Name</th>
													<th>Role Status</th>
													<th>Created at</th>
													<th>Updated at</th>
													<th>Manipulation</th>

												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${role.listResult}">
													<tr>
														<td><input type="checkbox" id="checkbox_${item.id}"
															value="${item.id}"></td>
														<td>${item.roleId}</td>
														<td>${item.code}</td>
														<td>${item.name}</td>
														<td>${item.status}</td>
														<td>${item.created_at}</td>
														<td>${item.updated_at}</td>
														<td><c:url var="editURL" value="/admin-RoleNew">
																<c:param name="action" value="detail" />
																<c:param name="roleId" value="${item.roleId}" />
															</c:url> <a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Edit Category"
															href='${editURL}'><i class="fa fa-pencil-square-o"
																aria-hidden="true"></i> </a> <c:url var="editURL"
																value="/admin-RoleNew">

																<c:param name="action" value="delete" />
																<c:param name="roleId" value="${item.roleId}" />
															</c:url> <a
															class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
															data-toggle="tooltip" title="Delete Category"
															href='${editURL}'><i
																class="fa fa-trash-o bigger-110 pink" aria-hidden="true"></i>
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</c:if>

						<!-- order -->

						<c:if test="${order.listResult != null }">


							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>

													<th>ID</th>
													<th>User Email</th>
													<th>Customer ID</th>
													<th>Total Price</th>
													<th>Status</th>
													<th>Created at</th>
													<th>Updated at</th>
													<th>Manipulation</th>

												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${order.listResult}">
													<tr>

														<td>${item.id}</td>
														<td>${item.useremail}</td>
														<td>${item.customerId}</td>
														<td>${item.totalprice}</td>
														<td>${item.status}</td>
														<td>${item.created_at}</td>
														<td>${item.updated_at}</td>
														<td><c:url var="editURL" value="/admin-OrderNew">

																<c:param name="action" value="detail" />
																<c:param name="Orderid" value="${item.id}" />
															</c:url> <a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Order Detail"
															href='${editURL}'><i
																class="fa fa-info bigger-110 white" aria-hidden="true"></i>
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>
									<div class="hr hr8 hr-double hr-dotted"></div>

									<div class="row">
										<div class="col-sm-5 pull-right">
											<h4 class="pull-right">
												Total amount : <span class="red">${order.totalOrderPrice}</span>
											</h4>
										</div>
									</div>
								</div>
						</c:if>



						<!-- product -->

						<c:if test="${product.listResult != null }">
							<div class="widget-box table-filter">
								<div class="table-btn-controls">
									<div class="pull-right tableTools-container">
										<div class="dt-buttons btn-overlap btn-group">
											<a flag="info"
												class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
												data-toggle="tooltip" title='Thêm Mới Sản Phẩm'
												href='<c:url value="/admin-ProductNew"/>'> <span>
													<i class="fa fa-plus-circle bigger-110 purple"></i>
											</span>
											</a>

										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<!-- <th><input type="checkbox" id="checkAll"></th> -->
													<th>ID</th>
													<th>Product Name</th>
													<th>Product Price</th>
													<th>Product Size</th>
													<th>Product Color</th>
													<th>Quantity</th>
													<th>Product Origin</th>
													<th>Product Short Description</th>
													<th>Product content</th>
													<th>Product image</th>
													<th>Category ID</th>
													<th>Status</th>
													<th>Created At</th>
													<th>Updated at</th>
													<th>Manipulation</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="item" items="${product.listResult}">
													<tr>
														<%-- 	<td><input type="checkbox" id="checkbox_${item.id}"
															value="${item.id}"></td> --%>
														<td>${item.id}</td>
														<td>${item.name}</td>
														<td>${item.price}</td>
														<td>${item.size}</td>
														<td>${item.color}</td>
														<td>${item.quantity}</td>
														<td>${item.origin}</td>
														<td>${item.shortdecription}</td>
														<td>${item.content}</td>
														<td>${item.image}</td>
														<td>${item.categorie_id}</td>
														<td>${item.status}</td>
														<td>${item.created_at}</td>
														<td>${item.updated_at}</td>
														<td><c:url var="editURL" value="/admin-ProductNew">
																<c:param name="action" value="detail" />
																<c:param name="productId" value="${item.id}" />
															</c:url> <a class="btn btn-sm btn-primary btn-edit"
															data-toggle="tooltip" title="Edit Category"
															href='${editURL}'><i class="fa fa-pencil-square-o"
																aria-hidden="true"></i> </a> <c:url var="editURL"
																value="/admin-ProductNew">
																<c:param name="action" value="delete" />
																<c:param name="productId" value="${item.id}" />
															</c:url> <a
															class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
															data-toggle="tooltip" title="Delete Category"
															href='${editURL}'><i
																class="fa fa-trash-o bigger-110 pink" aria-hidden="true"></i>
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>
								</div>
							</div>
						</c:if>
					</div>
				</div>
			</div>

		</div>
		<!--  -->
	</div>


</body>

</html>