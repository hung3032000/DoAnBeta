<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<body>
	<div class="pt_storefront" id="wrapper">
		<div id="minicart-container" aria-hidden="true"></div>


		<main id="main" class="clearfix" style="margin-top: 128px;">
			<a id="mainContent" tabindex="-1"> </a>
								<div><c:forEach var="item" items="${model.listResult}">

							<a class="thumb-link" href="#ss"> <picture
												class="thumb-img"> <img
												src="${pageContext.request.contextPath}/${item.image}"/>
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
						</c:forEach>	</div>
						<div><c:forEach var="cate" items="${category.listResult}">
							<p>${cate.name}</p>
							<c:if test="${cate.image != null}">
							<picture
												class="thumb-img"> <img
												src="${pageContext.request.contextPath}/${cate.image}"/>
											 </picture>
					</c:if>
					
						</c:forEach>
						</div>
		


		</main>


	</div>
</body>