<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><dec:title default="Trang chủ" /></title>
	
	<link href="<c:url value='/template/css/style.css' />" type="text/css" rel="stylesheet" />
	<link href="<c:url value='/template/vendor/all.min.css' />" rel="stylesheet" />
	<link rel="stylesheet" href="<c:url value='/template/vendor/bootstrap.min.css' />">
</head>
<body>
	<!-- header -->
    <%@ include file="/common/header.jsp" %>
    <!-- header -->
    
   	<dec:body/>

	<!-- footer -->
	<%@ include file="/common/footer.jsp" %>
	<!-- footer -->

	<script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
	<script src="<c:url value='/template/vendor/bootstrap.min.js' />"></script>
    <script src="<c:url value='/template/vendor/all.min.js' />"></script>
</body>
</html>