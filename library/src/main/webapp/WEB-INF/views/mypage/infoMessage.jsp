<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 완료</title>
</head>
<body>
	<div class="container">
		<div class="col-lg-12">
			<div class="section-title from-blog__title">
				<h2>회원 정보 수정</h2>
			</div>
		</div>
		<div>
			<form class="myInfoForm">
				<fieldset>
					<p>
						${message}<br> 
					</p>
					<button type="button" class="btn" onClick="location.href='myInfo.do'">이전화면으로</button>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>