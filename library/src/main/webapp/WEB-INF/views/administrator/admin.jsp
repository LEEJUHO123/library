<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
li{
	display : inline-block;
}

ul{
text-align: center;
}

img { 
	width: 20%;
	height: 20%;
}

a:hover {
	color: red;
}
</style>
</head>
<body>
	<div class="col-lg-12">
		<div class="section-title from-blog__title">
			<h2>관리자 페이지</h2>
			<p>
		</div>
	</div>
	<div>
		<ul>
			<li><a href="memberList.do"><img src="img/mem.png" alt=""><i class="fa-solid fa-users" style="font-size: 50px;"></i>멤버리스트</a></li><br>
			<li><a href="rentalList.do"><img src="img/ren.png" alt="">대여리스트</a></li><br>
			<li><a href="blackList.do"><img src="img/black.png" alt="">블랙리스트</a></li><br>
			<li><a href="addBlacklist.do"><img src="img/addblack.png" alt="">블랙리스트 추가</a></li><br>
			<li><a href="rentalChart.do"><img src="img/bookchart.png" alt="">책 대여별 차트</a></li><br>
			<li><a href="categoryChart.do"><img src="img/cate.png" alt="">카테고리별 차트</a></li>
		</ul>
	</div>
</body>
</html>