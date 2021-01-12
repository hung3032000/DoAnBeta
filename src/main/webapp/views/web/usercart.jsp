<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>

	<main id="main" role="main" class="full-width clearfix"
		style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		<div class="cart-live-region" aria-live="polite" role="status">
		</div>
		<div id="primary" class="primary-content">

			<div class="container">
				<!--  -->



				<!--  -->
				<c:if test="${empty order.totalProduct}">
					<div class="page-header">
						<h1>
							<span class="title">Your cart</span>
						</h1>

						<p class="text">Your cart is empty</p>

						<form class="cart-action-continue-shopping"
							action="${pageContext.request.contextPath}/trang-chu"
							method="post" name="dwfrm_cart_d0mlgmwanuty"
							id="continue-shopping" novalidate="novalidate">
							<div class="form-row">
								<button class="button-text" type="submit"
									value="global.continueshopping"
									name="dwfrm_cart_continueShopping">CONTINUE SHOPPING</button>
							</div>
						</form>
					</div>
				</c:if>

				<c:if test="${not empty order.totalProduct}">
					<div class="page-header">
						<h1>
							<span class="title">Your cart</span>
						</h1>
						<p class="text">Items in your cart are not yet reserved.
							Please proceed with your purchase to secure your items. Standard
							delivery and returns are complimentary.</p>
					</div>

					<div class="row">
						<div class="col-sm-6">


							<h2 class="products-title">Products</h2>
							<c:forEach items="${order.listResult}" var="item">
								<form
									action="${pageContext.request.contextPath}/user-cart?action=update"
									method="post" name="dwfrm_cart" id="cart-items-form"
									novalidate="novalidate">
									<input type="hidden" value="${item.product.id }"
										name="product_id" />
									<div class="line-item" data-product="BW60T4111N-100"
										data-quantity="2.0">
										<div class="product-image">

											<img
												src="${pageContext.request.contextPath}/image/${item.product.image}"
												alt="">
										</div>
										<ul class="product-infos">
											<li class="item-name">
												<h3>
													<a href="#"
														title="Discover your future Oversized shirt with fold of fabric collar">
														${item.product.name } </a>
												</h3>
											</li>
											<li class="product-infos-table">
												<div class="info-table-row">
													<span class="label">Price:</span> <span
														class="value product-price"> $${item.product.price}
													</span>
												</div>
												<div class="info-table-row">
													<span class="label">Product code:</span> <span
														class="value"> ${item.product.id } </span>
												</div>
												<div class="info-table-row">
													<span class="label">Color:</span> <span class="value">${item.product.color }</span>
												</div>
												<div class="info-table-row">
													<span class="label">Size:</span> <span class="value">${item.product.size }</span>
												</div>
												<div class="info-table-row lineitem-quantity">
													<span class="label"> <span class="no-mobile">Quantity:</span>

														<span class="mobile-only">Qty:</span>
														<button class="lineitem-quantity-more" data-qty="1"
															name="Quantity" value="+" aria-label="Add One"
															type="submit">
															<span class="icon_PlusS"></span>
														</button>
													</span> <span class="value"> <span class="quantity-value">${item.quantity}</span>
														<button class="lineitem-quantity-less" data-qty="2"
															name="Quantity" value="-" aria-label="Remove One"
															type="submit">
															<span class="icon_MinusS"></span>
														</button>
													</span>
												</div>

											</li>
											<li class="item-user-actions">
												<!-- 						<a
										href="/on/demandware.store/Sites-GIV_US-Site/en/Wishlist-Add?pid=3666082206111"
										data-pname="Oversized shirt with fold of fabric collar"
										data-pid="3666082206111" class="add-to-wishlist"> Add to
											your wishlist </a>  --> <a class="remove-product"
												href='<c:url value="/user-addToCart?page=usercart&action=delete&product_id=${item.product.id }"/>'
												data-name="dwfrm_cart_shipments_i0_items_i0_deleteProduct"
												data-pid="3666082206111"> <span> Remove<span
														class="no-mobile"> product</span>
												</span>
											</a>
											</li>
										</ul>
									</div>
								</form>
							</c:forEach>
							<div class="form-row-button form-row-button-cart" align="center"></div>
						</div>
						<div class="col-sm-6" id="cart-summary-fixed"
							style="margin-top: 0px;">
							<h2 class="summary-title">Summary</h2>
							<div class="cart-summary">
								<div class="cart-footer">
									<input type="hidden" name="dwfrm_cart_updateCart"
										value="dwfrm_cart_updateCart">
									<div class="cart-order-totals">

										<table class="order-totals-table">
											<tbody>
												<tr class="order-subtotal">
													<th scope="row">Subtotal</th>
													<td>$${order.totalPrice}</td>
												</tr>
												<tr class="order-estimate-tax">
													<th scope="row">Estimated tax by zipcode:</th>
													<td>$0.00</td>
												</tr>
												<tr class="order-tax-estimator">

													<td></td>
												</tr>
												<tr class="order-country-zone">
													<th scope="row">USA</th>
													<td></td>
												</tr>
												<tr class="order-total">
													<th scope="row">Total</th>
													<td class="order-value">$${order.totalPrice}</td>
												</tr>
											</tbody>
										</table>

									</div>
								</div>
								<form class="cart-action-checkout"
									action="${pageContext.request.contextPath}/user-checkoutinf"
									method="post" name="dwfrm_cart_d0aioieowxvk" id="checkoutinf-form"
									data-checkout-step="null" novalidate="novalidate">
									<fieldset>
										<legend class="visually-hidden">Order</legend>
										<button class="form-button" type="submit" value="Order"
											name="dwfrm_cart_checkoutCart">Order</button>



									</fieldset>

								</form>
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</div>

	</main>
</body>
