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
						<!-- PAGE CONTENT BEGINS -->
						<div class="space-6"></div>
						<c:if test="${not empty messageResponse}">
							<div class="alert alert-${alert}">${messageResponse}</div>
						</c:if>
						<form id="formSubmit"
							action="${pageContext.request.contextPath}/admin-OrderNew"
							method="post">
							<div class="row">
								<div class="col-sm-10 col-sm-offset-1">
									<div class="widget-box transparent">
										<div class="widget-header widget-header-large">
											<h3 class="widget-title grey lighter">
												<i class="ace-icon fa fa-leaf green"></i> Customer Order
											</h3>

											<div class="widget-toolbar no-border invoice-info">
												<span class="invoice-info-label">Order:</span> <span
													class="red">#${orderModel.id }</span> <br /> <span
													class="invoice-info-label">Date:</span> <span class="blue">${orderModel.created_at }</span>
											</div>

											<div class="widget-toolbar hidden-480">
												<a href="#"> <i class="ace-icon fa fa-print"></i>
												</a>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main padding-24">
												<div class="row">
													<div class="col-sm-6">
														<div class="row">
															<div
																class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
																<b>BILLING ADDRESS</b>
															</div>
														</div>

														<div>
															<ul class="list-unstyled spaced">


																<li><i class="ace-icon fa fa-caret-right blue"></i>Customer
																	Name: <b class="red">${orderModel.customer.title}${orderModel.customer.lName}</b></li>

																<li><i class="ace-icon fa fa-caret-right blue"></i>Street,
																	City: <b class="red">${orderModel.customer.address}</b></li>

																<li><i class="ace-icon fa fa-caret-right blue"></i>
																	Phone: <b class="red">${orderModel.customer.phone}</b></li>

																<li class="divider"></li>


															</ul>
														</div>
													</div>
													<!-- /.col -->

													<div class="col-sm-6">
														<div class="row">
															<div
																class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
																<b>DELIVERY ADDRESS</b>
															</div>
														</div>

														<div>
															<ul class="list-unstyled  spaced">
																<li><i class="ace-icon fa fa-caret-right blue"></i>Customer
																	Name: <b class="red">${orderModel.customer.title}${orderModel.customer.lName}</b></li>

																<li><i class="ace-icon fa fa-caret-right blue"></i>Street,
																	City: <b class="red">${orderModel.customer.address}</b></li>

																<li><i class="ace-icon fa fa-caret-right blue"></i>
																	Phone: <b class="red">${orderModel.customer.phone}</b></li>

																<li class="divider"></li>
															</ul>
														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->

												<div class="space"></div>

												<div>
													<table class="table table-striped table-bordered">
														<thead>
															<tr>

																<th>Product</th>
																<th class="hidden-xs">Price</th>
																<th>Quantity</th>
																<th class="hidden-480">Discount</th>
																<th>Price</th>
																<th>Total</th>
															</tr>
														</thead>

														<tbody>
															<c:forEach var="item" items="${orderDetail.listResult}">
																<tr>


																	<td><a href="#">${item.product.name }</a><br>
																		<span class="variant_acc"> ${item.product.color }
																			/ ${item.product.size } </span></td>
																	<td class="hidden-xs">${item.product.price}</td>
																	<td>${item.quantity }</td>
																	<td class="hidden-480">---</td>
																	<td>${item.product.price}</td>
																	<td>${item.totalPrice}</td>
																</tr>

															</c:forEach>
														</tbody>
													</table>
												</div>

												<div class="hr hr8 hr-double hr-dotted"></div>

												<div class="row">
													<div class="col-sm-5 pull-right">
														<h4 class="pull-right">
															Total amount : <span class="red">${orderModel.totalprice }$</span>
														</h4>
													</div>


												</div>
												<div class="clearfix form-actions">
													<div class="col-md-offset-3 col-md-9">
														<button class="btn btn-white btn-info btn-bold"
															type="submit" value="Confirm Order" name="action">
															<i class="ace-icon fa fa-check bigger-110 blue"></i>
															Confirm
														</button>


														<button class="btn btn-white btn-default btn-round"
															style="left: 50%;" type="submit" value="Cancel Order" name="action">
															<i class="ace-icon fa fa-times red2"></i> Cancel
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
							<input type="hidden" value="${orderModel.id}" id="id" name="Orderid" />
						</form>
						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
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
