<%@page import="co.team.library.member.service.MemberService"%>
<%@page import="co.team.library.member.serviceImpl.MemberServiceImpl"%>
<%@page import="co.team.library.member.vo.MemberVO"%>
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
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    MemberVO vo = new MemberVO();
    vo.setName(name);
    vo.setTel(tel);
	MemberService dao = new MemberServiceImpl();
	String memberMid = dao.findId(vo);
%>

  <form name="idsearch" method="post" align="center">
      <%
       if (memberMid != null) {
      %>

      <div class = "container">
      	<div class = "found-success">
	      <h4>  회원님의 아이디는 </h4><br>
	      <div class ="found-id"><%=memberMid%></div><br>
	      <h4>  입니다 </h4><br><br>
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnLogin" value="로그인" onclick="location.href='loginForm.do'"/>
       	</div>
       </div>
      <%
  } else {
 %>
        <div class = "container">
      	<div class = "found-fail">
	      <h4>  등록된 정보가 없습니다 </h4>  
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnback" value="다시 찾기" onClick="history.back()"/>
 		    <input type="button" id="btnjoin" value="회원가입" onclick="location.href='join.do'"/>
       	</div>
       </div>
       
    <div class = "adcontainer">
	<a href="#" ><img src = "../images/casead.png" /></a>                
</div>   
       <%
  }
 %> 
      </form>
</body>
</html>