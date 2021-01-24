<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/common/taglib.jsp"%>


<body>

	<div id="wrapper" class="pt_product-details">
		<main id="main" role="main" class="full-width clearfix"
			style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"></a>
			<div id="primary" class="primary-content">
				<div class="container" id="product-container">
					<div class="row">
						<div class="product-col-image col-sm-6">
							<section class="product-image-container"
								aria-roledescription="carousel">
								<img itemprop="image"
									src="${pageContext.request.contextPath}/image/${item.image}"
									alt="GIVENCHY Schematics oversized T-shirt">

							</section>
						</div>
						<div class="product-col-details col-md-4 col-md-offset-1 col-sm-6">
							<div class="product-detail">

								<div class="product-label">${item.content}</div>
								<div id="product-content" class="not-downgraded">
									<h1 class="product-name" itemprop="name">${item.name}</h1>
									<div class="product-price" itemprop="offers" itemscope=""
										itemtype="http://schema.org/Offer">
										<span class="price-sales"> ${item.price}$ </span>
										 <!-- <span
											class="money-saved"> (-50&nbsp;%) </span>
											 <span
											class="price-standard"> $295.00 </span> -->
									</div>

									<div class="product-description">
										<div class="double-form-button">
											<div class="left">
												<button class="form-button secondary moredetails-btn"
													id="more-details" aria-controls="description-tab"
													aria-expanded="false">
													<h2>More details</h2>
													<i class="icon_PlusS"></i>
												</button>
												<button class="form-button secondary moredetails-btn"
													id="less-details" aria-controls="description-tab"
													aria-expanded="false">
													<h2>Less details</h2>
													<i class="icon_MinusS"></i>
												</button>
											</div>
											<div class="right hidden-xs">
												<div class="form-button secondary addtowhishlist-btn">
													<a href=""
														data-pname="GIVENCHY Schematics oversized T-shirt"
														data-pid="BM710P3002-055" class="add-to-wishlist "> <span
														class="visible-xs-block">Add to wishlist</span> <span
														class="hidden-xs">Wishlist</span> <span class="heart-icon">
															<i class="icon_Wishlist"></i> <i
															class="icon_Wishlist_Active"></i>
													</span> <span class="visually-hidden">Add to your wishlist
															 Schematics oversized T-shirt</span>
													</a>
												</div>
											</div> 
										</div>
										<div id="description-tab" class="long-description">
											<div class="short-description">${item.shortdecription }</div>
											<p class="sku">
												Product code: <span class="pid" itemprop="sku">BM710P3002-055</span>
											</p>

											Composition: 100% cotton.


											<div class="product-description-subtitle">Other</div>
											<p>Country of origin: ${item.origin }.</p>

										</div>
									</div>
									<div class="product-add-to-cart">
										<div class="inventory">
											<input type="hidden" name="pid" id="pid"
												value="BM710P3002-055">
											<div class="quantity">
												<input type="hidden" name="Quantity" id="Quantity" value="1">
											</div>
										</div>
										<input type="hidden" name="uuid" id="uuid" value=""> <input
											type="hidden" name="cartAction" id="cartAction"
											value="update">


										<!-- <div id="product-variations" class="product-variations"
											tabindex="-1">
											<h2 class="visually-hidden">Other options</h2>
											<div class="tab-headers">
												<button id="variation-Size-header"
													data-target="#variation-Size" class="tab-header"
													aria-expanded="false" aria-controls="variation-Size">
													<h2>Size</h2>
													<i class="icon_DownL"></i>
												</button>
											</div>
											<div class="tab-content">
												<div class="tab-pane" id="variation-Size">
													<section class="attribute variation-swiper-container"
														aria-roledescription="carousel">
														<div class="swiper-button-next"></div>
														<div class="swiper-button-prev"></div>
														<div
															class="value swiper-container swiper-container-horizontal">
															<div class="swiper-wrapper">
																<div class="swiper-slide">Slide 1</div>
																<div class="swiper-slide">Slide 2</div>
																<div class="swiper-slide">Slide 3</div>
																<div class="swiper-slide">Slide 4</div>
																<div class="swiper-slide">Slide 5</div>
																<div class="swiper-slide">Slide 6</div>
																<div class="swiper-slide">Slide 7</div>
																<div class="swiper-slide">Slide 8</div>
																<div class="swiper-slide">Slide 9</div>
																<div class="swiper-slide">Slide 10</div>


																<div class="selectable attrvalue swiper-slide"
																	aria-roledescription="slide"
																	style="width: 79.25px; margin-right: 12px;">
																	<a class="swatchanchor"
																		href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM70UY3002&amp;dwvar_BM70UY3002_Shared_size=4XL&amp;dwvar_BM70UY3002_Shared_color=100"
																		data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1610125434859/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY faded t-shirt &quot;,&quot;alt&quot;:&quot;GIVENCHY faded t-shirt &quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1610125434859/images/noimage-product-zoom.png&quot;}&quot;}"
																		aria-label="Select Size: 4XL"> <span class=""
																		title="Select Size: 4XL">4XL</span>
																	</a>
																</div>
															</div>
														</div>
														<div class="swiper-pagination"></div>
													</section>
													<span class="size-guide" role="button" tabindex="0"
														data-aid="SizeGuide_M_T-shirt"> Link to size guide
													</span>
												</div>
											</div>
										</div> -->
										<div class="error-message">
											<i class="icon_Warning"></i> <span>Please select a
												size</span>
										</div>
										<c:url value="/user-addToCart?product_id=${item.id}"
											var="addtoCart" />
										<a href="${ addtoCart}">

											<button id="add-to-cart" type="submit" title="Add to cart"
												value="Add to cart"
												class="form-button button--full add-to-cart disabled">
												Add to cart</button>
										</a>
									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="product-block-images container">
						<c:forEach var="item" items="${image.listResult}">

							<a href="" class="fullscreen full-mobile"> <img
								src="${pageContext.request.contextPath}/image/${item.image}" alt="">

							</a>
						</c:forEach>
					</div>
				</div>
			</div>
		</main>

	</div>


</body>