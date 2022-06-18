<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<h1>회원 목록보기</h1>
		<p>관리자만 볼 수 있는 회원정보 및 목록보기 게시판입니다.</p>
		<div>
			<div>
				<h6>회원 목록</h6>
			</div>
				<div>
					<table border="1">
						<thead>
							<tr>
								<th>아이디</th>
								<th>비밀번호</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>주소</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${members }" var="m">
							<tr>
								<td>${m.id }</td>
								<td>${m.password }</td>
								<td>${m.name }</td>
								<td>${m.tel }</td>
								<td>${m.address }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
		</div>
	</div>

</body>
</html>