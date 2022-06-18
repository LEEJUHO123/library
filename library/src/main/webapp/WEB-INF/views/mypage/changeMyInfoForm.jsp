<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알림메세지</title>
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
.address{
	margin : 2px;
	width : 100%;
}
</style>
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
					<div id="info">
						<ul>
							<li><a>아이디</a> : ${id }</li>
							<li><a>이름</a> : ${name }</li>
							<li><a>전화번호</a> : <input type="tel" id="tel" name="tel"
								width="50px" placeholder="전화번호" val="${tel }"></li>
							<li><a>우편번호</a> : <input type="text" id="postCode"
								name="postCode" placeholder="우편번호">
								<input type="button" onclick="execDaumPostcode()" value="주소 찾기"></li>
							<li><input type="text" class="address" id="roadAddress"
								name="roadAddress" placeholder="도로명주소" ></li>
							<li><input type="text" class="address" id="jibunAddress"
								name="jibunAddress" placeholder="지번주소" ></li>
							<li><input type="text" class="address" id="detailAddress"
								name="detailAddress" placeholder="상세주소" ></li>
						</ul>
					</div>
					<button type="button" class="btn" onClick="modifyMyInfo()">수정하기</button>
					<button type="button" class="btn"
						onClick="location.href='myInfo.do'">취소</button>
				</fieldset>
			</form>
		</div>
	</div>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>