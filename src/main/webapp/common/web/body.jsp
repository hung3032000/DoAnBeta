<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>
	<div id="js-overlay"></div>
	<div id="minicart-container" aria-hidden="false" class="">
		<div class="minicart-content">
			<div class="minicart-close">
				<button title="Close" tabindex="0">
					<span><i class="icon_Close"></i></span>
				</button>
			</div>
			<div class="minicart-title">
				<p>
					<span class="title"> Your cart </span> <span class="bag-quantity">
						<i class="icon_Bag"></i> ${item.quantity}
					</span>
				</p>
			</div>

			<ul class="minicart-products">
			<c:forEach var="item" items="${order.listResult}">
					<li class="minicart-product" data-qty="Quantity: value=1, unit=">
						<div class="minicart-product-image">
							<img src="${pageContext.request.contextPath}/${item.product.image}" alt="Lỗi ảnh">
						</div>
						<div class="minicart-product-details">
							<a class="minicart-product-name" href="#"
								title="Discover your future {0}" tabindex="0"> ${item.product.name } </a>
							<div class="minicart-product-color">
								<span class="label">Color:</span> <span class="value">LIGHT
									GREY MELANGE</span>
							</div>
							<div class="minicart-product-size">
								<span class="label">Size:</span> <span class="value">L</span>
							</div>
							<div class="minicart-product-qty">
								<span class="label">Qty:</span>
								
								 <input class="sc-cart-item-qty" name="product_quantity" min="1" value="${item.quantity}" type="number">
							</div>
							<div class="minicart-product-pricing">
								<span class="label"> Price: </span> <span class="value">
									${item.product.price} </span>
							</div>
							<a class="remove-product" href="#/Cart-RemoveProduct"
								data-name="dwfrm_cart_shipments_i0_items_i0_deleteProduct"
								data-pid="3665963985787" tabindex="0"> <span> Update Item </span>
							</a>
							<a class="remove-product" href="#/Cart-RemoveProduct"
								data-name="dwfrm_cart_shipments_i0_items_i0_deleteProduct"
								data-pid="3665963985787" tabindex="0"> <span> Remove
									Item </span>
							</a> 
						</div>
					</li>
	</c:forEach>
			</ul>
			<div class="minicart-summary">
				<div class="minicart-total">
					<span class="label">Total</span> <span class="value">$630.00</span>
				</div>
				<div class="minicart-buttons">
					<div class="form-row-button">
						<a class="form-button checkout-start" href="${pageContext.request.contextPath}/views/web/checkout.jsp"
							title="Order" tabindex="0">Order</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
