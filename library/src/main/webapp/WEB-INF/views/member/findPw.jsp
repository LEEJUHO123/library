<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="pwfindscreen" method = "POST" align="center" style="padding : 100px;">
			<div class = "search-title">
				<h3>비밀번호 찾기</h3>
			</div>
			<div style="padding-top: 30px;"></div>
		<section class = "form-search"><br>
			<div class = "find-id">
				<label>ID</label>
				<input type="text" name="id" class = "btn-name" placeholder = "등록된 ID">
			<br>
			</div>
		
		 <div class = "find-phone"><br>
				<label>휴대폰 번호</label>
				<input type="text" onKeyup = "addHypen(this);" name="tel" class = "btn-phone" placeholder = "-없이 입력하세요" maxlength="13">
			</div> 
			<br><br>
	</section>
	<div class ="btnSearch">
	<div style="padding-top: 50px;"></div>
		<input type="button" name="enter" value="찾기"  onClick="pw_search()" style="margin-right: 50px; padding: 5px; padding-right:15px; padding-left:15px">
		
		<input type="button" name="cancle" value="취소" onClick="history.back()" style="padding: 5px; padding-right:15px; padding-left:15px">
 	</div>
 </form>
 <script type="text/javascript" src="js/findinfo.js"></script>
 <script type="text/javascript" src="js/addHypen.js"></script>
</body>
</html>