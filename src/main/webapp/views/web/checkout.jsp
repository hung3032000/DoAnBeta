<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>
	<main id="main" role="main" class="primary-focus clearfix"
		style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		<div id="primary" class="primary-content">

			<div class="container">
				<div id="primary" class="primary-content">
					<div class="shipping">
						<div class="page-header">
							<h1>
								<span class="title">Place your order</span>
							</h1>
						</div>
						<div class="col-sm-6 checkout-area">
							<h2 class="no-mobile">Finalize your order</h2>
							<div class="step-area shipping ">
								<div class="step-title">
									<div class="step">1</div>
									<h3>Delivery</h3>
								</div>
								<div class="forms-container step-content">

									<div class="response-container">

										<form action='<c:url value="/user-checkout" />' method="post"
											id="dwfrm_singleshipping_shippingAddress"
											class="shipping-address-select-form" data-checkout-step="4"
											data-instore-shipping="false" novalidate="novalidate">
											<div class="checkout-box shipping-address-box">
												<h3 class="info-perso">Personal information</h3>
												<div class="form-row required" data-requiredtext=""
													data-regexinvalidmessage="" aria-required="true">

													<label class="form-label"
														for="dwfrm_singleshipping_profile_customer_email_d0rozvbtnbxp">E-mail
														address *</label>
													<div class="form-field">
														<input class="form-input email form-field required"
															type="text"
															id="dwfrm_singleshipping_profile_customer_email_d0rozvbtnbxp"
															name="dwfrm_singleshipping_profile_customer_email_d0rozvbtnbxp"
															value="${USERMODEL.email }" maxlength="50"
															data-dwname="email" autocomplete="email"
															disabled="disabled" aria-required="true">
													</div>

												</div>


												<h3>Delivery Address</h3>
												<div class="form-row  required form-row-select"
													data-requiredtext="" data-regexinvalidmessage=""
													aria-required="true">

													<label class="visually-hidden"
														for="dwfrm_singleshipping_shippingAddress_shippingAddressFields_title">Title
														*</label>
													<div class="form-field">
														<div class="form-select-wrapper">
															<select class="form-select title form-field required"
																id="dwfrm_singleshipping_shippingAddress_shippingAddressFields_title"
																name="cus_title"
																data-dwname="title" autocomplete="honorific-prefix"
																aria-required="true"><option
																	class="form-selectOption" label="${USERMODEL.title }"
																	value="${USERMODEL.title}">Title</option>
																<option class="form-selectOption" label="Mr."
																	value="Mr.">Mr.</option>
																<option class="form-selectOption" label="Mrs."
																	value="Mrs.">Mrs.</option>
																<option class="form-selectOption" label="Ms."
																	value="Ms.">Ms.</option>
																<option class="form-selectOption" label="-" value="">-</option></select>
														</div>
													</div>

												</div>
												<div
													class="form-row required empty  <c:if test="${USERMODEL.fName != null }">focus</c:if>"
													data-requiredtext="" data-regexinvalidmessage=""
													aria-required="true">

													<label class="form-label"
														for="dwfrm_singleshipping_shippingAddress_shippingAddressFields_firstname">First
														name *</label>
													<div class="form-field">
														<input class="form-input firstname form-field required"
															type="text"
															id="dwfrm_singleshipping_shippingAddress_shippingAddressFields_firstname"
															name="cus_fname"
															value="${USERMODEL.fName }" maxlength="13"
															data-dwname="firstname" autocomplete="given-name"
															aria-required="true">
													</div>

												</div>
												<div
													class="form-row required empty  <c:if test="${USERMODEL.lName != null }">focus</c:if>"
													data-requiredtext="" data-regexinvalidmessage=""
													aria-required="true">

													<label class="form-label"
														for="dwfrm_singleshipping_shippingAddress_shippingAddressFields_lastname">Last
														name *</label>
													<div class="form-field">
														<input class="form-input lastname form-field required"
															type="text"
															id="dwfrm_singleshipping_shippingAddress_shippingAddressFields_lastname"
															name="cus_lname"
															value="${USERMODEL.lName }" maxlength="13"
															data-dwname="lastname" autocomplete="family-name"
															aria-required="true">
													</div>

												</div>
												<div
													class="form-row required empty <c:if test="${USERMODEL.address != null }">focus</c:if>"
													data-requiredtext="" data-regexinvalidmessage=""
													aria-required="true">

													<label class="form-label"
														for="dwfrm_singleshipping_shippingAddress_shippingAddressFields_lastname">Start
														typing your address*</label>
													<div class="form-field">
														<input class="form-input lastname form-field required"
															type="text"
															id="dwfrm_singleshipping_shippingAddress_shippingAddressFields_lastname"
															name="cus_address"
															value="${USERMODEL.address }" maxlength="13"
															data-dwname="address" autocomplete="family-name"
															aria-required="true">
													</div>

												</div>
												<div
													class="form-row required empty"
													data-requiredtext="" data-regexinvalidmessage=""
													aria-required="true">

													<label class="form-label"
														for="dwfrm_singleshipping_shippingAddress_shippingAddressFields_lastname">Start
														typing your phone*</label>
													<div class="form-field">
														<input class="form-input lastname form-field required"
															type="text"
															id="dwfrm_singleshipping_shippingAddress_shippingAddressFields_lastname"
															name="cus_phone"
															value="" maxlength="13"
															data-dwname="phone" autocomplete="family-name"
															aria-required="true">
													</div>

												</div>
												<div class="billing-address">
													<button class="form-button shipping-address-save"
														name="dwfrm_singleshipping_shippingAddress_save">
														Check Out</button>
													<a class="checkout-back-to-cart"
														href="${pageContext.request.contextPath}/user-cart">
														Return to your cart </a>
												</div>
											</div>
											<input type="hidden" name="totalPrice" value="${order.totalPrice}">
											<input type="hidden" name="user_email" value="${USERMODEL.email }">
										</form>
									</div>
								</div>
							</div>
							<div class="step-area payment-box "></div>
						</div>
					</div>




					<div id="checkout-summary-fixed" class="col-sm-6"
						style="margin-top: 0px;">
						<div class="summary">
							<h2>Summary</h2>
							<div class="checkout-mini-cart">
								<c:forEach var="item" items="${order.listResult }">
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
														href="#"
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
													<span class="label">Product code:</span> <span
														class="value"> ${item.product.id} </span>
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
											<td>$${order.totalPrice}</td>
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
											<td class="order-value">$${order.totalPrice}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</main>
</body>
