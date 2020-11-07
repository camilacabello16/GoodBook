<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title><dec:title default="Đăng nhập" /></title>

    <link href="<c:url value='/template/web/bootstrap/css/bootstrap.min.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/css/style.css' />" type="text/css" rel="stylesheet" />
    <link href="<c:url value='/template/vendor/all.min.css' />" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value='/template/vendor/bootstrap.min.css' />" >
    
</head>
<body>
    
   	<dec:body/>
	
	<script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
	<script src="<c:url value='/template/vendor/bootstrap.min.js' />" ></script>
    <script src="<c:url value='/template/vendor/all.min.js' />"></script>
</body>
</html>