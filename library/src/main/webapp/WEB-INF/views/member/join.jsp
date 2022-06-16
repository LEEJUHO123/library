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
	<div class="container" align="center">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="joinAction.do">
					<font size="6" color="gray" style="text-align: center;">회원가입</font><br>
					<br>
					<div class="form-group">

						<div class="form-group">
							<label for="id">아이디</label> <input type="email"
								class="form-control" id="id" name="id"
								placeholder="아이디(이메일 형식)" required>
							<div class="check_font" id="id_check"></div>
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
					<div class="form-group">
						<input type="text" id="name" class="form-control" placeholder="이름"
							name="name" maxlength="4" required>
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
						<input type="tel" id="tel" class="form-control"
							onKeyup="addHypen(this);" placeholder="휴대폰 번호 (-없이 입력하세요)"
							name="tel" maxlength="13" required>
					</div>

					<div class="form-group">
						<input type="address" id="address" class="form-control"
							placeholder="주소" name="address" maxlength="50" required><br>
					</div>

					<input type="submit" class="btn btn-primary form-control"
						value="가입하기">


				</form>
				<br> <input type="submit" class="btn btn-primary form-control"
					value="취소" onclick="location.href='home.do'">
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/addHypen.js"></script>
	<script type="text/javascript" src="js/joinJoin.js"></script>
	<script type="text/javascript">
		/* function openIdChk(){                    
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
		} */

		/* function id_overlap_check() {

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
				url : "{% url 'member:id_overlap_check' %}",
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
					}
				}
			});
		} */
		
		// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
		$("#user_id").blur(function() {
			// id = "id_reg" / name = "userId"
			var user_id = $('#user_id').val();
			$.ajax({
				url : '${pageContext.request.contextPath}/user/idCheck?userId='+ user_id,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#id_check").text("사용중인 아이디입니다 :p");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else {
							
							if(idJ.test(user_id)){
								// 0 : 아이디 길이 / 문자열 검사
								$("#id_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} else if(user_id == ""){
								
								$('#id_check').text('아이디를 입력해주세요 :)');
								$('#id_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
								$('#id_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
		
		
		
		
		
	</script>
</body>
</html>