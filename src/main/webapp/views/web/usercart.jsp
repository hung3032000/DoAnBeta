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
				<div class="page-header">
					<h1>
						<span class="title">Your cart</span>
					</h1>
					<%-- <c:if test="1==2">
					<p class="text">Your cart is empty</p>

<form class="cart-action-continue-shopping" action="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Cart-SubmitForm" method="post" name="dwfrm_cart_d0mlgmwanuty" id="continue-shopping" novalidate="novalidate">
<div class="form-row">
<button class="button-text" type="submit" value="global.continueshopping" name="dwfrm_cart_continueShopping">
CONTINUE SHOPPING
</button>
</div>
</form>
	</div>
			</c:if>		 --%>	
					<%-- <c:if test="1==2"> --%>
					<p class="text">Items in your cart are not yet reserved. Please
						proceed with your purchase to secure your items. Standard delivery
						and returns are complimentary.</p>
				</div>

				<div class="row">
					<div class="col-sm-6">
						<form action="#/Cart-SubmitForm" method="post" name="dwfrm_cart"
							id="cart-items-form" novalidate="novalidate">
							<button class="visually-hidden" type="submit"
								aria-label="update-cart" value="dwfrm_cart_updateCart"
								name="dwfrm_cart_updateCart"></button>
							<h2 class="products-title">Products</h2>
					<%-- <c:forEach> --%>
							
							<div class="line-item" data-product="BW60T4111N-100"
								data-quantity="2.0">
								<div class="product-image">

									<img src="#" alt="">
								</div>
								<ul class="product-infos">
									<li class="item-name">
										<h3>
											<a
												href="https://www.givenchy.com/us/en-US/3666082206111.html"
												title="Discover your future Oversized shirt with fold of fabric collar">
												Oversized shirt with fold of fabric collar </a>
										</h3>
									</li>
									<li class="product-infos-table">
										<div class="info-table-row">
											<span class="label">Price:</span> <span
												class="value product-price"> $1,990.00 </span>
										</div>
										<div class="info-table-row">
											<span class="label">Product code:</span> <span class="value">
												BW60T4111N-100 </span>
										</div>
										<div class="info-table-row">
											<span class="label">Color:</span> <span class="value">WHITE</span>
										</div>
										<div class="info-table-row">
											<span class="label">Size:</span> <span class="value">38</span>
										</div>
										<div class="info-table-row lineitem-quantity">
											<span class="label"> <span class="no-mobile">Quantity:</span>
												<span class="mobile-only">Qty:</span>
												<button class="lineitem-quantity-more" data-qty="1"
													name="addQuantity"
													value="+" aria-label="Add One" type="submit">
													<span class="icon_PlusS"></span>
												</button>
											</span> <span class="value"> <span class="quantity-value">2</span>
												<button class="lineitem-quantity-less" data-qty="2"
													name="removeQuantity"
													value="-" aria-label="Remove One" type="submit">
													<span class="icon_MinusS"></span>
												</button>
											</span>
										</div>
									</li>
									<li class="item-user-actions"><!-- 						<a
										href="/on/demandware.store/Sites-GIV_US-Site/en/Wishlist-Add?pid=3666082206111"
										data-pname="Oversized shirt with fold of fabric collar"
										data-pid="3666082206111" class="add-to-wishlist"> Add to
											your wishlist </a>  --> <a class="remove-product"
										href="/on/demandware.store/Sites-GIV_US-Site/en/Cart-RemoveProduct"
										data-name="dwfrm_cart_shipments_i0_items_i0_deleteProduct"
										data-pid="3666082206111"> <span> Remove<span
												class="no-mobile"> product</span>
										</span>
									</a></li>
								</ul>
							</div>
						<%-- </c:forEach> --%>
							
						
							<div class="form-row-button form-row-button-cart" align="center">

							</div>
							<input type="hidden" name="csrf_token"
								value="ovur8dL1xWEnwGnYeQ9ACVpLxtvItazGRF9e5N45DoYUsuktVb9ClrxQfUosUqk0gwPXsSxoCrMpOpzFSoJ4hYFqRKH0yKSlvjV77Ve6ZqGE4QtVi59dItUMu7_Ooc1Ve5peCfJ-R56bRRqAJgt34JwnuLGaoidOC0dmAwFjOws3XoRvUJw=">
						</form>
					</div>
					<div class="col-sm-6" id="cart-summary-fixed"
						style="margin-top: 0px;">
						<h2 class="summary-title">Summary</h2>
						<div class="cart-summary">
							<div class="cart-footer">
								<input type="hidden" name="dwfrm_cart_updateCart"
									value="dwfrm_cart_updateCart">
								<div class="cart-order-totals">
									<form
										action="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Cart-EstimateTax"
										id="dwfrm_taxestimator" method="post" novalidate="novalidate">
										<table class="order-totals-table">
											<tbody>
												<tr class="order-subtotal">
													<th scope="row">Subtotal</th>
													<td>$1,990.00</td>
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
													<td class="order-value">$1,990.00</td>
												</tr>
											</tbody>
										</table>
									</form>
								</div>
							</div>
							<form class="cart-action-checkout"
								action="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Cart-SubmitForm"
								method="post" name="dwfrm_cart_d0aioieowxvk" id="checkout-form"
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
			</div>
		</div>

	</main>
</body>
