<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#btn_group button{
	margin: 5px;
}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center">
	<div><h3>문의 상세보기</h3></div>
	<br />
	<div class="container" align="center">
			<table class="table table-striped" id="ta">
				<thead>
					<tr>
						<th width="100">작성자</th>
						<th width="150">문의 제목</th>
						<th width="150">문의 내용</th>
						<th width="100">문의 날짜</th>
					</tr>
				</thead>
				<tbody id="tb">
					<c:forEach items="${list }" var="qna">
							<td align="center">${qna.id }</td>
							<td align="center">${qna.title }</td>
							<td align="center">${qna.content }</td>
							<td align="center">${qna.wdate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="btn_group">
			<button type="button" id="bn1" onclick="location.href = 'home.do'" class="btn btn-default btn-xs pull-right">홈가기</button>	
			<button type="button" id="bn2" onclick="location.href='qnaList.do'" class="btn btn-default btn-xs pull-right">문의목록</button>
			</div>
</div>
</body>
</html>