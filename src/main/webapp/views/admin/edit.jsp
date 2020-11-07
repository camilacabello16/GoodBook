<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="apiUrl" value="/api-admin-book"></c:url>
<c:url var="redirectUrl" value="/admin-home"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa</title>
<link href="<c:url value='/template/css/style.css' />" type="text/css" rel="stylesheet" />
</head>
<body>
	<main>
        <div class="wp-edit-page" style="margin: 48px 0;">
            <div class="container">
                <div class="row">
                    <h1 class="title-edit">Thêm sách</h1>
                    <form class="form-edit" id="formSubmit">
                        <div class="form-group">
                            <label>Tên sách: </label>
                            <div class="input-edit">
                                <input type="text" name="name" id="name" value="${books.name }">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Thể loại: </label>
                            <div class="input-edit">
                                <select class="input-select" name="categoryCode" id="categoryCode">
                                    <c:if test="${empty books.categoryCode }">
                                    	<option>Chọn thể loại</option>
	                                    <c:forEach var="category" items="${categories }">
	                                    	<option value="${category.categoryCode}">${category.categoryName }</option>
	                                    </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty books.categoryCode }">
                                    	<option>Chọn thể loại</option>
	                                    <c:forEach var="category" items="${categories }">
                         		            <option value="${category.categoryCode}" <c:if test="${category.categoryCode==books.categoryCode }">selected="selected"</c:if>>
                         		            	${category.categoryName }
                       		            	</option>
	                                    </c:forEach>
	                                    
                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Mô tả: </label>
                            <div class="input-edit">
                                <textarea name="description" id="description">${books.description }</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Hình ảnh: </label>
                            <div class="input-edit">
                                <input type="text" name="image" id="image" value="${books.image }">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Đánh giá: </label>
                            <div class="input-edit">
                                <input type="number" name="rating" id="rating" value="${books.rating }">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Tác giả: </label>
                            <div class="input-edit">
                                <input type="number" name="authorId" id="authorId" value="${books.authorId }">
                            </div>
                        </div>
                        <div class="form-group">
                            <c:if test="${not empty books.id }">
                            	<input type="button" id="btnUpdateBook" value="Cập nhật sách" class="btn-update-book btn btn-success">
                            </c:if>
							<c:if test="${empty books.id }">
                            	<input type="button" id="btnUpdateBook" value="Thêm sách" class="btn-update-book btn btn-info">
                            </c:if>
                        </div>
                        <input type="hidden" value="${books.id }" id="id" name="id">
                    </form>
                </div>
            </div>
        </div>
    </main>
    
    <script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
    <script>
    	$('#btnUpdateBook').click(function(e){
    		e.preventDefault();
    		//var name = $('#name').val();
    		//var categoryCode = $('#categoryCode').val();
    		//var description = $('#description').val();
    		//var image = $('#image').val();
    		//var rating = $('#rating').val();
    		//var authorId = $('#authorId').val();
    		var data = {};
    		var formData = $('#formSubmit').serializeArray();
    		$.each(formData, function(i, v){
    			data[""+v.name+""] = v.value;
    		});
    		var id = $('#id').val();
    		if(id == ""){
    			addBook(data);
    		} else {
    			updateBook(data);
    		}
    	});
    	
    	function addBook(data){
    		$.ajax({
    			url: '${apiUrl}',
    			type: 'POST',
    			contentType: 'application/json',
    			data: JSON.stringify(data),
    			dataType: 'json',
    			success: function(result){
    				window.location.href = "${redirectUrl}";
    			},
    			error: function(error){
    				console.log(error);
    			}
    		});
    	}
    	function updateBook(data){
			$.ajax({
				url: '${apiUrl}',
    			type: 'PUT',
    			contentType: 'application/json',
    			data: JSON.stringify(data),
    			dataType: 'json',
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