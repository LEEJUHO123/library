<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴 완료</title>
<style>
.myInfoForm {
	margin: 0 auto;
	text-align: center;
}

fieldset {
	padding: 5%;
	margin: 5% 20%;
	border: 5px solid black;
}

.myInfoForm ul li {
	list-style: none;
}

#info {
	text-align: left;
	margin: 5%;
}

.myInfoForm ul li a {
	display: inline-block;
	width: 100px;
	margin: 5px;
	line-hight: 20px;
}

.btn {
	font-size: 12px;
	color: #6f6f6f;
	display: inline-block;
	padding: 8px 25px 6px;
	background: #f5f5f5;
	cursor: pointer;
	margin-bottom: 0;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col-lg-12">
			<div class="section-title from-blog__title">
				<h2>회원 탈퇴</h2>
			</div>
		</div>
		<div>
			<form class="myInfoForm">
				<fieldset>
					<p>
						${message}<br> 
					</p>
					<button type="button" class="btn" onClick="location.href='home.do'">메인화면으로</button>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>