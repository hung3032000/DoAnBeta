<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<header class="header" id="header">

	<!-- phần 1 của header -->
	<div class="header-container">
		<ul class="header-links">
			<li class="level-1 country-selector"><a href=""
				class="country-selector-link navigation-hasSubMenu level-1"
				title='Location : US $ (Select a Country/Region)'> Location<span>:</span>
					<strong>US $</strong>
			</a></li>
			<li class="language language-container desktop"><a
				class="language-selector-link" href="#"> Language <span
					class="current">(English)</span>
			</a></li>
			<li class="level-1"><a class="level-1" href="#">Contact</a></li>
		</ul>
		<div class="logo">
			<h1 class="logo-title">
				<a href="${pageContext.request.contextPath}/index.jsp"
					class="logo-link"> <img
					src="${pageContext.request.contextPath}/image/logo.svg"
					alt="HomieReal" />
				</a>
			</h1>
		</div>
		<div class="header-right-container">

			<c:if test="${not empty USERMODEL}">
				<ul class="header-links" role="presentation" id="myacc">
					<li class="level-1 account-nav header-link" id="signin">
						<ul class="header-links" role="presentation">
							<li class="level-1 account-nav header-link"><a
								class="level-1 authenticated navigation-hasSubMenu" href="${pageContext.request.contextPath}/views/web/userinf.jsp">
									My account<span>:</span> <span class="name"> 
									<strong>${USERMODEL.title}</strong>
									<strong>${USERMODEL.lName} </strong>
								</span>
							</a>
								<div class="level-2 authenticated">
									<a href="#" class="level-2 back"> My account </a>
									<ul>
										<li class=""><a href="#"> Account overview </a></li>
										<li class="order-history "><a href="#"> Orders </a></li>
										<li class=""><a href="${pageContext.request.contextPath}/views/web/userinf.jsp"> Personal details </a></li>
										<li class=""><a href="#"> Addresses </a></li>
										<li><a href='<c:url value="/login?action=logout"/>'>Logout</a>
										</li>
									</ul>
								</div></li>
						</ul>
					</li>
				</ul>
			</c:if>
			<c:if test="${empty USERMODEL}">
				<ul class="header-links" role="presentation">
					<li class="level-1 account-nav header-link" id="signin"><a
						class="level-1"
						href="${pageContext.request.contextPath}/views/login.jsp">
							Sign in </a>
						<div class="level-2">
							<a href='<c:url value="/login?action=login"/>'
								class="level-2 back"> Sign in </a>
							<form action="${pageContext.request.contextPath}/login"
								method="post" class="clearfix header-login-form"
								id="dwfrm_login" name="login-form">
								<fieldset>
									<legend class="visually-hidden">Login</legend>
									<div class="form-row username form-auto required empty"
										data-requiredtext="Please enter your e-mail address &lt;span class=&quot;format&gt;(format: email@domain.fr)&lt;/span&gt;"
										data-regexinvalidmessage="">

										<label class="form-label"
											for="dwfrm_login_username_d0avwwudscur">E-mail
											address *</label>
										<div class="form-field">
											<input class="form-input username form-field required"
												type="text" id="email" name="email" value="" maxlength="50"
												data-dwname="username" autocomplete="email">
										</div>

									</div>
									<div class="form-row password form-auto required empty"
										data-requiredtext="Please enter your password"
										data-regexinvalidmessage="">
										<label class="form-label"
											for="dwfrm_login_password_d0oikqjjziit">Password *</label>
										<div class="form-field">
											<input class="form-input password form-field required"
												type="password" id="password" name="password" value=""
												maxlength="14" data-dwname="password"
												autocomplete="current-password">
										</div>
									</div>
									<input type="hidden" value="login" name="action" />
									<div class="form-row form-row-button">
										<button type="submit" class="form-button" value="Sign in"
											name="dwfrm_login_login">Sign in</button>
									</div>
									<div class="login-actions">
										<div class="form-row form-customCheckbox remember-me">
											<input type="checkbox" id="remember-me-header"
												class="form-checkbox" /> <label for="remember-me-header"
												class="form-label">Remember me</label> <input
												class=" rememberme" type="hidden"
												id="dwfrm_login_rememberme" name="dwfrm_login_rememberme"
												value="true" data-dwname="rememberme">
										</div>
										<a class="password-reset" href="#"> Forgotten password? </a> <a
											class="create-account"
											href="${pageContext.request.contextPath}/views/web/regester.jsp">
											Don&#39;t have an account? </a>
									</div>
								</fieldset>
							</form>
						</div></li>
				</ul>
			</c:if>

			<!--    <div class="miniwishlist">
                        <a href="#" aria-label="See your wishlist (0)" class="empty">
                            <i class="icon_Wishlist"></i>
                            <i class="icon_Wishlist_Active" title="See your wishlist (0)"></i>
                            <span class="miniwishlist-quantity" data-quantity="0">
                                0
                            </span>
                        </a>
                        <div class="miniwishlist-content">
                            You have no items on your wishlist.
                            <div class="miniwishlist-buttons">
                                <div class="form-row-button">
                                    <a href="#" class="form-button">
                                        See my wishlist
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>-->
			<div class="minicart empty-cart">
				<a class="minicart-link empty-cart" href=""
					aria-label="View Your Cart"> <span class="icon_Bag"
					title="View Your Cart"></span>
				</a>
				<div class="minicart-content">
					<p>Your cart is empty</p>
				</div>
			</div>
			<div class="search-link-container" role="search">
				<a href="#" class="search-link"> <span class="icon_Search"></span>
					<span class="visually-hidden">Search</span>
				</a>
			</div>
			<div>
				<form class="search-form topSearch" action="" method="get"
					name="simpleSearch" id="search">
					<div class="input-area">
						<div class="container">
							<div class="form-row">
								<div class="form-field">
									<input class="form-input topSearch-field" type="text" id="q"
										name="q" autocomplete="off" placeholder="Search" value=""
										title="Enter search words" /> <input type="submit"
										class="iphone-search">
								</div>
								<div class="topSearch-btn">
									<button class="form-button" type="submit">Run search</button>
								</div>
								<input type="hidden" name="lang" value="en" />
								<button class="close-search">
									<span class="visually-hidden">Close</span>
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<button class="header-burgerMenu js-header-burgerMenu"
			data-current-category="null" data-category-path="null">
			<span class="icon_Menu"></span> <span class="sr-only visually-hidden">Menu</span>
		</button>
	</div>
	<!-- Navigation -->
	<nav class="navigation">
		<ul class="level-1">
			<li class="level-1  " id="WOMEN"><a
				class="level-1 navigation-hasSubMenu"
				href="${pageContext.request.contextPath}/views/web/women.jsp"> <span>Women</span>
			</a>

				<div class="level-2">
					<div class="container">
						<a href="" class="level-2 back">Women</a>
						<ul class="level-2 row">
							<li class="first-col col-xs-6 col-sm-12 col-md-3 col-md-margin-1">
								<p>
									<span> <a href="#"
										style="padding: 0; border-bottom: 0; line-height: 1;"> <img
											alt="Givenchy Antigona Soft"
											src="${pageContext.request.contextPath}/image/Winter20_FlyOut_Women2.jpg"
											title="" />
									</a>
									</span>
								</p>
							</li>
							<li class="level-2 col-sm-3 col-md-2 " id="NEW_ARRIVALS_W">
								<a class="level-2 navigation-hasSubMenu" href="#"> <span>New
										Arrivals</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">New Arrivals</a>
									<ul class="level-3">
										<li class="level-3 " id="Gift_selection_W"><a
											class="level-3" href="#"> Gifts for Her </a></li>
										<li class="level-3 " id="New_In_W"><a class="level-3"
											href="#"> New In </a></li>
										<li class="level-3 " id="NI_ANTIGONA_W"><a
											class="level-3" href="#"> Antigona Celebration </a></li>
										<li class="level-3 " id="Microbags_W"><a class="level-3"
											href="#"> Micro Bags </a></li>
									</ul>
								</div>
							</li>
							<li class="level-2 col-sm-3 col-md-2 " id="RTW_W"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Ready-to-wear</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Ready-to-wear</a>
									<ul class="level-3">
										<li class="level-3 " id="Evening_dresses_W"><a
											class="level-3" href="#"> Evening dresses </a></li>
										<li class="level-3 " id="DAY_DRESS_W"><a class="level-3"
											href="#"> Day dresses </a></li>
										<li class="level-3 " id="JACKETS_W"><a class="level-3"
											href="#"> Jackets </a></li>
									</ul>
								</div></li>
							<li class="level-2 col-sm-3 col-md-2 " id="BAGS_W"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Bags</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Bags</a>
									<ul class="level-3">
										<li class="level-3 " id="ALL_BAGS"><a class="level-3"
											href="#"> All Bags </a></li>
										<li class="level-3 " id="HANDBAG_W"><a class="level-3"
											href="#"> Handbags </a></li>

									</ul>
									<ul class="level-4">
										<li class="level-4"><a class="level-4" href="#">
												Antigona </a></li>
										<li class="level-4"><a class="level-4" href="#"> Bond
										</a></li>

									</ul>
								</div></li>
							<li class="level-2 col-sm-3 col-md-2 " id="SHOES_W"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Shoes</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Shoes</a>
									<ul class="level-3">
										<li class="level-3 " id="SNEAKERS_W"><a class="level-3"
											href="#"> Sneakers </a></li>
										<li class="level-3 " id="FLATS_W"><a class="level-3"
											href="#"> Flats </a></li>
										<li class="level-3 " id="BOOTS_W"><a class="level-3"
											href="#"> Boots &amp; Booties </a></li>
										<li class="level-3 " id="SANDALS_PUMPS_W"><a
											class="level-3" href="#"> High Heels </a></li>
									</ul>
								</div></li>
							<li class="level-2 col-sm-3 col-md-2 " id="ACC_W"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Accessories</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Accessories</a>
									<ul class="level-3">
										<li class="level-3 " id="POUCH_W"><a class="level-3"
											href="#"> Pouches </a></li>

										<li class="level-3 " id="TechOther_W"><a class="level-3"
											href="#"> Other Accessories </a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div></li>
			<li class="level-1  " id="MEN"><a
				class="level-1 navigation-hasSubMenu" href="#"> <span>Men</span>
			</a>
				<div class="level-2">
					<div class="container">
						<a href="" class="level-2 back">Men</a>
						<ul class="level-2 row">
							<li class="first-col col-xs-6 col-sm-12 col-md-3 col-md-margin-1">
								<p>
									<span> <a href="#"
										style="padding: 0; border-bottom: 0; line-height: 1;"> <img
											alt="Givenchy Men Bags"
											src="${pageContext.request.contextPath}/image/Winter20_FlyOut_Men.jpg"
											title="" />
									</a>
									</span>
								</p>
							</li>
							<li class="level-2 col-sm-3 col-md-2 " id="NEW_ARRIVALS_M">
								<a class="level-2 navigation-hasSubMenu" href="#"> <span>New
										Arrivals</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">New Arrivals</a>
									<ul class="level-3">
										<li class="level-3 " id="Gift_selection_M"><a
											class="level-3" href="shop.jsp"> Gifts for Him </a></li>
										<li class="level-3 " id="New_In_M"><a class="level-3"
											href="#"> New In </a></li>
										<li class="level-3 " id="ANTIGONA_SOFT_M"><a
											class="level-3" href="#"> The Antigona Line </a></li>
										<li class="level-3 " id="GIVPARIS_M"><a class="level-3"
											href="#"> Givenchy Paris </a></li>
									</ul>
								</div>
							</li>
							<li class="level-2 col-sm-3 col-md-2 " id="RTW_M"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Ready-to-wear</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Ready-to-wear</a>
									<ul class="level-3">
										<li class="level-3 " id="COATS_M"><a class="level-3"
											href="#"> Outerwear </a></li>
										<li class="level-3 " id="BLOU_M"><a class="level-3"
											href="#"> Bombers &amp; Blousons </a></li>
										<li class="level-3 " id="SWEATS_M"><a class="level-3"
											href="#"> Sweatshirts </a></li>
									</ul>
								</div></li>
							<li class="level-2 col-sm-3 col-md-2 " id="BAGS_M"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Bags</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Bags</a>
									<ul class="level-3">
										<li class="level-3 " id="CROSS_M"><a class="level-3"
											href="#"> Cross-body Bags </a></li>
									</ul>

								</div></li>
							<li class="level-2 col-sm-3 col-md-2 " id="SHOES_M"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Shoes</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Shoes</a>
									<ul class="level-3">
										<li class="level-3 " id="SNEAKERS_M"><a class="level-3"
											href="#"> Sneakers </a></li>
										<li class="level-3 " id="BOOTS_M"><a class="level-3"
											href="#"> Boots &amp; Derbies </a></li>
										<li class="level-3 " id="CSHOES_M"><a class="level-3"
											href="#"> Casual shoes </a></li>
										<li class="level-3 " id="M_SPECTRE"><a class="level-3"
											href="#"> The Spectre Sneakers </a></li>
										<li class="level-3 " id="WING_M"><a class="level-3"
											href="#"> The Wing Sneakers </a></li>
									</ul>
								</div></li>
							<li class="level-2 col-sm-3 col-md-2 " id="ACC_M"><a
								class="level-2 navigation-hasSubMenu" href="#"> <span>Accessories</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Accessories</a>
									<ul class="level-3">
										<li class="level-3 " id="POUCH_M"><a class="level-3"
											href="#"> Pouches </a></li>

										<li class="level-3 " id="TechOther_M"><a class="level-3"
											href="#"> Other Accessories </a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div></li>
			<li class="level-1 collections" id="Collections"><a
				class="level-1 navigation-hasSubMenu"
				href="${pageContext.request.contextPath}/views/web/collection.jsp">
					<span>Collections</span>
			</a>
				<div class="level-2">
					<div class="container">
						<a href="" class="level-2 back"> Collections </a>
						<ul class="level-2 row">
							<li class="first-col col-xs-6 col-sm-12 col-md-3 col-md-margin-1">
								<div class="folder-flyout-level-2 image-content">
									<a class="content promotion-impression" href="#"
										data-promotion-id="Collection_Menu"
										data-promotion-name="Collection menu"
										data-promotion-creative="mega_menu"
										data-promotion-position="mega_menu">
										<div class="background">
											<picture class=""> <img
												src="image/Home_Menu_Collection_Flyout.jpg"
												alt="All Givenchy collections"> </picture>
										</div>
										<div class="content">
											<span class="primary"> </span>
										</div>
									</a>
								</div>
								<ul>
								</ul>
							</li>
							<li class="level-2 col-sm-3 col-md-2" id="FW2020"><a
								class="level-2 navigation-hasSubMenu"> <span>Fall
										Winter 2020</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Fall Winter 2020</a>
									<ul class="level-3">
										<li class="level-3 " id="Fall2020"><a class="level-3"
											href="#"> Fall 2020 </a></li>
										<li class="level-3 " id="Men_Winter2020"><a
											class="level-3" href="#"> Men Winter </a></li>
										<li class="level-3 " id="Women_Winter2020"><a
											class="level-3" href="#"> Women Winter </a></li>
									</ul>
								</div></li>

							<li class="level-2 col-sm-3 col-md-2" id="SS2021"><a
								class="level-2 navigation-hasSubMenu"> <span>Spring
										Summer 2021</span>
							</a>
								<div class="level-3">
									<a href="" class="level-3 back">Spring Summer 2021</a>
									<ul class="level-3">
										<li class="level-3 " id="Summer2021"><a class="level-3"
											href="#"> Summer 2021 </a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div></li>
		</ul>
	</nav>
</header>