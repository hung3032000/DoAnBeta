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
			<nav class="account-navigation" aria-label="My account">
				<ul>
					<li class=""><a
						href="${pageContext.request.contextPath}/views/web/accountoverview.jsp">
							Account overview </a></li>
					<li class="order-history "><a
						href="${pageContext.request.contextPath}/user-orderdetail">
							Orders </a></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/user-update?action=show"
						title="Personal details (Active page)"> Personal details </a></li>
					<li><a
						href="${pageContext.request.contextPath}/login?action=logout">Logout</a>
				</ul>
			</nav>
		</div>
		<div id="primary" class="primary-content">
			<div class="orders-history">
				<div class="page-header">
					<h1>
						<span class="subtitle">My account</span> <span class="title">Orders</span>
					</h1>
				</div>
				<c:if test="${order2.listResult.size() == 0 }">
					<div class="container no-orders">No order at this time</div>

				</c:if>
				<c:if test="${order2.listResult.size() != 0 }">
					<div class="container">
					<div class="customer-table-wrap">
						<div class="customer_order customer-table-bg">

							<p class="title-detail" id="title-detail">Latest order list</p>
							<div class="table-responsive">
								<table class="table" id="table-detail">
									<thead>
										<tr>
											<th class="order_number align-center">Order ID</th>
											<th class="date align-center">Created at</th>
											<th class="total align-right">Total Price</th>
											<th class="payment_status align-center">Status</th>


										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${order2.listResult}">
											<tr class="odd "
												style="text-align: center; border-bottom: solid 1px;">
												<td class="align-center"><a
													href='<c:url value="/user-orderItemsDetail?order_id=${item.id}" />'
													title="">#${ item.id}</a></td>

												<td class="align-center"><span>${ item.created_at}</span></td>
												<td class="align-right"><span class="total money">${ item.totalprice}$</span></td>
												<td class="align-center"><span class="status_pending">

														<c:if test="${ item.status == 1}">pending</c:if> <c:if
															test="${ item.status == 0}">confirmed</c:if> <c:if
															test="${ item.status == -1}">canceled</c:if>
												</span></td>


											</tr>
										</c:forEach>
									</tbody>
								</table>


							</div>
						</div>
					</div>
					</div>
				</c:if>
				
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
		</div>
	</main>
</body>
