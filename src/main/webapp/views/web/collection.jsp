<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
	<div class="pt_storefront" id="wrapper">


		<div id="minicart-container" aria-hidden="true"></div>


		<main id="main" role="main" class="full-width clearfix"
			style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"></a>
			<div class="cart-live-region" aria-live="polite" role="status">
			</div>
			<div id="primary" class="primary-content">
				<div class="collections">
					<div class="banner">
						<picture class=""> </picture>
					</div>
					<div class="page-header container"></div>
					<div class="collection-container">
						<div class="collection-content">
							<h3>Fall Winter 2020</h3>
							<div class="image-content">
								<div class="background">
									<picture class=""> <img
										src="${pageContext.request.contextPath}/image/CollectionLandingPageFall20_desktop.jpg"
										alt="Fall 2020"> </picture>
								</div>
								<a class="content" href="shop.jsp">
									<h2>Fall 2020</h2>
								</a>
							</div>
							<div class="image-content">
								<div class="background">
									<picture class=""> <img
										src="${pageContext.request.contextPath}/image/Collection page WINTER20 MEN desktop.jpg"
										alt="Men Winter"> </picture>
								</div>
								<a class="content" href="#">
									<h2>Men Winter</h2>
								</a>
							</div>
							<div class="image-content">
								<div class="background">
									<picture class=""> <img
										src="${pageContext.request.contextPath}/image/Full_WFW20show_Desktop.jpg" alt="Women Winter">
									</picture>
								</div>
								<a class="content" href="#">
									<h2>Women Winter</h2>
								</a>
							</div>
						</div>
						<div class="collection-content">
							<h3>Spring Summer 2021</h3>
							<div class="image-content">
								<div class="background">
									<picture class=""> <img
										src="${pageContext.request.contextPath}/image/Collection-Land-Desktop.jpg" alt="Summer 2021">
									</picture>
								</div>
								<a class="content" href="#">
									<h2>Summer 2021</h2>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
