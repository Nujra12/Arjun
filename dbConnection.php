<?php
//all the variables defined here are accessible in all the files that include this one
	
$con= new mysqli('127.0.0.1','root','','project')or die("Could not connect to mysql".mysqli_error($con));
?>