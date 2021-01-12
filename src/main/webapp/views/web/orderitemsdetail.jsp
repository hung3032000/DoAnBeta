<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>
	<main id="main" class="page-content clearfix"
		style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		<div class="cart-live-region" aria-live="polite" role="status">
		</div>
		<div class="container">
			<div id="primary" class="primary-content">
				<div class="orders-history">
					<div class="page-header">
						<h1>
							<span class="subtitle">My account</span> <span class="title">Order
								details</span>
						</h1>
					</div>
					<div class="line-item">
						<a href="${pageContext.request.contextPath}/user-orderdetail"
							id="return_to_store">Go back to your order </a>
					</div>

					<div class="customer-table-bg">
						<p class="title-detail">Order details</p>
						<div class="table-responsive">
							<table id="order_details" class="table tableOrder"
								style="width: 100%;">
								<tbody style="text-align: center;">
									<tr height="40px">
										<th class="" style="">Product Name</th>
										<th class="align-center" style="">Product ID</th>
										<th class="align-center">Price</th>
										<th class="align-center">Quantity</th>
										<th class="total align-right">Total Price</th>
									</tr>
									<c:forEach var="item" items="${orderDetail.listResult}">
										<tr height="40px" id="0" class="odd">
											<td class="" style="max-width: 300px"><a
												href="#" title="">${item.product.name }</a>
												<br> <span class="variant_acc">
													${item.product.color } / ${item.product.size } </span></td>
											<td class="sku align-center">${item.product.id }</td>
											<td class="money align-center">${item.product.price}</td>
											<td class="quantity center align-center">
												${item.quantity }</td>
											<td class="total money align-right">${item.totalPrice }</td>
										</tr>
									</c:forEach>


									<tr height="40px" class="order_summary">
										<td class="align-right" colspan="4"><b>SUBTOTAL</b></td>
										<td class="total money align-right"><b>${orderModel.totalprice }$</b></td>
									</tr>


									<tr height="40px" class="order_summary ">
										<td class="align-right" colspan="4"><b>DELIVERY
												CHARGES</b></td>
										<td class="total money align-right"><b>0$</b></td>
									</tr>




									<tr height="40px" class="order_summary order_total">
										<td class="align-right" colspan="4"><b>TOTAL</b></td>
										<td class="total money align-right"><b>${orderModel.totalprice }$ </b></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<div class="col-md-12 col-sm-12 col-xs-12 content-page">
						<div class="row">
							<div id="order_payment" class="col-md-6 col-sm-6">
								<h3 class="order_section_title">BILLING ADDRESS</h3>
								<div class="alert alert-info">
									<span class="text_status">Status:</span> <span
										class="status_pending">
										
										<c:if test="${ orderModel.status == 0}">pending</c:if> <c:if
															test="${ orderModel.status == 1}">confirmed</c:if> <c:if
															test="${ orderModel.status == -1}">canceled</c:if>
										
										
										
										</span>
								</div>
								<div class="address">
									<p class="adressName ">${orderModel.customer.title}${orderModel.customer.lName}</p>
									<p></p>
									<p>${orderModel.customer.address}</p>
									<p></p>
									
									<p>${orderModel.customer.phone}</p>


								</div>

							</div>

							<div id="order_shipping" class="col-md-6 col-sm-6">

								<h3 class="order_section_title">DELIVERY ADDRESS</h3>
								<div class="alert alert-info">
									<span class="text_status">Status:</span> <span
										class="status_not fulfilled">
										<c:if test="${ orderModel.status == 0}">not fulfilled</c:if> <c:if
															test="${ orderModel.status == 1}">fulfilled</c:if> <c:if
															test="${ orderModel.status == -1}">canceled</c:if></span>
								</div>
								<div class="address">
									<p class="adressName ">${orderModel.customer.title}${orderModel.customer.lName}</p>
									<p></p>
									<p>${orderModel.customer.address}</p>
									<p></p>
									
									<p>${orderModel.customer.phone}</p>

								</div>

							</div>

						</div>
					</div>

				</div>
			</div>
		</div>






		<div class="customer-support">
			<div class="content-asset">
				<div class="title">Cần giúp hôm?</div>
				<div class="container">
					<div class="text">
						<p class="subtitle">Client Services</p>
						Phục vụ từ 10h sáng đến 3h đêm nha mấy cưng
					</div>
					<div class="links">
						<a href="#" class="contact-popin"><i class="icon_Email"></i>Email</a>
						<a href="tel:0929363511" class="call-to-button"><i
							class="icon_Call"></i>Call</a>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
