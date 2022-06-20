<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="js/jquery-3.3.1.min.js"></script>

</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/banner2.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>도서목록</h2>
						<div class="breadcrumb__option">
							<a href="home.do">Home</a> <span>Book</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	
	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5 col-sm-12">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>카테고리</h4>
							<ul>
								<li><a href="bookCategoryList.do?category=000" id="category" name="category" val="000">총류</a></li>
								<li><a href="bookCategoryList.do?category=100" id="category" name="category" val="100">철학서적</a></li>
								<li><a href="bookCategoryList.do?category=200" id="category" name="category" val="200">종교서적</a></li>
								<li><a href="bookCategoryList.do?category=300" id="category" name="category" val="300">인문사회</a></li>
								<li><a href="bookCategoryList.do?category=400" id="category" name="category" val="400">순수문학</a></li>
								<li><a href="bookCategoryList.do?category=600" id="category" name="category" val="600">예술서적</a></li>
								<li><a href="bookCategoryList.do?category=700" id="category" name="category" val="700">언어관련</a></li>
								<li><a href="bookCategoryList.do?category=800" id="category" name="category" val="800">일반문학</a></li>
								<li><a href="bookCategoryList.do?category=900" id="category" name="category" val="900">역사서적</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-7">
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5"></div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h6>
										<span>${fn:length(books)}</span> Products found
									</h6>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<c:forEach items="${books }" var="book">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg"
										data-setbg="${book.image }"></div>
									<div class="product__item__text" id="title"
										onclick="titleClick()">
										<h6>
											<a id="title1" name="title1" href="bookDetails.do?title=${book.bookTitle }">${book.bookTitle }</a>
										</h6>
										<h5>${book.writer }</h5>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="product__pagination">
						<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
							class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<script>
		function titleClick() {
			// 			let title = e.target.innerText;
			let title = document.getElementById("title1").innerHTML;			
			
		}
		// 		window.addEventListener('click', function(e) {

		// 			var liObject = document.querySelector("#test2");			
		// 			let title = e.target.innerText;

		// 			$.ajax({
		// 				url : "bookDetails.do",
		// 				method : "POST",
		// 				dataType : "json",
		// 				data : {
		// 					"title" : title
		// 				},
		// 				success : function(data) {
		// 				console.log(data);
		// 					if (data == 1) {
		// 						alert("불러오기실패")
		// 						console.log("1")
		// 					} else {
		// 						alert("성공")
		// 						(data == 2)
		// 						location.href = "bookDetails.do"					
		// 					}
		// 				}
		// 			});

		// 		});
	</script>

</body>
</html>