
<?php
 include_once 'dbConnection.php';
session_start();
  if(!(isset($_SESSION['email']))){
header("location:index.php");

}
else
{
$name = $_SESSION['name'];
$email=$_SESSION['email'];

include_once 'dbConnection.php';

}

 $q=mysqli_query($con,"SELECT * FROM history WHERE email='$email' ORDER BY date DESC " )or die('Error197');

$dataPoints = array();

while($row=mysqli_fetch_array($q) )
{
$eid=$row['eid'];
$r=$row['sahi'];
$q23=mysqli_query($con,"SELECT title FROM quiz WHERE  eid='$eid' " )or die('Error208');
while($row=mysqli_fetch_array($q23) )
{
$title=$row['title'];
}

  $dataPoints[] = array('label'=>$title,'y' => $r);

}
//echo json_encode($dataPoints, JSON_NUMERIC_CHECK);


?>

<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Programming Fulfillment"
	},
	data: [{
		type: "pyramid",
		indexLabel: "{label} - {y}",
		yValueFormatString: "#,##0",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>  