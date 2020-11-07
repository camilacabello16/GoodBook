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
	                            <input type="text" placeholder="Tìm những quyển sách ở gần bạn" value="" id="findBook" name="findValue">
	                            <a href="#" id="iconSearch">
	                                <i class="fas fa-search"></i>
	                            </a>
	                        </div>
	                        <!--  <div class="find-cate">
	                            <div class="select-cate">
	                                <label>Chọn chủ đề : </label>
	                                <select id="findSelect">
	                                	<c:forEach var="category" items="${categories.listResult}">
	                                		<option value="${category.categoryCode }">${category.categoryName }</option>
	                                	</c:forEach>    
	                                </select>
	                            </div> 
	                        </div> -->
	                    </div>
                    <div class="wp-list-book">
                    	<c:forEach var="book" items="${books.listResult }">
                    		 <div class="list-book">
	                            <div class="img-book-item">
	                                <img src="<c:url value='${book.image }' />">
	                            </div>
	                            <div class="name-book-item">
	                                <a href="/goodbook-jdbc/trang-gioi-thieu?id=${book.id}">${book.name }</a>
	                            </div>
	                        </div>
                    	</c:forEach>
	                       
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <script src="<c:url value='/template/vendor/jquery-3.5.1.min.js' />"></script>
    <script type="text/javascript">
    	$('#iconSearch').click(function(){
    		var strSearch = $('#findBook').val();
    		console.log(strSearch);
    	})
    	$('#findBook').on("keyup", function(){
    		var g = $(this).val();
    		$(".name-book-item a").each(function(){
    			var s = $(this).text().toLowerCase();
    			if(s.indexOf(g)!= -1){
    				$(this).parent().parent().show();
    			} else {
    				$(this).parent().parent().hide();
    			}
    		})
    	})
    </script>
</body>
</html>