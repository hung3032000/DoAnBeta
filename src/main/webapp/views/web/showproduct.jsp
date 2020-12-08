<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<body>
	<div class="pt_storefront" id="wrapper">


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
						<!-- <div class="filters">
							<div class="filters-content container">
								<div class="refinement refinement-single">
									<ul></ul>
								</div>
							</div>
							<div id="filter-sort-by" class="filters-content container"
								data-filter-id="98">
								<div class="refinement" data-filter-name="Sort by">
									<div class="refinement-content standard swiper-container">
										<ul class="swiper-wrapper">
											<li class=""><a class="refinement-link sorting-link"
												data-sorting-rule-id="New in"
												href="#?srule=New%20in&amp;include=page-element"
												title="New in">New in</a></li>
											<li class=""><a class="refinement-link sorting-link"
												data-sorting-rule-id="Price ascending"
												href="#?srule=Price%20ascending&amp;include=page-element"
												title="Price Low to High">Price Low to High</a></li>
											<li class=""><a class="refinement-link sorting-link"
												data-sorting-rule-id="Price descending"
												href="#?srule=Price%20descending&amp;include=page-element"
												title="Price High to Low">Price High to Low</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div id="filter-Category" class="filters-content container"
								data-filter-name="Category" data-filter-id="1">
								<div data-filter-name="Category" class="refinement Category">
									<div class="refinement-content standard swiper-container">
										<ul class="swiper-wrapper Category">
											<li class="swiper-slide"><a class="refinement-link"
												data-redirect="true" data-refinement-value="New In"
												id="swatch-new_in" href="#women/new-arrivals/new-in/"
												title="Refine by Category: New In"> New In </a></li>
											<li class="swiper-slide"><a class="refinement-link"
												data-redirect="true"
												data-refinement-value="Antigona Celebration"
												id="swatch-antigona_celebration"
												href="#women/new-arrivals/antigona-celebration/"
												title="Refine by Category: Antigona Celebration">
													Antigona Celebration </a></li>
											<li class="swiper-slide"><a class="refinement-link"
												data-redirect="true" data-refinement-value="Micro Bags"
												id="swatch-micro_bags"
												href="#women/new-arrivals/micro-bags/"
												title="Refine by Category: Micro Bags"> Micro Bags </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div id="filter-Color" class="filters-content container"
								data-filter-name="Color" data-filter-id="2">
								<div data-filter-name="color" class="refinement color">
									<div class="refinement-content standard swiper-container">
										<ul class="swiper-wrapper color">
											<li class="swiper-slide swatch-blue"><a
												class="refinement-link" data-refinement-value="Blue"
												id="swatch-blue" href="#?prefn1=color&amp;prefv1=Blue"
												title="Refine by Color: Blue"> Blue </a></li>
											<li class="swiper-slide swatch-black"><a
												class="refinement-link" data-refinement-value="Black"
												id="swatch-black" href="#?prefn1=color&amp;prefv1=Black"
												title="Refine by Color: Black"> Black </a></li>
											<li class="swiper-slide swatch-red"><a
												class="refinement-link" data-refinement-value="Red"
												id="swatch-red" href="#?prefn1=color&amp;prefv1=Red"
												title="Refine by Color: Red"> Red </a></li>
											<li class="swiper-slide swatch-grey"><a
												class="refinement-link" data-refinement-value="Grey"
												id="swatch-grey" href="#?prefn1=color&amp;prefv1=Grey"
												title="Refine by Color: Grey"> Grey </a></li>
											<li class="swiper-slide swatch-white"><a
												class="refinement-link" data-refinement-value="White"
												id="swatch-white" href="#?prefn1=color&amp;prefv1=White"
												title="Refine by Color: White"> White </a></li>
											<li class="swiper-slide swatch-pink"><a
												class="refinement-link" data-refinement-value="Pink"
												id="swatch-pink" href="#?prefn1=color&amp;prefv1=Pink"
												title="Refine by Color: Pink"> Pink </a></li>
											<li class="swiper-slide swatch-yellow"><a
												class="refinement-link" data-refinement-value="Yellow"
												id="swatch-yellow" href="#?prefn1=color&amp;prefv1=Yellow"
												title="Refine by Color: Yellow"> Yellow </a></li>
											<li class="swiper-slide swatch-brown"><a
												class="refinement-link" data-refinement-value="Brown"
												id="swatch-brown" href="#?prefn1=color&amp;prefv1=Brown"
												title="Refine by Color: Brown"> Brown </a></li>
											<li class="swiper-slide swatch-light_red"><a
												class="refinement-link" data-refinement-value="LIGHT RED"
												id="swatch-light_red"
												href="#?prefn1=color&amp;prefv1=LIGHT%20RED"
												title="Refine by Color: LIGHT RED"> LIGHT RED </a></li>
											<li class="swiper-slide swatch-poppy_red"><a
												class="refinement-link" data-refinement-value="POPPY RED"
												id="swatch-poppy_red"
												href="#?prefn1=color&amp;prefv1=POPPY%20RED"
												title="Refine by Color: POPPY RED"> POPPY RED </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div id="filter-Size" class="filters-content container"
								data-filter-name="Size" data-filter-id="3">
								<div data-filter-name="size" class="refinement size">
									<div class="refinement-content standard swiper-container">
										<ul class="swiper-wrapper size">
											<li class="swiper-slide swatch-24"><a
												class="refinement-link" data-refinement-value="24"
												id="swatch-24" href="#?prefn1=size&amp;prefv1=24"
												title="Refine by Size: 24"> 24 </a></li>
											<li class="swiper-slide swatch-25"><a
												class="refinement-link" data-refinement-value="25"
												id="swatch-25" href="#?prefn1=size&amp;prefv1=25"
												title="Refine by Size: 25"> 25 </a></li>
											<li class="swiper-slide swatch-26"><a
												class="refinement-link" data-refinement-value="26"
												id="swatch-26" href="#?prefn1=size&amp;prefv1=26"
												title="Refine by Size: 26"> 26 </a></li>
											<li class="swiper-slide swatch-27"><a
												class="refinement-link" data-refinement-value="27"
												id="swatch-27" href="#?prefn1=size&amp;prefv1=27"
												title="Refine by Size: 27"> 27 </a></li>
											<li class="swiper-slide swatch-28"><a
												class="refinement-link" data-refinement-value="28"
												id="swatch-28" href="#?prefn1=size&amp;prefv1=28"
												title="Refine by Size: 28"> 28 </a></li>
											<li class="swiper-slide swatch-29"><a
												class="refinement-link" data-refinement-value="29"
												id="swatch-29" href="#?prefn1=size&amp;prefv1=29"
												title="Refine by Size: 29"> 29 </a></li>
											<li class="swiper-slide swatch-30"><a
												class="refinement-link" data-refinement-value="30"
												id="swatch-30" href="#?prefn1=size&amp;prefv1=30"
												title="Refine by Size: 30"> 30 </a></li>
											<li class="swiper-slide swatch-31"><a
												class="refinement-link" data-refinement-value="31"
												id="swatch-31" href="#?prefn1=size&amp;prefv1=31"
												title="Refine by Size: 31"> 31 </a></li>
											<li class="swiper-slide swatch-32"><a
												class="refinement-link" data-refinement-value="32"
												id="swatch-32" href="#?prefn1=size&amp;prefv1=32"
												title="Refine by Size: 32"> 32 </a></li>
											<li class="swiper-slide swatch-34"><a
												class="refinement-link" data-refinement-value="34"
												id="swatch-34" href="#?prefn1=size&amp;prefv1=34"
												title="Refine by Size: 34"> 34 </a></li>
											<li class="swiper-slide swatch-34_5"><a
												class="refinement-link" data-refinement-value="34.5"
												id="swatch-34_5" href="#?prefn1=size&amp;prefv1=34.5"
												title="Refine by Size: 34.5"> 34.5 </a></li>
											<li class="swiper-slide swatch-35"><a
												class="refinement-link" data-refinement-value="35"
												id="swatch-35" href="#?prefn1=size&amp;prefv1=35"
												title="Refine by Size: 35"> 35 </a></li>
											<li class="swiper-slide swatch-35_5"><a
												class="refinement-link" data-refinement-value="35.5"
												id="swatch-35_5" href="#?prefn1=size&amp;prefv1=35.5"
												title="Refine by Size: 35.5"> 35.5 </a></li>
											<li class="swiper-slide swatch-36"><a
												class="refinement-link" data-refinement-value="36"
												id="swatch-36" href="#?prefn1=size&amp;prefv1=36"
												title="Refine by Size: 36"> 36 </a></li>
											<li class="swiper-slide swatch-36_5"><a
												class="refinement-link" data-refinement-value="36.5"
												id="swatch-36_5" href="#?prefn1=size&amp;prefv1=36.5"
												title="Refine by Size: 36.5"> 36.5 </a></li>
											<li class="swiper-slide swatch-37"><a
												class="refinement-link" data-refinement-value="37"
												id="swatch-37" href="#?prefn1=size&amp;prefv1=37"
												title="Refine by Size: 37"> 37 </a></li>
											<li class="swiper-slide swatch-37_5"><a
												class="refinement-link" data-refinement-value="37.5"
												id="swatch-37_5" href="#?prefn1=size&amp;prefv1=37.5"
												title="Refine by Size: 37.5"> 37.5 </a></li>
											<li class="swiper-slide swatch-38"><a
												class="refinement-link" data-refinement-value="38"
												id="swatch-38" href="#?prefn1=size&amp;prefv1=38"
												title="Refine by Size: 38"> 38 </a></li>
											<li class="swiper-slide swatch-38_5"><a
												class="refinement-link" data-refinement-value="38.5"
												id="swatch-38_5" href="#?prefn1=size&amp;prefv1=38.5"
												title="Refine by Size: 38.5"> 38.5 </a></li>
											<li class="swiper-slide swatch-39"><a
												class="refinement-link" data-refinement-value="39"
												id="swatch-39" href="#?prefn1=size&amp;prefv1=39"
												title="Refine by Size: 39"> 39 </a></li>
											<li class="swiper-slide swatch-39_5"><a
												class="refinement-link" data-refinement-value="39.5"
												id="swatch-39_5" href="#?prefn1=size&amp;prefv1=39.5"
												title="Refine by Size: 39.5"> 39.5 </a></li>
											<li class="swiper-slide swatch-40"><a
												class="refinement-link" data-refinement-value="40"
												id="swatch-40" href="#?prefn1=size&amp;prefv1=40"
												title="Refine by Size: 40"> 40 </a></li>
											<li class="swiper-slide swatch-40_5"><a
												class="refinement-link" data-refinement-value="40.5"
												id="swatch-40_5" href="#?prefn1=size&amp;prefv1=40.5"
												title="Refine by Size: 40.5"> 40.5 </a></li>
											<li class="swiper-slide swatch-41"><a
												class="refinement-link" data-refinement-value="41"
												id="swatch-41" href="#?prefn1=size&amp;prefv1=41"
												title="Refine by Size: 41"> 41 </a></li>
											<li class="swiper-slide swatch-41_5"><a
												class="refinement-link" data-refinement-value="41.5"
												id="swatch-41_5" href="#?prefn1=size&amp;prefv1=41.5"
												title="Refine by Size: 41.5"> 41.5 </a></li>
											<li class="swiper-slide swatch-42"><a
												class="refinement-link" data-refinement-value="42"
												id="swatch-42" href="#?prefn1=size&amp;prefv1=42"
												title="Refine by Size: 42"> 42 </a></li>
											<li class="swiper-slide swatch-44"><a
												class="refinement-link" data-refinement-value="44"
												id="swatch-44" href="#?prefn1=size&amp;prefv1=44"
												title="Refine by Size: 44"> 44 </a></li>
											<li class="swiper-slide swatch-l"><a
												class="refinement-link" data-refinement-value="L"
												id="swatch-l" href="#?prefn1=size&amp;prefv1=L"
												title="Refine by Size: L"> L </a></li>
											<li class="swiper-slide swatch-m"><a
												class="refinement-link" data-refinement-value="M"
												id="swatch-m" href="#?prefn1=size&amp;prefv1=M"
												title="Refine by Size: M"> M </a></li>
											<li class="swiper-slide swatch-s"><a
												class="refinement-link" data-refinement-value="S"
												id="swatch-s" href="#?prefn1=size&amp;prefv1=S"
												title="Refine by Size: S"> S </a></li>
											<li class="swiper-slide swatch-xl"><a
												class="refinement-link" data-refinement-value="XL"
												id="swatch-xl" href="#?prefn1=size&amp;prefv1=XL"
												title="Refine by Size: XL"> XL </a></li>
											<li class="swiper-slide swatch-xs"><a
												class="refinement-link" data-refinement-value="XS"
												id="swatch-xs" href="#?prefn1=size&amp;prefv1=XS"
												title="Refine by Size: XS"> XS </a></li>
											<li class="swiper-slide swatch-xxl"><a
												class="refinement-link" data-refinement-value="XXL"
												id="swatch-xxl" href="#?prefn1=size&amp;prefv1=XXL"
												title="Refine by Size: XXL"> XXL </a></li>
											<li class="swiper-slide swatch-xxs"><a
												class="refinement-link" data-refinement-value="XXS"
												id="swatch-xxs" href="#?prefn1=size&amp;prefv1=XXS"
												title="Refine by Size: XXS"> XXS </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div id="filter-Season" class="filters-content container"
								data-filter-name="Season" data-filter-id="4">
								<div data-filter-name="Season"
									class="refinement swiper-wrapper GIV_seasonText">
									<div class="refinement-content standard swiper-slide">
										<ul>
											<li><a class="refinement-link"
												data-refinement-value="Essentials"
												href="#?prefn1=GIV_seasonText&amp;prefv1=Essentials"
												title="Refine by Season: Essentials"> Essentials </a></li>
											<li><a class="refinement-link"
												data-refinement-value="Spring 20"
												href="#?prefn1=GIV_seasonText&amp;prefv1=Spring%2020"
												title="Refine by Season: Spring 20"> Spring 20 </a></li>
											<li><a class="refinement-link"
												data-refinement-value="Spring 21"
												href="#?prefn1=GIV_seasonText&amp;prefv1=Spring%2021"
												title="Refine by Season: Spring 21"> Spring 21 </a></li>
											<li><a class="refinement-link"
												data-refinement-value="Winter 20"
												href="#?prefn1=GIV_seasonText&amp;prefv1=Winter%2020"
												title="Refine by Season: Winter 20"> Winter 20 </a></li>
										</ul>
									</div>
								</div>
							</div>
							<div id="filter-same-day" class="filters-content container"
								data-filter-id="101">
								<div class="refinement">
									<div class="refinement-content same-day">
										<div class="intro">Discover the products available in
											premium same day delivery.</div>
										<div class="same-day-content">
											<div class="local">
												<div class="country">
													<button class="label no-desk-action">USA</button>
													<div class="content">
														<ul>
															<li class="level-1"><a
																href="#?prefn1=GIV_sameDayAvailability&amp;prefv1=NYM"
																title="New York" data-store-id="NYM"> New York </a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div id="filter-tag" class="filters-tags container">no
								filters selected</div>
							<div class="filters-results-infos container">
								<div class="filters-results-count" aria-live="polite">
									<strong>29</strong> results
								</div>
								<div class="filters-results-reset">
									<a href="#"> Clear all </a>
								</div>
							</div> -->
					</div>
				</div>
				<div id="filters-overlay"></div>
				<div class="container">
					<div class="category-box">
						<div class="search-result-content productgrid">
							<div class="inf-scroll-products">
								<p>29 Products</p>
							</div>
							<div class="productListInfos hidden"></div>
						</div>
						<ul
							class="search-result-items tiles-container js-slv-product-grid row"
							data-columns="">
							<li class="grid-tile js-slv-elements col-xs-3 col-sm-6 col-lg-3">
								<div class="product-tile" id="ba4564e1245eb83bda68d0faa6"
									data-itemid="BWC08N13FP-001" data-gtmproductid="BWC08N13FP"
									data-availability="IN_STOCK">
									<figure class="product-image">
										<a class="thumb-link" href="#ss"> <picture
												class="thumb-img"> <img
												src="${pageContext.request.contextPath}/image/BB50F2B0WD051-01-01.jpg"/>
											 </picture> <span class="flag"> New </span>
											<figcaption class="thumb-caption">
												<div class="product-infos">
													<div class="product-name">Coat in wool and cashmere
														with 4G buttons and chain</div>
													<div class="product-pricing">
														<div class="product-price" itemprop="offers" itemscope=""
															itemtype="#">
															<span class="price-sales"> $2,560.00 </span>

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
							<li class="grid-tile js-slv-elements col-xs-3 col-sm-6 col-lg-3">
								<div class="product-tile" id="e79d8ae93554d893bc7e24b10e"
									data-itemid="BW908N4Z8W-002" data-gtmproductid="BW908N4Z8W"
									data-availability="IN_STOCK">
									<figure class="product-image">
										<a class="thumb-link"
											href="#sweater-in-two-tone-cashmere-with-4g-emblem/BW908N4Z8W-002.html?cgid=New_In_W">
											<picture class="thumb-img">
											
											<img
												src=""
                                  
												alt="" /> </picture> <span class="flag"> New </span>
											<figcaption class="thumb-caption">
												<div class="product-infos">
													<div class="product-name">Sweater in two tone
														cashmere with 4G emblem</div>
													<div class="product-pricing">
														<div class="product-price" itemprop="offers" itemscope=""
															itemtype="http://schema.org/Offer">
															<span class="price-sales"> $1,275.00 </span>
															<meta itemprop="price" content="1275.0" />
															<meta itemprop="priceCurrency" content="USD" />
														</div>
													</div>
													<div class="product-promo"></div>
												</div>
											</figcaption>
										</a>
										<a href=""
											data-pname="Sweater in two tone cashmere with 4G emblem"
											data-pid="BW908N4Z8W-002" class="add-to-wishlist"> <i
											class="icon_Wishlist"></i> <i class="icon_Wishlist_Active"></i>
											<span class="visually-hidden">Add to your wishlist
												Sweater in two tone cashmere with 4G emblem</span>
										</a>
									</figure>
								</div>
							</li>
							<li class="grid-tile js-slv-elements col-xs-6 col-sm-12 col-lg-6 double">
								<div class="product-tile" id="cbfffcb3ebddc3247cab14dba5"
									data-itemid="BB50F2B0WD-630" data-gtmproductid="BB50F2B0WD"
									data-availability="IN_STOCK">
									<figure class="product-image">
										<a class="thumb-link"
											href="#medium-antigona-soft-bag-in-smooth-leather/BB50F2B0WD-630.html?cgid=New_In_W">
											<picture class="thumb-img">
											
											<img
												src=" ${pageContext.request.contextPath}/images/BB50F2B0WD630-01-02.jpg"
												alt="" /> </picture> <span class="flag"> New </span>
											<figcaption class="thumb-caption">
												<div class="product-infos">
													<div class="product-name">Medium Antigona Soft bag in
														smooth leather</div>
													<div class="product-pricing">
														<div class="product-price" itemprop="offers" itemscope=""
															itemtype="http://schema.org/Offer">
															<span class="price-sales"> $2,450.00 </span>
															<meta itemprop="price" content="2450.0" />
															<meta itemprop="priceCurrency" content="USD" />
														</div>
													</div>
													<div class="product-promo"></div>
												</div>
											</figcaption>
										</a>
										<a href=""
											data-pname="Medium Antigona Soft bag in smooth leather"
											data-pid="BB50F2B0WD-630" class="add-to-wishlist"> <i
											class="icon_Wishlist"></i> <i class="icon_Wishlist_Active"></i>
											<span class="visually-hidden">Add to your wishlist
												Medium Antigona Soft bag in smooth leather</span>
										</a>
									</figure>
								</div>
							</li>
							<li class="grid-tile js-slv-elements col-xs-3 col-sm-6 col-lg-3 reset-left">
								<div class="product-tile" id="757dbbeb14710be062b8e6e376"
									data-itemid="BW50P812JF-001" data-gtmproductid="BW50P812JF"
									data-availability="IN_STOCK">
									<figure class="product-image">
										<a class="thumb-link"
											href="#cigarette-pants-with-chain-and-4g-buttons/BW50P812JF-001.html?cgid=New_In_W">
											<picture class="thumb-img">
											
											<img
												srcset="
                                  https://www.givenchy.com/dw/image/v2/BBRT_PRD/on/demandware.static/-/Sites-Givenchy_master/default/dw4f62edd0/images/BW50P812JF001/BW50P812JF001-01-02.JPG?sw=466
                                "
												alt="" /> </picture> <span class="flag"> New </span>
											<figcaption class="thumb-caption">
												<div class="product-infos">
													<div class="product-name">Cigarette pants with chain
														and 4G buttons</div>
													<div class="product-pricing">
														<div class="product-price" itemprop="offers" itemscope=""
															itemtype="http://schema.org/Offer">
															<span class="price-sales"> $1,095.00 </span>
															<meta itemprop="price" content="1095.0" />
															<meta itemprop="priceCurrency" content="USD" />
														</div>
													</div>
													<div class="product-promo"></div>
												</div>
											</figcaption>
										</a>
										<a href=""
											data-pname="Cigarette pants with chain and 4G buttons"
											data-pid="BW50P812JF-001" class="add-to-wishlist"> <i
											class="icon_Wishlist"></i> <i class="icon_Wishlist_Active"></i>
											<span class="visually-hidden">Add to your wishlist
												Cigarette pants with chain and 4G buttons</span>
										</a>
									</figure>
								</div>
							</li>
							<li class="grid-tile js-slv-elements col-xs-3 col-sm-6 col-lg-3">
								<div class="product-tile" id="d6bd12d8830eee3237376e2f1c"
									data-itemid="BE602ME0XP-001" data-gtmproductid="BE602ME0XP"
									data-availability="IN_STOCK">
									<figure class="product-image">
										<a class="thumb-link"
											href="#carene-boots-in-leather/BE602ME0XP-001.html?cgid=New_In_W">
											<picture class="thumb-img">
											
											<img
												srcset="
                                  https://www.givenchy.com/dw/image/v2/BBRT_PRD/on/demandware.static/-/Sites-Givenchy_master/default/dwca2fc432/images/BE602ME0XP001/BE602ME0XP001-01-02.jpg?sw=466
                                "
												alt="" /> </picture> <span class="flag"> New </span>
											<figcaption class="thumb-caption">
												<div class="product-infos">
													<div class="product-name">Carène boots in leather</div>
													<div class="product-pricing">
														<div class="product-price" itemprop="offers" itemscope=""
															itemtype="http://schema.org/Offer">
															<span class="price-sales"> $995.00 </span>
															<meta itemprop="price" content="995.0" />
															<meta itemprop="priceCurrency" content="USD" />
														</div>
													</div>
													<div class="product-promo"></div>
												</div>
											</figcaption>
										</a>
										<a href="" data-pname="Carène boots in leather"
											data-pid="BE602ME0XP-001" class="add-to-wishlist"> <i
											class="icon_Wishlist"></i> <i class="icon_Wishlist_Active"></i>
											<span class="visually-hidden">Add to your wishlist
												Carène boots in leather</span>
										</a>
									</figure>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
	</div>
	<div class="search-promo"></div>


	</main>
	</div>

</body>

</html>