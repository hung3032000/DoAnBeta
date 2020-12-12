<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>

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
						<c:forEach var="item" items="${category.listResult}">
							<c:if test="${item.id == parent_id}">
								<span class="title">${item.name}</span>
							</c:if>
						</c:forEach>
					</h1>
				</div>
				<div class="subcategory-container">
					<c:forEach var="item" items="${categoryC.listResult}">
						<a class="merchandised-level-2"
							href="${pageContext.request.contextPath}/user-product"> <img
							alt="" src="${pageContext.request.contextPath}/${item.image}">
							<div class="text">${item.name}</div>
						</a>
					</c:forEach>
				</div>

			</div>
		</main>
</body>

</html>