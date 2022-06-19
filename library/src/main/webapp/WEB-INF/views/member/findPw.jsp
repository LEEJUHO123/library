<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container" align="center">
<form name="pwfindscreen" method = "POST" align="center" style="padding : 100px;" align="center" class="col-xl-8 col-lg-6 col-md-5">
			<div class = "search-title">
				<h3>비밀번호 찾기</h3>
			</div>
			<div style="padding-top: 30px;"></div>
		<section class = "form-search"><br>
			<div class = "find-id">
				<label>ID</label>
				<input type="text" name="id" class="form-control" placeholder = "등록된 ID">
			<br>
			</div>
		
		 <div class = "find-phone"><br>
				<label>휴대폰 번호</label>
				<input type="text" onKeyup = "addHypen(this);" name="tel" class="form-control" placeholder = "-없이 입력하세요" maxlength="13">
			</div> 
			<br><br>
	</section>
	<div class ="btnSearch">
	<div style="padding-top: 50px;"></div>
		<input type="button" style="padding: 7px; padding-right: 25px; padding-left: 25px; margin-right : 50px" class="btn btn-info" name="enter" value="찾기"  onClick="pw_search()" style="margin-right: 50px; padding: 5px; padding-right:15px; padding-left:15px">
		
		<input type="button" style="padding: 7px; padding-right: 25px; padding-left: 25px"; class="btn btn-info" name="cancle" value="취소" onClick="location.href='loginForm.do'" style="padding: 5px; padding-right:15px; padding-left:15px">
 	</div>
 </form>
 </div>
 <script type="text/javascript" src="js/findinfo.js"></script>
 <script type="text/javascript" src="js/addHypen.js"></script>
</body>
</html>