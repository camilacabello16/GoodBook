<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="login-page">
        <div class="form-login">
        	<c:if test="${not empty message }">
        		<div class="alert alert-${alert }" role="alert">
					${message }
				</div>
        	</c:if>
			
            <form action="<c:url value='/dang-nhap'/>" id="formLogin" method="POST">
                <div class="input-txt">
                    <input type="text" name="userName" id="userName" placeholder="User name...">
                    <input type="password" name="password" id="password" placeholder="Password...">
                </div>
                <input type="hidden" value="login" name="action" />
                <div class="btn-submit">
                    <button type="submit">Log in</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>