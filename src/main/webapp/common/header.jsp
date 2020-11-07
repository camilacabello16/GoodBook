<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>

<header>
	<div class="wp-menu-header">
		<div class="container">
			<div class="row">
				<div class="col-4">
					<div class="logo-page">
						<div class="wp-logo-page">
							<img src="<c:url value='/template/image/logo.jpg' />">
						</div>
						<div class="name-page">
							<p>GOOD BOOK</p>
						</div>
					</div>
				</div>
				<div class="col-8">
					<div class="wp-menu">
						<ul class="menu-list">
							<li class="menu-item"><a href="<c:url value='/trang-chu'/>">Home</a></li>
							<c:if test="${not empty USERMODEL }">
								<li class="menu-item"><a href="<c:url value='/danh-sach'/>">List Book</a></li>
							</c:if>
							<c:if test="${not empty USERMODEL }">
								<li class="menu-item">
									<a href="#">Welcome, ${USERMODEL.fullName}</a>
								</li>
								<li class="menu-item">
									<a href="<c:url value='/thoat?action=logout'/>">Logout</a>
								</li>
							</c:if>
							<c:if test="${empty USERMODEL }">
								<li class="menu-item">
									<a href="<c:url value='/dang-nhap?action=login'/>">Log in</a>
								</li>
							</c:if> 
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>