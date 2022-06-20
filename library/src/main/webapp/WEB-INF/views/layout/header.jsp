<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="home.do"><img src="img/yedam.png" alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<ul>
				<c:if test="${not empty id }">
					<ul>
						<li><a href="#"><i class="fa fa-bell"></i> <span>1</span></a></li>
						<li><a href="mypageHome.do">마이페이지</a>
						<li><a href="logout.do">Logout</a></li>
					</ul>
				</c:if>
				<c:if test="${empty id }">
					<li><a href="loginForm.do"><i class="fa fa-user"></i>Login</a></li>
					<li><a href="join.do"><i class="fa fa-user-plus"></i>Join</a></li>
				</c:if>
			</ul>
		</div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active">
				<li><a href="books.do">도서목록</a></li>
				<li><a href="#">Q&A</a>
					<ul class="header__menu__dropdown">
						<li><a href="qnaList.do">문의목록</a></li>
						<c:if test="${not empty id }">
							<li><a href="qnaInputForm.do">문의작성</a></li>
						</c:if>
					</ul></li>
				<li><a href="contact.do">찾아오는길</a></li>
				<c:if test="${id eq 'abc@abc.com' }">
					<li><a href="#">관리자페이지</a></li>
				</c:if>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i> abc@abc.com</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->

	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i> abc@abc.com</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="header__cart">
							<c:if test="${not empty id }">
								<ul>
									<li><a href="#"><i class="fa fa-bell"></i> <span>1</span></a></li>
									<li>${name }님
									<li><a href="mypageHome.do">마이페이지</a>
									<li><a href="logout.do">Logout</a></li>
								</ul>
							</c:if>
							<c:if test="${empty id }">
								<div class="header__top__right__auth">
									<ul>
										<li><a href="loginForm.do"><i class="fa fa-user"></i>Login</a></li>
										<li><a href="join.do"><i class="fa fa-user-plus"></i>Join</a></li>
									</ul>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="/library"><img src="img/yedam.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9">
					<nav class="header__menu">
						<ul>
							<li class="active">
							<li><a href="books.do">도서목록</a></li>
							<li><a href="#">Q&A</a>
								<ul class="header__menu__dropdown">
									<li><a href="qnaList.do">문의목록</a></li>
									<c:if test="${not empty id }">
										<li><a href="qnaInputForm.do">문의작성</a></li>
									</c:if>
								</ul></li>
							<li><a href="contact.do">찾아오는길</a></li>
							<c:if test="${id eq 'abc@abc.com' }">
								<li><a href="admin.do">관리자페이지</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>전체 메뉴</span>
						</div>
						<ul style="display: none;">
							<li><a href="bookCategoryList.do?category=000" id="category"
								name="category" val="000">총류</a></li>
							<li><a href="bookCategoryList.do?category=100" id="category"
								name="category" val="100">철학서적</a></li>
							<li><a href="bookCategoryList.do?category=200" id="category"
								name="category" val="200">종교서적</a></li>
							<li><a href="bookCategoryList.do?category=300" id="category"
								name="category" val="300">인문사회</a></li>
							<li><a href="bookCategoryList.do?category=400" id="category"
								name="category" val="400">순수문학</a></li>
							<li><a href="bookCategoryList.do?category=600" id="category"
								name="category" val="600">예술서적</a></li>
							<li><a href="bookCategoryList.do?category=700" id="category"
								name="category" val="700">언어관련</a></li>
							<li><a href="bookCategoryList.do?category=800" id="category"
								name="category" val="800">일반문학</a></li>
							<li><a href="bookCategoryList.do?category=900" id="category"
								name="category" val="900">역사서적</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="bookSearch.do" method="post">
								<div class="hero__search__categories">
									<select class="book__search" id="key" name="key">
										<option id="keyval" value="allList" selected>전체검색</option>
										<option id="keyval" value="title">제목</option>
										<option id="keyval" value="writer">저자</option>
									</select>
								</div>
								<input type="text" id="keyword" name="keyword"
									placeholder="검색어를 입력하세요">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>(053)421-2460</h5>
								<span>AM 09:00 - PM 18:00 </span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->


</body>
</html>