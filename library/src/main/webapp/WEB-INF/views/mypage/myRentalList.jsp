<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body, div, span, applet, object, iframe, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	outline: none;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

html {
	overflow-y: scroll;
}

body {
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 62.5%;
	line-height: 1;
	color: #585858;
	padding: 22px 10px;
	padding-bottom: 55px;
}

::selection {
	background: #5f74a0;
	color: #fff;
}

::-moz-selection {
	background: #5f74a0;
	color: #fff;
}

::-webkit-selection {
	background: #5f74a0;
	color: #fff;
}

br {
	display: block;
	line-height: 1.6em;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

ol, ul {
	list-style: none;
}

input, textarea {
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	outline: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

strong, b {
	font-weight: bold;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

img {
	border: 0;
	max-width: 100%;
}

/** page structure **/
#wrapper {
	display: block;
	background: #fff;
	margin: 0 auto;
	margin-bottom : 20px;
}

#keywords {
	margin: 0 auto;
	font-size: 1.2em;
	margin-bottom: 15px;
}

#keywords thead {
	background: #f5f5f5;
}

#keywords thead tr th {
	font-weight: bold;
	padding: 12px 30px;
	padding-left: 42px;
	text-align : center;
}

#keywords thead tr th span {
	padding-right: 20px;
	background-repeat: no-repeat;
	background-position: 100% 100%;
}

#keywords thead tr th.headerSortUp, #keywords thead tr th.headerSortDown
	{
	background: #acc8dd;
}

#keywords tbody tr {
	color: #555;
}

#keywords tbody tr td {
	text-align: center;
	padding: 15px 10px;
}

#keywords tbody tr td.lalign {
	text-align: left;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col-lg-12">
			<div class="section-title from-blog__title">
				<h2>나의 대출 이력</h2>
			</div>
			<body>
				<div id="wrapper">

					<table id="keywords" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								<th><span>순번</span></th>
								<th><span>책 제목</span></th>
								<th><span>대출일자</span></th>
								<th><span>반납일자</span></th>
								<th><span>반납여부</span></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${rentalList }" var="rental" varStatus="status">
								<tr>
									<td>${fn:length(rentalList) - status.index}</td>
									<td>${rental.bookTitle }</td>
									<td>${rental.rentalDate }</td>
									<td>${rental.returnDate }</td>
									<td>
										<c:choose>
											<c:when test="${rental.returnOrNot == 0}">대출중</c:when>
											<c:otherwise>반납완료</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</body>
		</div>
	</div>
</body>
</html>