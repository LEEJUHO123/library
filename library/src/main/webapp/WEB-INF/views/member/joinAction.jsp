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
String address = request.getParameter("roadAddress")+" "
				+ request.getParameter("jibunAddress")+ " "
				+ request.getParameter("detailAddress");
String postCode = request.getParameter("postCode");
	 System.out.println(address);
 MemberVO vo = new MemberVO();
vo.setId(id);
vo.setPassword(password);
vo.setName(name);
vo.setTel(tel);
vo.setAddress(address);
vo.setPostCode(postCode);
MemberService dao = new MemberServiceImpl();
int joinAccount = dao.join(vo); 
%>
<div align="center"><br><br>
<font color="blue" size ="6"><%=name%></font><font size="5">님의 가입을 축하드립니다.</font>

<br><br><br><br>
<input type="button" value ="로그인 하기" onclick="location.href='loginForm.do'" style="margin-right: 50px; padding: 5px; padding-right:15px; padding-left:15px">
<input type="button" value ="홈으로" onclick="location.href='home.do'" style="padding: 5px; padding-right:15px; padding-left:15px">

</div><br><br><br>




</body>
</html>