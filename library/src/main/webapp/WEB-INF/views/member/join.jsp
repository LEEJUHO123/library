<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale"="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	...
	<div class="container" align="center">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" >
					<h3 style="text-align: center;">회원가입</h3><br>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="아이디 (Hong@naver.com)" name="id" maxlength="20" onkeydown="inputIdChk()">
						<input type="button" value="중복확인" onclick="openIdChk()">
						<input type="hidden" name="idDuplication" value="idUncheck">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 (20자 이내)" name="password" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="4">
					</div>
					<!-- <div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
						</div>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div> -->
					<div class="form-group">
						<input type="tel" class="form-control" onKeyup = "addHypen(this);" placeholder="휴대폰 번호 (-없이 입력하세요)" name="tel" maxlength="13">
					</div>
					
						<div class="form-group">
						<input type="address" class="form-control" placeholder="주소" name="address" maxlength="50">
					</div>
					
					<input type="submit" class="btn btn-primary form-control" value="회원가입" onclick="location.href='loginForm.do'" >
					<input type="submit" value="로그인 화면으로" onclick="location.href='loginForm.do'">
					
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	 <script type="text/javascript" src="js/addHypen.js"></script>
	 <script type="text/javascript" src="js/joinJoin.js"></script>
</body>
</html>