<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<body>

	<main id="main" class="clearfix" style="margin-top: 128px;">
		<a id="mainContent" tabindex="-1"></a>
		
			<div class="content-slot slot-grid-header"></div>
			<div id="primary" class="primary-content">
				<div class="page-header">
					<h1>
						<c:forEach var="item" items="${category.listResult}">
							<!-- Nếu mà cái id = parent id thì xuất ra cái tên danh mục cha -->
							<c:if test="${item.id == parent_id}">
								<span class="title">${item.name} </span>
							</c:if>
						</c:forEach>
					</h1>
				</div>
				<div class="subcategory-container">
					<c:forEach var="item" items="${categoryC.listResult}">
						<c:forEach var="item2" items="${category.listResult}">
							<c:if test="${item2.id == parent_id}">
								<a class="merchandised-level-2"
									href="${pageContext.request.contextPath}/user-product?categoryChild=${item.id}&parent_id=${item2.id}&maxPageItem=8&categoryName=${item.name}">
									<img alt=""
									src="${pageContext.request.contextPath}/${item.image}">
									<div class="text">${item.name}</div>
								</a>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>


	</main>
</body>