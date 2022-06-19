<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
	<link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
<div class="container" align="center">
	<form name="idfindscreen" method = "POST" align="center"  style="padding : 100px;" class="col-xl-8 col-lg-6 col-md-5">
			<div class = "search-title">
				<h3>아이디 찾기</h3>
			</div>
			<div style="padding-top: 30px;"></div>
		<section class = "form-search" align = "center"><br>
			<div class = "find-name">
				<label>이름</label>
				<input type="text"  name="name" class="form-control" placeholder = "등록된 이름" style="margin-left: auto; margin-right: auto;">
			<br>
			</div>
			<br>
			<div class = "find-phone">
				<label>휴대폰 번호</label>
				<input type="text" onKeyup = "addHypen(this);" name="tel" class="form-control" placeholder = "-없이 입력하세요" maxlength="13" style="padding-right:15px; padding-left:15px">
			</div>
			<br>
	</section>
	<div class ="btnSearch">
	<div style="padding-top: 50px;"></div>
		<input type="button"  style="padding: 7px; padding-right: 25px; padding-left: 25px; margin-right : 50px" class="btn btn-info" name="enter" value="찾기"  onClick="id_search()"style="margin-right: 50px; padding: 5px; padding-right:15px; padding-left:15px">
		<input type="button" style="padding: 7px; padding-right: 25px; padding-left: 25px"; " class="btn btn-info" name="cancle" value="취소" onClick="location.href='loginForm.do'" style="padding: 5px; padding-right:15px; padding-left:15px">
 	</div>
 </form>
 </div>
<script type="text/javascript" src="js/findinfo.js"></script>
<script type="text/javascript" src="js/addHypen.js"></script>
</body>
</html>