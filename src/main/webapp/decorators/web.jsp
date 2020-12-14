<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="context-eshop giv-style js infinite-scroll" lang="en" data-scroll-position="0" style="top: 0px;">
<%@include file="/common/taglib.jsp"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>	
    <title><dec:title default="Trang chủ" /></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">  

</head>
<body>

	<!-- header -->
	<%@ include file ="/common/web/header.jsp"%>
	<!-- header -->

	<!-- Body -->
	<%@ include file ="/common/web/body.jsp"%>
	<dec:body />
	<!-- End Body -->

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- footer -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>