<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link href="/resources/css/bookDetailView.css" rel="stylesheet" />
<script type="text/javascript" src="/resources/js/reviewComment.js"></script>
<style>
.intro {
	display: -webkit-box;
	word-wrap: break-word;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
	overflow: hidden;
	text-overflow: ellipsis;
	line-height: 18px;
	height: 54px;
	text-decoration: none;
}

.bookDetail {
	width: 1260px;
	margin: 0 auto;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.title {
	margin: 0 auto;
	width: 1260px;
	height: 100px;
	font-size: 55px;
	text-align: center;
	background-color: aquamarine;
}

.pyoji {
	margin-right: 50px;
}

.seoji {
	margin-right: 100px;
	width: 442px;
}

.intro {
	width: 600px;
	background-color: gray;
}

.detail {
	width: 1000px;
	height: 400px;
	background-color: beige;
}

.review {
	
}

.abcd {
	display: flex;
	width: 1000px;
	justify-content: space-between;
}

.arrow {
	display: flex;
	flex-direction: column;
}

.qty {
	display: flex;
	flex-direction: row;
}

.qty>input {
	height: 20px;
	width: 60px;
}

hr {
	width: 1260px;
}
</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<div class="bookDetail">
		<div class="title">${bvo.book_title}</div>

		<c:forEach items="${fList}" var="book">


			<div class="abcd">
				<div class="pyoji">
					<img src="/upload/${fn:replace(book.save_dir,'\\','/')}/${book.uuid}_${book.file_name}" style="list-style: none;">
				</div>
				<div class="seoji">
					서지 정보<br> 판매가 OOOOO원<br> 어쩌구저쩌구<br> 배송료 OOOO원<br> 어쩌구<br> <br>
					<div class="qty">
						수량 <input type="number" name="book_count" min="1" value="1">
						<div class="arrow">
							<a href="#"><img src="/resources/images/up.png" class="upArrow" alt="upArrow"></a> <a href="#"><img src="/resources/images/down.png" class="downArrow" alt="downArrow"></a><br> <br>
						</div>
					</div>
					<button type="button" class="btn btn-secondary">장바구니 담기</button>
					<button type="button" class="btn btn-success">바로구매</button>
				</div>
			</div>
		</c:forEach>
		<br>


		<hr>
		<%-- <div class="intro">책 소개 ${bvo.book_content}</div> --%>


		<div class="detail">${bvo.book_content}</div>
		<div class="review">
			<form class="mb-3" name="myform" id="myform" method="post">
				<fieldset>
					<span class="text-bold">별점을 선택해주세요</span> <input type="radio" name="review_rating" value="5" id="rate1"><label for="rate1">★</label> <input type="radio" name="review_rating" value="4" id="rate2"><label for="rate2">★</label> <input type="radio" name="review_rating" value="3" id="rate3"><label for="rate3">★</label> <input type="radio" name="review_rating" value="2" id="rate4"><label for="rate4">★</label> <input type="radio" name="review_rating" value="1" id="rate5"><label for="rate5">★</label>
				</fieldset>
				<div>
					<span class="input-group-text" id="revWriter">${ses.mem_id }</span>
					<textarea class="col-auto form-control" name="review_content" id="reviewContents" placeholder="좋은 수강평을 남겨주시면 Cocolo에 큰 힘이 됩니다! 포인트 5000p도 지급!!"></textarea>
					<br> <span>${review_mem_id }</span>
					<button type="button" id="revPostBtn" name="revPostBtn">리뷰등록</button>
				</div>
			</form>
			<div id="cmtListArea"></div>
		</div>
	</div>

	<script type="text/javascript">
		const revVal = '<c:out value="${bvo.book_num }" />';
		console.log(revVal);
	</script>
	<script type="text/javascript" src="/resources/js/reviewComment.js"></script>
	<script type="text/javascript">
		getReviewList(revVal);
	</script>
	
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>