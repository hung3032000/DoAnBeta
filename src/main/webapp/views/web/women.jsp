<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<div class="pt_storefront" id="wrapper">

		<div id="minicart-container" aria-hidden="true"></div>

		<main id="main" class="clearfix" style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"></a>
			<div class="cart-live-region" aria-live="polite" role="status">
			</div>
			<div class="wishlist-live-region" aria-live="polite" role="status">
			</div>
			<div class="content-slot slot-grid-header"></div>
			<div id="primary" class="primary-content">
				<div class="page-header">
					<h1>
						<span class="title">Women</span>
					</h1>
				</div>
				<div class="subcategory-container">
					<a class="merchandised-level-2" href="${pageContext.request.contextPath}/views/web/showproduct.jsp"> <img alt=""
						src="${pageContext.request.contextPath}/image/LandingPage-Desktop_Winter20 (8).jpg">
						<div class="text">New Arrivals</div>
					</a>
				</div>
				<div class="subcategory-container">
					<a class="merchandised-level-2" href="#"> <img alt=""
						src="${pageContext.request.contextPath}/image/LandingPage-Desktop_Winter20 (1).jpg">
						<div class="text">Ready-to-wear</div>
					</a>
				</div>
				<div class="subcategory-container">
					<a class="merchandised-level-2" href="#"> <img alt=""
						src="${pageContext.request.contextPath}/image/CATALOGUE FW20 - WOMEN DROP01 BAG_2244x1104.jpg">
						<div class="text">Bags</div>
					</a>
				</div>
				<div class="subcategory-container">
					<a class="merchandised-level-2" href="#"> <img alt=""
						src="${pageContext.request.contextPath}/image/CATALOGUE FW20 - WOMEN DROP01 SHOES_2244x1104.jpg">
						<div class="text">Shoes</div>
					</a>
				</div>
				<div class="subcategory-container">
					<a class="merchandised-level-2" href="#"> <img alt=""
						src="${pageContext.request.contextPath}/image/CATALOGUE FW20 - WOMEN DROP01 ACCESS_Recadree_2244x1104_300DPI.jpg">
						<div class="text">Accessories</div>
					</a>
				</div>
			</div>
		</main>
	</div>
</body>

</html>