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
						
							<input type="email" class="username_input"  id="id" name="id"
								placeholder="아이디(이메일 형식)" required onkeydown="inputIdChk()" >
								
							<button type="button" class="id_overlap_button"
								onclick="id_overlap_check()">중복검사</button>
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
						<input type="address" id="address" class="form-control"
							placeholder="주소" name="address" maxlength="50" required><br>
					</div>
					<br> <input type="submit" class="btn btn-info"
						style="padding: 10px; padding-right: 150px; padding-left: 150px"
						value="가입하기">


				</form>
				<br> <br> <input type="submit" class="btn btn-info"
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

		 function id_overlap_check() {

		
			
			$('.username_input').change(function() {
				$('#id_check_sucess').hide();
				$('.id_overlap_button').show();
				$('.username_input').attr("check_result", "fail");
			})

			if ($('.username_input').val() == '') {
				alert('아이디를 입력해주세요')
				return;
			}

			id_overlap_input = document.querySelector('input[name="id"]');

			$.ajax({
				url : "loginForm.do",
				/* url : "{% url 'member:id_overlap_check' %}", */
				data : {
					'id' : id_overlap_input.value
				},
				datatype : 'json',
				success : function(data) {
					console.log(data['overlap']);
					if (data['overlap'] == "fail") {
						alert("이미 존재하는 아이디 입니다.");
						id_overlap_input.focus();
						return;
					} else {
						alert("사용가능한 아이디 입니다.");
						$('.username_input').attr("check_result", "success");
						$('#id_check_sucess').show();
						$('.id_overlap_button').hide();
						return;
						
						if ($('.username_input').attr("check_result") == "fail"){
						    alert("아이디 중복체크를 해주시기 바랍니다.");
						    $('.username_input').focus();
						    return false;
						  }
						
					}
				}
			});
		} 
		
	
		
		
		
		
		
	</script>
</body>
</html>