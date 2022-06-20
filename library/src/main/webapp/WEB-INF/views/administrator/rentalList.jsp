<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대여확인 게시판</title>
</head>
<body>
	<form>
		<div align="center">
	<div class="col-lg-12">
		<div class="section-title from-blog__title">
			<h2>대여목록 게시판</h2>
			<p>
		</div>
	</div>

			<div class="container">
				<table width="100%" class="table table-striped">
					<thead>
						<tr align="center">
							<th>아이디</th>
							<th>책 코드</th>
							<th>대여날짜</th>
							<th>반납날짜</th>
							<th>대여횟수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${members }" var="m">
							<tr align="center">
								<td>${m.id }</td>
								<td>${m.bookCode }</td>
								<td>${m.rentalDate }</td>
								<td>${m.returnDate }</td>
								<td>${m.returnOrNot }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button type="button" onclick="location.href='admin.do'" class="btn btn-outline-danger" >뒤로가기</button>

				<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a
							href="rentalList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="rentalList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="rentalList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>
				</div>
				
			</div>

		</div>
	</form>
	</body>
</html>