<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<body>
	<main id="main" class="clearfix" style="margin-top: 128px">
		<a id="mainContent" tabindex="-1"></a>

		<div class="cart-live-region" aria-live="polite" role="status"></div>
		<div class="wishlist-live-region" aria-live="polite" role="status"></div>
		<div class="content-slot slot-grid-header"></div>
		<div id="primary" class="primary-content">
			<div class="page-header">
				<h1>
					<span class="title">New In</span>
				</h1>
			</div>
			<div class="search-results-container">
				<div class="refinements">
					<h2 class="visually-hidden">Refine Your Results By:</h2>
					<div class="refinements-tabs">
						<div class="filters-tabs" id="filters-tabs">
							<div class="container">
								<a href="#" class="filter-link" role="button"
									data-filter-name="Category"
									data-filter-name-active="Category (Active filter)"
									data-filter-id="1" title="Refine Your Results By: Category"
									aria-expanded="false" aria-controls="filter-Category"> <span>Category</span>
								</a> <a href="#" class="filter-link sort-by" role="button"
									data-filter-name="Sort by"
									data-filter-name-active="Sort by (Active filter)"
									data-filter-id="98" title="Sort by" aria-expanded="false"
									aria-controls="filter-sort-by"> <span>Sort by</span>
								</a> <a href="#" class="filter-link" id="filter-link" role="button"
									data-filter-name="Filters"
									data-filter-name-active="Filters (Active filter)"
									aria-expanded="false" aria-controls="filter-tag"> <span>Filters</span>
								</a> <span class="swiper-slide"> <span> Filters </span>
								</span> <a href="#" class="swiper-slide" role="button"
									data-filter-name="Color"
									data-filter-name-active="Color (Active filter)"
									data-filter-id="2" title="Refine Your Results By: Color"
									aria-expanded="false" aria-controls="filter-Color"> <span>Color</span>
								</a> <a href="#" class="swiper-slide" role="button"
									data-filter-name="Size"
									data-filter-name-active="Size (Active filter)"
									data-filter-id="3" title="Refine Your Results By: Size"
									aria-expanded="false" aria-controls="filter-Size"> <span>Size</span>
								</a> <a href="#" class="swiper-slide" role="button"
									data-filter-name="Season"
									data-filter-name-active="Season (Active filter)"
									data-filter-id="4" title="Refine Your Results By: Season"
									aria-expanded="false" aria-controls="filter-Season"> <span>Season</span>
								</a> <a href="#" class="swiper-slide same-day-link" role="button"
									data-filter-id="101" data-filter-name="Same Day Delivery"
									data-filter-name-active="Same Day Delivery (Active filter)"
									title="Same Day Delivery" aria-expanded="false"
									aria-controls="filter-same-day"> <span>Same Day
										Delivery</span>
								</a> <a href="#" class="swiper-slide browse-by-store-link"
									role="button" data-filter-id="99"
									data-filter-name="Browse by store"
									data-filter-name-active="Browse by store (Active filter)"
									title="Browse by store" aria-expanded="false"
									aria-controls="filter-browse-by-store"> <span>Browse
										by store</span>
								</a>
							</div>

						</div>
					</div>
			
				</div>
			</div>
			<div id="filters-overlay"></div>
			<div class="container">
				<div class="category-box">
					<div class="search-result-content productgrid">
						<div class="inf-scroll-products">

							<p>${totalItems}Products</p>


						</div>
						<div class="productListInfos hidden"></div>
					</div>
					<ul
						class="search-result-items tiles-container js-slv-product-grid row"
						data-columns="">

						<c:forEach var="item" items="${model.listResult}">
							<li class="grid-tile js-slv-elements col-xs-3 col-sm-6 col-lg-3">
								<div class="product-tile" id="${item.id}"
									data-itemid="BWC08N13FP-001" data-gtmproductid="BWC08N13FP"
									data-availability="IN_STOCK">
									<figure class="product-image">
										<a class="thumb-link"
											href="${pageContext.request.contextPath}/views/web/producin4.jsp">
											<picture class="thumb-img"> <img
												src="${pageContext.request.contextPath}/image/BB50F2B0WD051-01-01.jpg" />
											</picture> <span class="flag"> ${item.content} </span>
											<figcaption class="thumb-caption">
												<div class="product-infos">
													<div class="product-name">${item.name}</div>
													<div class="product-pricing">
														<div class="product-price" itemprop="offers" itemscope=""
															itemtype="#">
															<span class="price-sales"> ${item.price} </span>
														</div>
													</div>
													<div class="product-promo"></div>
												</div>
											</figcaption>
										</a>
										<a href=""
											data-pname="Coat in wool and cashmere with 4G buttons and chain"
											data-pid="BWC08N13FP-001" class="add-to-wishlist"> <i
											class="icon_Wishlist"></i> <i class="icon_Wishlist_Active"></i>
											<span class="visually-hidden">Add to your wishlist
												Coat in wool and cashmere with 4G buttons and chain</span>
										</a>
									</figure>
								</div>
							</li>
						</c:forEach>
						<c:forEach var="item" items="${category.listResult}">
							<p>item.name</p>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div class="pagination">
  <a href="#">&laquo;</a>
  <a href="#">1</a>
  <a href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <a href="#">&raquo;</a>
</div>
	</main>
	<div class="search-promo"></div>
	<c:forEach var="item" items="${model.listResult}">
		<script type="text/javascript">
	    $("#${item.id}").hover(function () {
	        if ($("#${item.id}").hasClass("hover")) {
	          $("#${item.id}").removeClass("hover");
	        } else {
	          $("#${item.id}").addClass("hover");
	        }
	      });
</script>
	</c:forEach>
</body>
