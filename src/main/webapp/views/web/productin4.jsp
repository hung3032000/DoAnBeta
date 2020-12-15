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
									src="${pageContext.request.contextPath}/${item.image}"
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
										<span class="price-sales">${item.price}$ </span>
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
															GIVENCHY Schematics oversized T-shirt</span>
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
													<input type="hidden" name="Quantity" id="Quantity"
														value="1">
												</div>
											</div>
											<input type="hidden" name="uuid" id="uuid" value="">
											<input type="hidden" name="cartAction" id="cartAction"
												value="update">


											<div id="product-variations" class="product-variations"
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
															<button class="swiper-button-prev"
																aria-label="Previous Size" style="">
																<i class="icon_BackL"></i>
															</button>
															<button class="swiper-button-next" aria-label="Next Size"
																style="">
																<i class="icon_NextL"></i>
															</button>
															<div
																class="value swiper-container swiper-container-horizontal">
																<div class="swatches size swiper-wrapper"
																	style="transition-duration: 0ms;">
																	<div class="selectable attrvalue swiper-slide"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=XXS&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: XXS (Unavailable)"> <span
																			class="unavailable-size"
																			title="Select Size: XXS (Unavailable)">XXS</span>
																		</a> <span class="unavailable">Find in store</span>
																	</div>
																	<div class="selectable attrvalue swiper-slide"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=XS&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: XS (Unavailable)"> <span
																			class="unavailable-size"
																			title="Select Size: XS (Unavailable)">XS</span>
																		</a> <span class="unavailable">Find in store</span>
																	</div>
																	<div class="selectable attrvalue swiper-slide"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=S&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: S"> <span class=""
																			title="Select Size: S">S</span>
																		</a>
																	</div>
																	<div
																		class="selectable attrvalue swiper-slide swiper-slide-prev"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=M&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: M"> <span class=""
																			title="Select Size: M">M</span>
																		</a>
																	</div>
																	<div
																		class="selectable attrvalue swiper-slide swiper-slide-active"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=L&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: L"> <span class=""
																			title="Select Size: L">L</span>
																		</a>
																	</div>
																	<div
																		class="selectable attrvalue swiper-slide swiper-slide-next"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=XL&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: XL"> <span class=""
																			title="Select Size: XL">XL</span>
																		</a>
																	</div>
																	<div class="selectable attrvalue swiper-slide"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=XXL&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: XXL"> <span class=""
																			title="Select Size: XXL">XXL</span>
																		</a>
																	</div>
																	<div class="selectable attrvalue swiper-slide"
																		aria-roledescription="slide">
																		<a class="swatchanchor"
																			href="https://www.givenchy.com/on/demandware.store/Sites-GIV_US-Site/en/Product-Variation?pid=BM710P3002-055&amp;dwvar_BM710P3002-055_Shared_size=3XL&amp;dwvar_BM710P3002-055_Shared_color=055"
																			data-lgimg="{&quot;url&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-detail.png&quot;,&quot;title&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;alt&quot;:&quot;GIVENCHY Schematics oversized T-shirt&quot;,&quot;hires&quot;:&quot;/on/demandware.static/Sites-GIV_US-Site/-/en/v1607604959073/images/noimage-product-zoom.png&quot;}&quot;}"
																			aria-label="Select Size: 3XL"> <span class=""
																			title="Select Size: 3XL">3XL</span>
																		</a>
																	</div>
																</div>
															</div>
															<div class="swiper-pagination" style="display: block;"></div>
														</section>
													</div>
												</div>
											</div>
											<div class="error-message">
												<i class="icon_Warning"></i> <span>Please select a
													size</span>
											</div>
											<c:url value="/user-cart?product_id=${item.id}" var="addtoCart"/>
											<a href="${ addtoCart}">
								
											<button id="add-to-cart" type="submit" title="Add to cart"
												value="Add to cart"
												class="form-button button--full add-to-cart disabled">
												Add to cart</button></a>
										</div>

								</div>
							</div>
						</div>
					</div>

					<div class="product-block-images container">
						<c:forEach var="image" items="${image.listResult}">

							<a href="" class="fullscreen full-mobile"> <img
								src="${pageContext.request.contextPath}/${image.image}" alt="">

							</a>
						</c:forEach>
					</div>
				</div>
			</div>
		</main>

	</div>


</body>