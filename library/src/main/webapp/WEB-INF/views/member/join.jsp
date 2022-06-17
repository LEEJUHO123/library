<%@page import="co.team.library.member.serviceImpl.MemberServiceImpl"%>
<%@page import="co.team.library.member.service.MemberService"%>
<%@page import="co.team.library.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale"="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	...

	<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
String tel = request.getParameter("tel");
String address = request.getParameter("address");
MemberVO vo = new MemberVO();
vo.setId(id);
vo.setPassword(password);
vo.setName(name);
vo.setTel(tel);
vo.setAddress(address);
MemberService dao = new MemberServiceImpl();
%>
	<div align="center" style="margin-bottom: 50px;">
		<font size="6" class="h4 text-gray-900 mb-4"
			style="text-align: center;">회원가입</font>
	</div>
	<div class="container" align="center">
		<!-- <div class="col-lg-4"></div> -->
		<div class="col-xl-6 col-lg-6 col-md-5">
			<div class="content-center">
				<form method="post" action="joinAction.do">

					<div class="form-group">

						<div class="form-group">

							<input type="email" class="form-control" id="id" name="id"
								placeholder="아이디(이메일 형식)" required onkeydown="inputIdChk()">

							<button type="button" class="id_overlap_button" id="idChk"
								value="N" onclick="fn_idChk();">중복확인</button>
							<img id="id_check_sucess" style="display: none;">
						</div>

						<!-- <input type="email" id="id" class="username_input" placeholder="아이디 (이메일형식)" name="id" maxlength="20"  check_result="fail" required> -->
						<!-- <button type="button" class="id_overlap_button"
							onclick="id_overlap_check()">중복확인</button> -->
						<!-- <img id="id_check_sucess" style="display: none;"> -->


						<!-- <input type="hidden" id="idDuplication" value="idUncheck"> -->
					</div>
					<div class="form-group">
						<input type="password" id="password" class="form-control"
							placeholder="비밀번호 (20자 이내)" name="password" maxlength="20"
							required>
					</div>
					<br>
					<div class="form-group">
						<input type="text" id="name" class="form-control" placeholder="이름"
							name="name" maxlength="4" required>
					</div>
					<br>
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
						<input type="tel" id="tel" class="form-control"
							onKeyup="addHypen(this);" placeholder="휴대폰 번호 (-없이 입력하세요)"
							name="tel" maxlength="13" required>
					</div>
					<br>

					<div class="form-group">
						<!-- <input type="address" id="address" class="form-control"
							placeholder="주소" name="address" maxlength="50" required><br> -->
							<input type="text" id="postCode" name="postCode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()"
							value="주소 찾기"><br><br>
							<input type="text" class="form-control" id="roadAddress" name="roadAddress" placeholder="도로명주소" required><br> 
							<input type="text" class="form-control" id="jibunAddress" name="jibunAddress" placeholder="지번주소" required><br>
						<span id="guide" style="color: #999; display: none"></span> 
						<input type="text" class="form-control" id="detailAddress" name="detailAddress" placeholder="상세주소" required>
					</div>
					<br> <input type="submit" class="btn btn-info"
						style="padding: 10px; padding-right: 150px; padding-left: 150px"
						value="가입하기">


				</form>
				<br> <br> <input type="reset" class="btn btn-info"
					style="padding: 10px; padding-right: 160px; padding-left: 160px"
					value="취소" onclick="location.href='home.do'">
			</div>
			<br> <br> <br>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/addHypen.js"></script>
	<script type="text/javascript" src="js/joinJoin.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">

		/* 		function openIdChk(){                    
		 var id = document.getElementById("id").value;
		
		 if (!id) {
		 alert("아이디를 입력하지 않았습니다.")
		 return false;
		 } else if ((id< "0" || id > "9") && (id< "A" || id > "Z") && (id< "a" || id> "z")) {
		 alert("한글 및 특수문자는 아이디로 사용할 수 없습니다");
		 return false;
		 }else if(vo.getId().equals(id)){
		 alert("이미 존재하는 아이디 입니다")
		 return false;
		 }		         
		 }  */

		function fn_idChk() {

			var id = $("#id").val();
			$.ajax({
				url : "selectAllId.do",
				/* url : "{% url 'member:id_overlap_check' %}", */
				type : "post",
				datatype : 'json',
				data : {
					"id" : id
				},
				success : function(data) {
					if($("#id").val() == ''){
						alert("아이디를 입력해 주세요");
					}else{
						if(data == 1){
							alert("사용 가능한 아이디입니다.")
						}else{
							alert("사용 불가능한 아이디입니다.")
						}
					}
					
				}
				
			});
		}
		 
		   
		     function sample4_execDaumPostcode() {
		         new daum.Postcode({
		             oncomplete: function(data) {
		                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                 // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
		                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                 var roadAddr = data.roadAddress; // 도로명 주소 변수
		                 var extraRoadAddr = ''; // 참고 항목 변수

		                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                     extraRoadAddr += data.bname;
		                 }
		                 // 건물명이 있고, 공동주택일 경우 추가한다.
		                 if(data.buildingName !== '' && data.apartment === 'Y'){
		                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                 }
		                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                 if(extraRoadAddr !== ''){
		                     extraRoadAddr = ' (' + extraRoadAddr + ')';
		                 }

		                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                 document.getElementById('postCode').value = data.zonecode;
		                 document.getElementById("roadAddress").value = roadAddr;
		                 document.getElementById("jibunAddress").value = data.jibunAddress;
		                 return close();
		                 
		                 // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
		                 if(roadAddr !== ''){
		                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
		                 } else {
		                     document.getElementById("sample4_extraAddress").value = '';
		                 }

		                 var guideTextBox = document.getElementById("guide");
		                 // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
		                 if(data.autoRoadAddress) {
		                     var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
		                     guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
		                     guideTextBox.style.display = 'block';

		                 } else if(data.autoJibunAddress) {
		                     var expJibunAddr = data.autoJibunAddress;
		                     guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
		                     guideTextBox.style.display = 'block';
		                 } else {
		                     guideTextBox.innerHTML = '';
		                     guideTextBox.style.display = 'none';
		                 }
		             }
		         }).open();
		     }
		 </script>

</body>
</html>