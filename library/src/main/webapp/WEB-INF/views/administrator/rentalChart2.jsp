<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>대여차트 현황</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

</head>
<body>
	<div class="main">
		<div class="chart-container"
			style="position: relative; height: 40vh; width: 80vw">
			<canvas id="test1"></canvas>
		</div>
		<script>
			var ctx = document.getElementById('test1').getContext('2d');
			var chart = new Chart(ctx, {
				// The type of chart we want to create
				type : 'pie',

				// The data for our dataset
				data : {
					labels : [ '철학서적', '종교서적', '인문사회', '순수문학', '언어관련', '일반문학' ],
					datasets : [ {
						label : '실시간 차트 현황',
						backgroundColor : [ 'rgba(255, 99, 132, 0.5)',
								'rgba(54, 162, 235, 0.5)',
								'rgba(255, 206, 86, 0.5)',
								'rgba(75, 192, 192, 0.5)',
								'rgba(153, 102, 255, 0.5)',
								'rgba(255, 159, 64, 0.5)' ],
						borderColor : [ 'rgb(255, 99, 132,1.5)',
								'rgba(54, 162, 235, 1.5)',
								'rgba(255, 206, 86, 1.5)',
								'rgba(75, 192, 192, 1.5)',
								'rgba(153, 102, 255, 1.5)',
								'rgba(255, 159, 64, 1.5)' ],
						data : [ 1000, 1600, 2700, 3400, 4900, 6000 ]
					} ]
				},

				// Configuration options go here
				options : {
					title : {
						display : true,
						text : '★방문해 주셔서 감사합니다★',
						fontSize : 30,
						fontColor : 'rgba(46, 49, 49, 1)'
					},
					legend : {
						labels : {
							fontColor : 'rgba(83, 51, 237, 1)',
							fontSize : 15
						}
					},
					scales : {
						xAxes : [ {
							ticks : {
								fontColor : 'rgba(27, 163, 156, 1)',
								fontSize : '15'
							}
						} ],
						yAxes : [ {
							ticks : {
								beginAtZero : true,
								fontColor : 'rgba(246, 36, 89, 1)',
								fontSize : '15'
							}
						} ]
					}
				}
			});
		</script>
	</div>
</body>
</html>