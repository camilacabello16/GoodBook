<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách</title>
</head>
<body>
	<main>
        <div class="wp-main-sec">
            <div class="container">
                <div class="row">
                    <div class="find-book">
                        <div class="inp-txt">
                            <input type="text" placeholder="Tìm những quyển sách ở gần bạn">
                            <a href="">
                                <i class="fas fa-search"></i>
                            </a>
                        </div>
                        <div class="find-cate">
                            <div class="select-cate">
                                <label>Chọn chủ đề : </label>
                                <select>
                                	<c:forEach var="category" items="${categories.listResult}">
                                		<option value="${category.categoryCode }">${category.categoryName }</option>
                                	</c:forEach>    
                                </select>
                            </div>
                            <div class="select-author">
                                <input type="text" placeholder="Tìm tác giả">
                            </div>
                        </div>
                    </div>
                    <div class="wp-list-book">
                    	<c:forEach var="book" items="${books.listResult }">
                    		 <div class="list-book">
	                            <div class="img-book-item">
	                                <img src="<c:url value='${book.image }' />">
	                            </div>
	                            <div class="name-book-item">
	                                <a href="">${book.name }</a>
	                            </div>
	                        </div>
                    	</c:forEach>
	                       
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>