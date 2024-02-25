<?php 
session_start();
if(isset($_SESSION['email'])){
session_destroy();
unset($_SESSION['email']);
}
$ref= @$_GET['q'];
header("location:index.php");
?>