<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>
	<main id="main" role="main" class="primary-focus clearfix"
		style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		<div id="primary" class="primary-content">

			<div class="container">




				<div class="shipping">
					<div class="page-header">
						<div class="account-edit-success">
							<i class="icon_CheckMark"></i>

							<h1>
								<span class="title">Order Success</span>


							</h1>
							<h2>
								<span class="title">Order number #${order2.id}</span> 
								<span class="title"> Thank you for your purchase!</span>
							</h2>

						</div>
					</div>
					<div class="col-sm-6 checkout-area">
						<h2 class="no-mobile">Customer Infomation</h2>
						<div class="step-area shipping ">
							<div class="step-title"></div>
							<div class="forms-container step-content">

								<div class="response-container">

									<div class="line-item" data-product="BM710P3002-055"
										data-quantity="1.0">

										<ul class="product-infos" id="cus-info">

											<li class="product-infos-table">
												<div class="info-table-row">
													<span class="value product-price">
														${cus.title}${cus.lName} </span>
												</div>

												<div class="info-table-row">
													<span class="label">Address:</span> <span class="value">${cus.address}</span>
												</div>
												<div class="info-table-row">
													<span class="label">Phone:</span> <span class="value">${cus.phone}</span>
												</div>

											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>




				 <div id="checkout-summary-fixed" class="col-sm-6"
					style="margin-top: 0px;">
					<div class="summary">
						<h2>Summary</h2>
						<div class="checkout-mini-cart">
							<c:forEach var="item" items="${cart.listResult }">
								<div class="line-item" data-product="BM710P3002-055"
									data-quantity="1.0">
									<div class="product-image">
										<img
											src="${pageContext.request.contextPath}/${item.product.image}"
											alt="">

									</div>
									<ul class="product-infos">
										<li class="item-name">
											<h3>
												<a
													href="https://www.givenchy.com/us/en-US/3665963985763.html"
													title="Discover your future GIVENCHY Schematics oversized T-shirt">
													${item.product.name} </a>
											</h3>
										</li>
										<li class="product-infos-table">
											<div class="info-table-row">
												<span class="label">Price:</span> <span
													class="value product-price"> $${item.product.price}
												</span>
											</div>
											<div class="info-table-row">
												<span class="label">Product code:</span> <span class="value">
													${item.product.id} </span>
											</div>
											<div class="info-table-row">
												<span class="label">Color:</span> <span class="value">${item.product.color}</span>
											</div>
											<div class="info-table-row">
												<span class="label">Size:</span> <span class="value">${item.product.size}</span>
											</div>
											<div class="info-table-row lineitem-qty">
												<span class="label">Qty:</span> <span class="qty-value">${item.quantity}</span>
											</div>
										</li>
									</ul>
								</div>
							</c:forEach>
						</div>
						<div class="cart-order-totals">
							<table class="order-totals-table">
								<tbody>
									<tr class="order-subtotal">
										<th scope="row">Subtotal</th>
										<td>$${cart.totalPrice}</td>
									</tr>
									<tr class="order-sales-tax">
										<th scope="row">Taxes</th>
										<td>-</td>
									</tr>
									<tr class="order-shipping">
										<th scope="row">Delivery charges</th>
										<td>$0.00</td>
									</tr>
									<tr class="order-total">
										<th scope="row">Total</th>
										<td class="order-value">$${cart.totalPrice}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div> 
			</div>
		</div>

	</main>
</body>
