<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/highcharts.js"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
	<div id="section1">
		<h2>Modules</h2>
		<hr>
		<label for="ENR062A3">
			<input type="checkbox" name="ENR062A3" id="ENR062A3"> ENR062A3
		</label>
		<br>
		<label for="ENR04CA0">
			<input type="checkbox" name="ENR04CA0" id="ENR04CA0"> ENR04CA0
		</label>
		<br>
		<label for="ENR077A9">
			<input type="checkbox" name="ENR077A9" id="ENR077A9"> ENR077A9
		</label>
	</div>
	<div id="section2">
		<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>
	<script type="text/javascript">
		$(function(){
			Highcharts.chart('container', {
			  chart: {
			    type: 'column'
			  },
			  title: {
			    text: 'Weekly PA'
			  },
			  subtitle: {
			    text: 'Source: WorldClimate.com'
			  },
			  xAxis: {
			    categories: [
			      'Mon',
			      'Tue',
			      'Wed',
			      'Thu',
			      'Fri',
			      'Sat',
			      'Sun'
			    ],
			    crosshair: true
			  },
			  yAxis: {
			    min: 0,
			    title: {
			      text: 'Puissance appelée (kW)'
			    }
			  },
			  tooltip: {
			    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			      '<td style="padding:0"><b>{point.y:.1f} kW</b></td></tr>',
			    footerFormat: '</table>',
			    shared: true,
			    useHTML: true
			  },
			  plotOptions: {
			    column: {
			      pointPadding: 0.2,
			      borderWidth: 0
			    }
			  },
			  series: [{
			    name: 'ENR062A3',
			    data: [49.9, 71.5, 106.4, 229.2, 144.0, 176.0, 135.6]

			  }, {
			    name: 'ENR04CA0',
			    data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0]

			  }, {
			    name: 'ENR077A9',
			    data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0]
			  }]
			});
		});
	</script>
</body>
</html>