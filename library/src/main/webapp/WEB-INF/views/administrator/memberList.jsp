<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<div align="center">
			<h1>회원 목록보기</h1>
			<p>관리자만 볼 수 있는 회원정보 및 목록보기 게시판입니다.</p>
			<div>
				<h6>회원 목록</h6>
			</div>
			<div>
				<table border="1" width="90%">
					<thead>
						<tr>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>미납횟수</th>
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
								<td>${m.delayCount }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a
							href="memberList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="memberList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="memberList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>
				</div>
				
			</div>

		</div>
	</form>
</body>
</html>