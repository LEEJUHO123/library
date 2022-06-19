<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      let result = []; // 제일먼저 result 값을 만들어서
      result.push(['부서명', '부서인원']);
      let xhtp = new XMLHttpRequest();
      xhtp.open('get', '../ChartSevlet'); // 경로(파일위치)가 매우 중요
      xhtp.send();
      xhtp.onload = function(){
    	  let data1 = JSON.parse(xhtp.responseText);
    	  for (let field in data1){
    		  result.push([field, data1[field]]);
    	  }
        var data = google.visualization.arrayToDataTable(result);
        var options = {
          title: '부서별 인원현황'
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        chart.draw(data, options);
      }
   }
    </script>

</head>
<body>
	<div id="piechart" style="width: 900px; height: 500px;"></div>
</body>
</html>