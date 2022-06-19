<%@page import="co.team.library.member.vo.MemberVO"%>
<%@page import="co.team.library.member.service.MemberService"%>
<%@page import="co.team.library.member.serviceImpl.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");     
    String tel = request.getParameter("tel");
     
 MemberVO vo = new MemberVO();
 vo.setId(id);
 vo.setTel(tel);
	MemberService dao = new MemberServiceImpl();
	String pwd = dao.findPw(vo);

 
%>

<form name="idsearch" method="post">
      <%
       if (pwd != null) {
      %>
      <div class = "container" align = "center">
      	<div class = "found-success"><br>
	      <h4>회원님의 비밀번호는 </h4><br>
	      <div class ="found-id"> <%=pwd%></div><br>
	      <h4>  입니다 </h4>
	     </div><br>
	     <div class = "found-login">
 		    <input type="button" class="btn btn-info" id="btnLogin" value="로그인" onclick="location.href='loginForm.do'" style="padding: 5px; padding-right:15px; padding-left:15px"/>
       	</div>
       </div><br><br>
      <%
  } else {
 %>
        <div class = "container" align = "center">
      	<div class = "found-fail">
	      <h4>  등록된 정보가 없습니다 </h4>  
	     </div><br><br><br>
	     <div class = "found-login">
 		    <input type="button" class="btn btn-secondary" id="btnback" value="다시 찾기" onClick="location.href='findPw.do'" style="margin-right: 50px; padding: 5px; padding-right:15px; padding-left:15px"/>
 		    <input type="button"  class="btn btn-success" id="btnjoin" value="회원가입" onclick="location.href='join.do'" style="padding: 5px; padding-right:15px; padding-left:15px"/>
       	</div>
       </div><br><br>
       
<div class = "adcontainer">
<!-- 	<a href="#" ><img src = "../images/casead.png" /></a>       -->          
</div>
       
       <%
  }
 %> 
      </form>
</body>
</html>