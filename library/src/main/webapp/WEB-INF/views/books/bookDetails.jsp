<%@page import="co.team.library.book.vo.BookVO"%>
<%@page import="co.team.library.book.serviceImpl.BookServiceImpl"%>
<%@page import="co.team.library.book.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="js/jquery-3.3.1.min.js"></script>

</head>
<body>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/banner3.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>상세보기</h2>
						<div class="breadcrumb__option">
							<a href="home.do">Home</a> <a href="home.do">상세보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="img/product/details/RotRfull.jpg" alt="">
						</div>
						<div class="product__details__pic__slider owl-carousel">
							<img data-imgbigurl="img/product/details/RotRfull.jpg"
								src="img/product/details/sRotRfull.jpg" alt=""> <img
								data-imgbigurl="img/product/details/vol1.jpg"
								src="img/product/details/vol1s.jpg" alt=""> <img
								data-imgbigurl="img/product/details/vol2.jpg"
								src="img/product/details/vol2s.jpg" alt=""> <img
								data-imgbigurl="img/product/details/vol3.jpg"
								src="img/product/details/vol3s.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<h4>${book.bookTitle }</h4>
						<h5>${book.writer }</h5>
						<h5 id="bookCode" name="bookCode">${book.bookCode }</h5>

						<p>내용부분</p>
						<div class="product__details__quantity"></div>
						<a href="#" class="primary-btn" onclick="rentalBook();">대여하기</a>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">Information</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(1)</span></a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>출판사 서평</h6>
									<p>세계를 뒤흔들 블록버스터 아마존 미드 『반지의 제왕』 2021년 공개! 가운데땅 역사상 가장
										스펙터클한 반지 전쟁을 구현! 전 세계 1억 부 이상 판매라는 놀라운 기록을 세운 『반지의 제왕』은 영화로도
										제작되어 많은 사랑을 받았다. 또한 2018년부터 초대형 스케일의 드라마로 제작이 진행되고 있어 전 세계 팬들의
										기대를 모으고 있다. 미국 역사상 최고의 제작비인 약 1조원이 투입된 블록버스터 미드 『반지의 제왕』 시즌 1은
										2021년에 공개될 예정이다. 그러나 영화와 드라마만으로는 놀랍도록 정교하고 거대하게 빚어낸 톨킨의 세계를
										제대로 체험하는 데 부족함을 느낄 수 있다. 그 부족함은 원작 소설을 읽는 것으로 완벽하게 채워질 것이다.
										그림을 그리듯 섬세한 묘사들과 치밀한 전개, 영웅 모험담다운 멋진 서사는 이 책에 매료되기에 충분한 이유다.

										『반지의 제왕』은 웅장한 전쟁을 다루고 있지만, 톨킨의 시선은 호빗으로 대표되는 평범한 이들이 악에 대항하는
										모습을 향한다. 소박한 삶의 중요성은 ‘선과 악’에 대한 질문으로 이어진다. 절대반지를 바라보는 다양한 인물들의
										시각과 사루만의 화려한 언변을 통해 톨킨은 진정한 선이란 무엇인지 묻는다. 『반지의 제왕』의 뒷이야기를 상세히
										알려주는 해설은 마치 또 다른 영웅 서사나 역사서를 읽는 것 같은 즐거움을 줄 것이다.</p>
									<p>Praesent sapien massa, convallis a pellentesque nec,
										egestas non nisi. Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. Mauris blandit aliquet elit, eget tincidunt
										nibh pulvinar a. Cras ultricies ligula sed magna dictum porta.
										Cras ultricies ligula sed magna dictum porta. Sed porttitor
										lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh
										pulvinar a. Vestibulum ac diam sit amet quam vehicula
										elementum sed sit amet dui. Sed porttitor lectus nibh.
										Vestibulum ac diam sit amet quam vehicula elementum sed sit
										amet dui. Proin eget tortor risus.</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>Vestibulum ac diam sit amet quam vehicula elementum sed
										sit amet dui. Pellentesque in ipsum id orci porta dapibus.
										Proin eget tortor risus. Vivamus suscipit tortor eget felis
										porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
										elementum sed sit amet dui. Donec rutrum congue leo eget
										malesuada. Vivamus suscipit tortor eget felis porttitor
										volutpat. Curabitur arcu erat, accumsan id imperdiet et,
										porttitor at sem. Praesent sapien massa, convallis a
										pellentesque nec, egestas non nisi. Vestibulum ac diam sit
										amet quam vehicula elementum sed sit amet dui. Vestibulum ante
										ipsum primis in faucibus orci luctus et ultrices posuere
										cubilia Curae; Donec velit neque, auctor sit amet aliquam vel,
										ullamcorper sit amet ligula. Proin eget tortor risus.</p>
									<p>Praesent sapien massa, convallis a pellentesque nec,
										egestas non nisi. Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. Mauris blandit aliquet elit, eget tincidunt
										nibh pulvinar a. Cras ultricies ligula sed magna dictum porta.
										Cras ultricies ligula sed magna dictum porta. Sed porttitor
										lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh
										pulvinar a.</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>Vestibulum ac diam sit amet quam vehicula elementum sed
										sit amet dui. Pellentesque in ipsum id orci porta dapibus.
										Proin eget tortor risus. Vivamus suscipit tortor eget felis
										porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
										elementum sed sit amet dui. Donec rutrum congue leo eget
										malesuada. Vivamus suscipit tortor eget felis porttitor
										volutpat. Curabitur arcu erat, accumsan id imperdiet et,
										porttitor at sem. Praesent sapien massa, convallis a
										pellentesque nec, egestas non nisi. Vestibulum ac diam sit
										amet quam vehicula elementum sed sit amet dui. Vestibulum ante
										ipsum primis in faucibus orci luctus et ultrices posuere
										cubilia Curae; Donec velit neque, auctor sit amet aliquam vel,
										ullamcorper sit amet ligula. Proin eget tortor risus.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
		function rentalBook() {
			let bookCode = document.getElementById("bookCode").innerText;
			console.log(bookCode);
		
			$.ajax({
				url : "rentalBook.do",
				method : "POST",
				dataType : "json",
				data : {
					"bookCode" : bookCode
				},
				success : function(data) {
					console.log(data);
					if (data == 1) {
						alert("대여성공")
						console.log("1")
					}else {
						console.log("2")
						alert("대여실패")
					}
				}

			});

		}
	</script>

</body>
</html>