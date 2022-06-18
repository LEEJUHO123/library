<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<h3 align="center">문의 목록</h3>
	<div class="container">
				<select id="key" name="key">
					<option value="1">전체</option>
					<option value="2">작성자</option>
					<option value="3">문의 제목</option>
					<option value="4">문의 내용</option>
				</select>&nbsp; <input type="text" id="val" name="val">&nbsp; <input
					type="button" value="검색" onclick="search2()" class="btn btn-default">
		<br />
		<div class="container">
			<table class="table table-striped" id="ta">
				<thead >
					<tr>
						<th width="100">게시글 번호</th>
						<th width="100">작성자</th>
						<th width="150">문의 제목</th>
						<th width="100">문의 날짜</th>
					</tr>
				</thead>
				<tbody id="tb">
					<c:forEach items="${list }" var="qna">
						<tr onclick="qnaSelect('${qna.boardNumber}')">
							<td align="center">${qna.boardNumber }</td>
							<td align="center">${qna.id }</td>
							<td align="center">${qna.title }</td>
							<td align="center">${qna.wdate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="btn_group">
			<button type="button" id="bn1" onclick="location.href = 'home.do'" class="btn btn-default btn-xs pull-right">홈가기</button>	
			<button type="button" id="bn2" onclick="location.href='qnaInputForm.do'" class="btn btn-default btn-xs pull-right">문의
				작성하기</button>
			</div>
		</div><br>
		<div>
			<form id="frm" action="qnaSelect.do" method="post">
				<input type="hidden" id="id" name="boardNumber">
			</form>
		</div>
		
	
	</div>
	<script type="text/javascript">
		function search2() {
			$.ajax({
				url : "ajaxSearchList.do",
				type : "POST",
				data : {
					"key" : $("#key").val(),
					"val" : $("#val").val()
				},
				dataType : "json",
				success : function(data) {
					htmlConvert(data);
				},
				error : function() {
					//실패시 구현
				}
			});
		}

		function htmlConvert(data) {
			$("tbody").remove();
			let tb = $("<tbody/>");
			$.each(data, function(index, item) {
				let tr = $("<tr />").append($("<td />").text(item.boardNumber),
						$("<td />").text(item.id),
						$("<td />").text(item.title),
						$("<td />").text(item.content),
						$("<td />").text(item.wdate),
				tb.append(tr);
			});
			$("#ta").append(tb);
		}
</script>
<script type="text/javascript">
	function qnaSelect(boardNumber){
		frm.id.value = boardNumber;
		frm.submit();
	}
</script>
</body>
</html>