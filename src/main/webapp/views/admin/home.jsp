<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good Book - Admin</title>
</head>
<body>
	<main>
        <div class="main-content-admin">
            <div class="container">
                <div class="row">
                    <table class="table">
                        <thead>
                        <tr>
                            <th><input type="checkbox"></th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Rating</th>
                            <th>Author</th>
                            <th>Edit</th>
                        </tr>
                        </thead>
                        <tbody>
	                        <c:forEach var="book" items="${books.listResult}">
	                        	<tr>
		                            <td><input type="checkbox"></td>
		                            <td>${book.name }</td>
		                            <td>${book.categoryId }</td>
		                            <td>${book.description }</td>
		                            <td>${book.rating }</td>
		                            <td>${book.authorId }</td>
		                            <td>
		                                <a href=""><i class="fas fa-edit"></i></a>
		                            </td>
		                        </tr>
	                        </c:forEach>
	                        
                        </tbody>
                    </table>
                    <div class="wp-btn-del-add">
                        <a href="" title='Add Books' class="btn-del-add btn-add">
                            <span><i class="fas fa-plus-circle"></i></span>
                        </a>
                        <button type="button" title='Delete Books' class="btn-del-add btn-delete">
                            <span><i class="fas fa-trash-alt"></i></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>