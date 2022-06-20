<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙리스트 목록</title>
</head>
<body>

	<div align="center">
	<div class="col-lg-12">
		<div class="section-title from-blog__title">
			<h2>블랙리스트 목록</h2>
			<p>
		</div>
	</div>
				<div class="container">
					<table width="100%" class="table table-striped">
						<thead>
							<tr align="center">
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
								<tr align="center">
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
					
					<button type="button" onclick="location.href='admin.do'" class="btn btn-outline-danger" >뒤로가기</button>

					<div style="display: block; text-align: center;">
						<c:if test="${paging.startPage != 1 }">
							<a
								href="blackList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
						</c:if>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
							var="p">
							<c:choose>
								<c:when test="${p == paging.nowPage }">
									<b>${p }</b>
								</c:when>
								<c:when test="${p != paging.nowPage }">
									<a
										href="blackList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.endPage != paging.lastPage}">
							<a
								href="blackList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
						</c:if>
					</div>
				</div>
			</div>
</body>
</html>