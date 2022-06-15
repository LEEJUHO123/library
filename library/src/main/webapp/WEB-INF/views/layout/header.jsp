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
			<a href="home.do"><img src="img/logo.png" alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<ul>
				<c:if test="${not empty id }">
					<ul>
						<li><a href="#"><i class="fa fa-bell"></i> <span>1</span></a></li>						
						<li><a href="#">마이페이지</a>
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
				<li><a href="#">임시목록</a>
					<ul class="header__menu__dropdown">
						<li><a href="bookDetails.do">도서상세</a></li>
						<li><a href="bookCart.do">담아두기</a></li>
						<li><a href="rentalBook.do">대여하기</a></li>
					</ul></li>
				<li><a href="contact.do">Contact</a></li>
				<li><a href="#">Q&A</a>
					<ul class="header__menu__dropdown">
					<li><a href="qnaList.do">문의목록</a></li>
					<li><a href="qnaInputForm.do">문의작성</a></li>
				</ul></li>
      <c:if test="${id eq 'abc@abc.com' }">
					<li><a href="#">관리자메뉴</a></li>
				</c:if>

			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-pinterest-p"></i></a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
				<li>Free Shipping for all Order of $99</li>
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
								<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
								<li>Free Shipping for all Order of $99</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="header__cart">
							<c:if test="${not empty id }">
								<ul>
									<li><a href="#"><i class="fa fa-bell"></i> <span>1</span></a></li>
									<li>${name }님
									<li><a href="#">마이페이지</a>
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
						<a href="/library"><img src="img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9">
					<nav class="header__menu">
						<ul>
							<li class="active">
							<li><a href="books.do">도서목록</a></li>
							<li><a href="#">임시목록</a>
								<ul class="header__menu__dropdown">
									<li><a href="bookDetails.do">도서상세</a></li>
									<li><a href="bookCart.do">담아두기</a></li>
									<li><a href="rentalBook.do">대여하기</a></li>
								</ul></li>
							<li><a href="contact.do">Contact</a></li>

							<li><a href="#">Q&A</a>
								<ul class="header__menu__dropdown">
									<li><a href="qnaList.do">문의목록</a></li>
									<li><a href="qnaInputForm.do">문의작성</a></li>
								</ul></li>
              <c:if test="${id eq 'abc@abc.com' }">
								<li><a href="admin.do">관리자메뉴</a></li>
							</c:if>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__cart">
						<c:if test="${not empty id }">
							<ul>
								<li><a href="#"><i class="fa fa-bell"></i> <span>1</span></a></li>
								<li><a href="mypageHome.do">마이페이지</a>
								<li>${name }
								<li><a href="logout.do">Logout</a>
							</ul>
						</c:if>
						<c:if test="${empty id }">
							<div class="header__top__right__auth">
								<ul>
									<li><a href="loginForm.do"><i class="fa fa-user"></i>Login</a></li>
									<li><a href="#"><i class="fa fa-user-pen"></i>Join</a></li>
								</ul>
							</div>
						</c:if>
					</div>
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
							<li><a href="#">총류</a></li>
							<li><a href="#">철학서적</a></li>
							<li><a href="#">종교서적</a></li>
							<li><a href="#">인문사회</a></li>
							<li><a href="#">순수문학</a></li>
							<li><a href="#">예술서적</a></li>
							<li><a href="#">언어관련</a></li>
							<li><a href="#">일반문학</a></li>
							<li><a href="#">역사서적</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<div class="hero__search__categories">
									모든 카테고리 <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" placeholder="What do yo u need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>(053)206-5798</h5>
								<span>AN 09:00 - PM 18:00 </span>
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
