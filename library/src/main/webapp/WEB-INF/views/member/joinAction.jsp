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
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    String address =(String) request.getParameter("roadAddress")+" "
    				+ (String) request.getParameter("jibunAddress")+ " "
    				+ (String) request.getParameter("detailAddress");
    String postCode = (String) request.getParameter("postCode");
    
     MemberVO vo = new MemberVO();
    vo.setId(id);
    vo.setPassword(password);
    vo.setName(name);
    vo.setTel(tel);
    vo.setAddress(address);
	MemberService dao = new MemberServiceImpl();
	int joinAccount = dao.join(vo); 
	
%>
<div align="center">
<font color="blue" ><%=name%></font>님의 가입을 축하드립니다.

<br><br>
<input type="button" value ="로그인 하기" onclick="location.href='loginForm.do'"><br>
<input type="button" value ="홈으로" onclick="location.href='home.do'">

</div>




</body>
</html>