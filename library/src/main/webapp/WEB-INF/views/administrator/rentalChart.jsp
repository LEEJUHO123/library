<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차트 현황</title>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart); // drawChart에 매개함수를 넣겠다

      function drawChart() {
            let result = [];
			$.ajax({
            url: "rental.do",
            type : "POST",
            dataType: "json",
            success : function(data){
            	result.push(['책이름', '대여현황']);
            	for(let resultData of data){
            		let resultList = new Array();
            		resultList.push(resultData.bookTitle);
            		resultList.push(resultData.rentalCount);
            		result.push(resultList);
            	}
				
            	var options = {
					title: '대여별 차트 현황'
				};
            	
            	var data1 = google.visualization.arrayToDataTable(result);
            	var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            	chart.draw(data1, options);

            }, error:function(){
            	alert("에러");
            }
            })
        }
</script>

</head>
<body>
	<div class="col-lg-12" >
		<div class="section-title from-blog__title">
			<h2>대여별 차트 현황</h2>
			<p>
		</div>
	</div>
	<div id="piechart" style="margin:auto;  width: 900px; height: 500px;"></div>
	<div class="container">
	<button type="button" onclick="location.href='admin.do'" class="btn btn-outline-danger" >뒤로가기</button>
	</div>
</body>
</html>