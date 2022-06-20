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
	<div>
		<table id="ta">
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
							<button type="button"
								onclick="location.href = 'qnaUpdateForm.do?boardNumber=${qna.boardNumber}'">수정</button>
						</td>
						<td>
							<button type="button"
								onclick="location.href = 'qnaDelete.do?boardNumber=${qna.boardNumber}'">삭제</button>
						</td>
					</c:if>
				</tr>
			</tbody>
		</table>
		<br />
		<div>
			<h3 align="center">답변</h3>
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<th width="100">게시글 번호</th>
						<th width="100">답변 번호</th>
						<th width="100">답변 내용</th>
						<th width="100">답변 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${reply}" var="data">
						<tr>
							<td>${data.boardNumber}</td>
							<td>${data.replyNumber }</td>
							<td>${data.replyContent }</td>
							<td>${data.rdate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<c:if test="${id eq 'abc@abc.com' }">
			<div align="center">
				<div>
					<h3>답변 등록</h3>
				</div>
				<div>
					<form id="frm" action="replyInput.do" method="POST">
						<div>
							<table border="1">
								<tr>
									<th>게시글 번호</th>
									<td><input type="hidden" id="boardNumber"
										name="boardNumber" value="${qna.boardNumber}">${qna.boardNumber}</td>
									<th>작성 일자</th>
									<td><input type="date" id="rdate" name="rdate"
										required="required"></td>
								</tr>

								<tr>
									<th>답변 내용</th>
									<td colspan="3"><textarea rows="6" cols="66"
											id="replyContent" name="replyContent"></textarea></td>
								</tr>
							</table>
						</div>
						<br />
						<div>
							<input type="reset" value="글 지우기">&nbsp;&nbsp; <input
								type="submit" value="답변 저장">&nbsp;&nbsp; <input
								type="button" value="목록으로 돌아가기"
								onclick="location.href='qnaList.do'">
						</div>
						<br />
					</form>
				</div>
			</div>

		</c:if>
		<button type="button" id="bn1" onclick="location.href = 'qnaList.do'"
			class="btn btn-default btn-xs pull-right">목록가기</button>
	</div>

</body>
</html>