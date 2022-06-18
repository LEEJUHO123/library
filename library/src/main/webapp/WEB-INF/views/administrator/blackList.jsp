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

	<div class="container-fluid">
		<h1 class="h3 mb-2 text-gray-800">블랙리스트 추가</h1>
		<p class="mb-4">
			미납날짜가 긴 회원을 블랙리스트로 추가하는 게시판입니다.
		</p>
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">블랙리스트 추가 목록</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>아이디</th>
								<th>비밀번호</th>
								<th>이름</th>
								<th>전화번호</th>
								<th>주소</th>
								<th>미납날짜</th>
								<th>블랙리스트 추가<th>
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
									<td>${m.rentaldate }</td>
									<td><input type='button' value='추가' onclick='' /></td>
								</tr>
								</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
    // 페이지 생성
    function makePage(ary) {
      //검색시 밑에 생기는 숫자 없애주기
      document.querySelectorAll('#show>a').forEach(el => el.remove());

      let show = document.getElementById('show');
      //ary => 21 : 1, 2 page, 20이면 =>2, 21 => 2.1
      let totalPage = Math.ceil(ary.length / 10); // ceil 올림해준다
      for (let i = 1; i <= totalPage; i++) {
        let a = document.createElement('a');
        a.addEventListener('click', function (e) {
          e.preventDefault(); //기본기능 차단
          let page = e.target.innerText;
          document.getElementById('tbl').append(makeBody(ary, page));
        })
        a.innerHTML = i;
        a.setAttribute('href', '#');
        show.append(a);
      }
    }
  </script>
	</script>

</body>
</html>