<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="apiUrl" value="/api-admin-book"></c:url>
<c:url var="redirectUrl" value="/admin-home"></c:url>
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
                            <th><input type="checkbox" id="checkAll"></th>
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
		                            <td><input type="checkbox" id="checkbox_${book.id}" value="${book.id}"></td>
		                            <td>${book.name }</td>
		                            <td>
			                            <c:if test="${book.categoryId == 1}">
			                            	Văn học trong nước
			                            </c:if>
			                            <c:if test="${book.categoryId == 2}">
			                            	Văn học nước ngoài
			                            </c:if>
			                            <c:if test="${book.categoryId == 3}">
			                            	Self-help
			                            </c:if>
		                            </td>
		                            <td>${book.description }</td>
		                            <td>${book.rating }</td>
		                            <td>${book.authorId }</td>
		                            <td>
		                            	<c:url var="editUrl" value="/admin-home">
		                            		<c:param name="type" value="edit"></c:param>
		                            		<c:param name="id" value="${book.id}"></c:param>
		                            	</c:url>
		                                <a href="${editUrl}">
		                                	<i class="fas fa-edit"></i>
	                                	</a>
		                            </td>
		                        </tr>
	                        </c:forEach>
	                        
                        </tbody>
                    </table>
                    <div class="wp-btn-del-add">
                        <a href="<c:url value='/admin-home?type=edit' />" title='Add Books' id="btnAdd" class="btn-del-add btn-add">
                            <span><i class="fas fa-plus-circle"></i></span>
                        </a>
                        <button type="button" title='Delete Books' id="btnDelete" class="btn-del-add btn-delete">
                            <span><i class="fas fa-trash-alt"></i></span>
                        </button>
                    </div>
                    <input type="hidden" value="list" id="type" name="type"/>
                </div>
            </div>
        </div>
    </main>
    
    <script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
    <script>
    	$('#btnDelete').click(function(){
    		var data = {};
    		var arrayDelete = $('tbody input[type=checkbox]:checked').map(function(){
    			return $(this).val();
    		}).get();
    		data['ids'] = arrayDelete;
    		deleteBook(data);
    	});
    	
    	function deleteBook(data){
    		$.ajax({
    			url: '${apiUrl}',
    			type: 'DELETE',
    			contentType: 'application/json',
    			data: JSON.stringify(data),
    			success: function(result){
    				window.location.href = "${redirectUrl}";
    			},
    			error: function(error){
    				console.log(error);
    			}
    		});
    	}
    </script>
</body>
</html>