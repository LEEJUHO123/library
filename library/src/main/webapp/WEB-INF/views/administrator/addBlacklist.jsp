<%@page import="co.team.library.member.serviceImpl.MemberServiceImpl"%>
<%@page import="co.team.library.member.service.MemberService"%>
<%@page import="co.team.library.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙리스트 추가 게시판</title>
</head>
<body>
<%
 request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
   
     MemberVO vo = new MemberVO();
    vo.setId(id);


	MemberService dao = new MemberServiceImpl();	
%>




	<div align="center">
	<div class="col-lg-12">
		<div class="section-title from-blog__title">
			<h2>블랙리스트 추가 게시판</h2>
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
							<th>블랙리스트 추가</th>
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
								<td><button type="button" name="black" id="black" class="btn btn-outline-primary">블랙</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button type="button" onclick="location.href='admin.do'" class="btn btn-outline-danger" >뒤로가기</button>

				<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a
							href="addBlacklist.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="addBlacklist.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="addBlacklist.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
					</c:if>
				</div>

			</div>
		</div>

	<script type="text/javascript">
	document.getElementById('black').addEventListener('click',function(e){
		console.log(e.target);
		let blackId = e.target.parentElement.parentElement.children[0].innerText;
		console.log(blackId);
		
		$.ajax({
            url : 'run.do',
            method : 'POST',
            dataType : 'json',
            data : {
                "blackId" : blackId
            },
             success : function(data) {
            	 console.log(data);
            	 if(data == 1){
                	alert('수정 완료되었습니다.');
                	window.location.href = 'addBlacklist.do';
             	}else{
					alert('수정실패')
				}
			 	}
   		});
		
	})
	
	</script>


</body>
</html>