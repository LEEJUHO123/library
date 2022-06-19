<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>도서목록</h2>
						<div class="breadcrumb__option">
							<a href="home.do">Home</a> <span>Shop</span>
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
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>카테고리</h4>
							<ul>
								<li><a id="category" href="javascript:void(0);" onclick="categorySearch()" value="000">총류</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="100">철학서적</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="200">종교서적</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="300">인문사회</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="400">순수문학</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="600">예술서적</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="700">언어관련</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="800">일반문학</a></li>
								<li><a id="category" href="javascript:void(0);" onclick="callFunction()" value="900">역사서적</a></li>								
							</ul>
						</div>
						<div class="sidebar__item">
							<h4>옵션 선택</h4>
							<div class="sidebar__item__size">
								<label for="canRental"> 대출가능 <input type="radio" id="canRental">
								</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>전체 도서 목록</h2>
						</div>
					</div>
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<div class="filter__sort">
									<span>Sort By</span> <select>
										<option value="0">인기순</option>
										<option value="0">제목순</option>
									</select>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h6>
										<span>${books }.length</span> Products found
									</h6>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<div class="filter__option">
									<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="row">
                        <c:forEach items="${books }" var="book">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="productitem">
                                    <div class="productitempic set-bg"
                                        data-setbg="${book.image }"></div>
                                    <div class="productitem__text" name="title" id="title">
                                        <h6>
                                            <a href="#">${book.bookTitle }</a>
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

</body>
</html>