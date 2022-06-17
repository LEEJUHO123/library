<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
	<div align="center">
		<div>
			<h3>문의 상세보기</h3>
		</div>
		<br />
	</div>
	<div class="container">
		<table class="table table-striped" id="ta">
			<thead>
				<tr>
					<th width="100">작성자</th>
					<th width="100">문의 제목</th>
					<th width="100">문의 내용</th>
					<th width="100">문의 날짜</th>
					<c:if test="${id eq qna.id}">
						<th width="100">수정</th>
						<th width="100">삭제</th>
					</c:if>
				</tr>
			</thead>
			<tbody id="tb">
				<tr>
					<td align="center">${qna.id }</td>
					<td align="center">${qna.title }</td>
					<td align="center">${qna.content }</td>
					<td align="center">${qna.wdate }</td>
					<c:if test="${id eq qna.id}">
						<td>
							<button type="button" class="btn btn-default btn-xs">수정</button>
						</td>
						<td>
							<button type="button" class="btn btn-default btn-xs">삭제</button>
						</td>
					</c:if>
				</tr>
			</tbody>
		</table>
		<br />
		<table>
			<c:forEach items="${list}" var="reply">
				<tr>
					<td>${reply.content}</td>
					<td>${reply.wdate}</td>
					<td><button type="button">수정</button>
					<td><button type="button">삭제</button>
				</tr>
			</c:forEach>
		</table>

		<form method="post" action="ReplyInput.do">
			<input type="text" id="content"
				name="content" placeholder="댓글 내용" size="30"> <input
				id="id" name="id" value="${reply.id}"
				type="hidden"> <input type="button"
				onclick="ReplyInsert()" value="등록">
		</form>
		<button type="button" id="bn1" onclick="location.href = 'qnaList.do'"
			class="btn btn-default btn-xs pull-right">목록가기</button>
	</div>

</body>
</html>