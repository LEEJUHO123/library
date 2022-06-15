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
	<div align="center">
		<h1>블랙리스트 추가</h1>
		<p>
			미납날짜가 많은(긴) 회원을 블랙리스트로 추가하는 게시판입니다.
		</p>
		<div>
			<div>
				<h6>블랙리스트 추가 목록</h6>
			</div>
				<div>
					<table border="1" width="100%">
						<thead>
							<tr>
								<th>아이디</th>
								<th>비밀번호</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>주소</th>
								<th>미납횟수</th>
								<th>블랙리스트 추가<th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${members }" var="m">
								<tr>
									<td>${id }</td>
									<td>${password }</td>
									<td>${name }</td>
									<td>${tel }</td>
									<td>${address }</td>
									<td>${overdue }</td>
									<td><input type='button'  value='추가' onclick='black' /></td>
								</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
		</div>
	</div>
		<script type="text/javascript">
    function black() {
    	
    }
    </script>

</body>
</html>