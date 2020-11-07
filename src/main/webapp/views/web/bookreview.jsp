<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giới thiệu về sách</title>
</head>
<body>
	<main>
        <div class="wp-main-sec">
            <div class="container">
                <div class="row">
                    <div class="col-8">
                        <div class="wp-review-book">
                            <div class="book-review">
                                <div class="img-book">
                                    <img src="<c:url value='${bookItem.image }' />">
                                </div>
                                <div class="name-book">
                                    <div class="name-book--title">
                                        <p>${bookItem.name}</p>
                                    </div>
                                    <!--  <div class="name-book-content">
                                        <p>Người ta hay ví việc kinh doanh với con thuyền ra khơi mà trên đó cánh buồm tượng trưng cho động lực. Và cuốn sách 36 lời khuyên dành cho người khởi nghiệp sẽ tạo động lực giương buồm cho con thuyền của bạn vững vàng ra khơi. Được viết bằng ngôn ngữ rõ ràng, sinh động, cách trình bày dễ đọc và dễ hiểu, cuốn sách đã cung cấp một cái nhìn cụ thể và mới mẻ về những giai đoạn khác nhau trong quá trình khởi nghiệp, giúp bạn đọc có thêm nhiều kinh nghiệm thực tế hữu ích.</p>
                                    </div> -->
                                    <div class="name-book--cate">
                                        <p>Danh mục: <a href="#">${bookItem.categoryId}</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="review-book">
                                <div class="review-book--txt">
                                    <p>${bookItem.description }</p>
                                </div>
                                <div class="review-book--cmt">
                                    <div class="cmt-user">
                                        <i class="fas fa-user"></i>
                                        <p class="user-name">Hiếu Trương </p>
                                        <p class="cmt-date">Tháng Ba 29, 2019</p>
                                    </div>
                                    <div class="cmt-content">
                                        <p>Mình thường không đọc sách của tác giả TQ nhưng đứng trước lựa chọn đầu sách cho khởi nghiệp mình quyết định chọn cuốn này đầu tiên vì có suy nghĩ rằng xã hội VN khá tương đồng với TQ, cách nghĩ cách làm cũng gần giống nhau nên hãy chọn cuốn này xem sao. Kết quả còn hơn cả dự đoán, Tôn Đào Nhiên tổng hợp hết các khó khăn mà một người khởi nghiệp ở TQ có thể đối mặt và mình thấy sao mà giống với những trường hợp mình biết đến vậy, mình quyết định mua tặng cho hai người bạn từng khởi nghiệp thất bại và tin rằng họ thấy mình trong đó để họ có thể làm lại từ đầu.</p>
                                    </div>
                                </div>
                                <div class="add-cmt">
                                    <p>Thêm đánh giá</p>
                                    <div class="survey-form">
                                        <form>
                                            <div class="survey--txt">
                                                <label>Đánh giá của bạn</label>
                                                <textarea></textarea>
                                            </div>
                                            <div class="survey-name">
                                                <label>Tên</label>
                                                <input type="text">
                                            </div>
                                            <div class="wp-sent">
                                                <input type="submit" value="Gửi đi">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="wp-review-book">
                            <div class="same-book-title">
                                <p>Sản phẩm tương tự</p>
                            </div>
                            <div class="list-same-book">
                                <div class="list-book-item">
                                    <div class="book-item--img">
                                        <a href="" class="book-item--link">
                                            <img src="<c:url value='/template/image/demen.jpg' />">
                                        </a>
                                    </div>
                                    <div class="book-item--name">
                                        <a href="">Dế mèn phiêu lưu ký</a>
                                    </div>
                                </div>
                                <div class="list-book-item">
                                    <div class="book-item--img">
                                        <a href="" class="book-item--link">
                                            <img src="<c:url value='/template/image/toithayhoavang.jpg' />">
                                        </a>
                                    </div>
                                    <div class="book-item--name">
                                        <a href="">Tôi thấy hoa vàng trên cỏ xanh</a>
                                    </div>
                                </div>
                                <div class="list-book-item">
                                    <div class="book-item--img">
                                        <a href="" class="book-item--link">
                                            <img src="<c:url value='/template/image/sach-nua-doi-con-lai.jpg' />">
                                        </a>
                                    </div>
                                    <div class="book-item--name">
                                        <a href="">Nửa Đời Còn Lại</a>
                                    </div>
                                </div>
                                <div class="list-book-item">
                                    <div class="book-item--img">
                                        <a href="" class="book-item--link">
                                            <img src="<c:url value='/template/image/truyenkieu.jpg' />">
                                        </a>
                                    </div>
                                    <div class="book-item--name">
                                        <a href="">Truyện Kiều</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>