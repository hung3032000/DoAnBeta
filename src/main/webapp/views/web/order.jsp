<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<li class="order-history "><a href="${pageContext.request.contextPath}/views/web/order.jsp"> Orders </a></li>
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
				<div class="container no-orders">No order at this time</div>
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
