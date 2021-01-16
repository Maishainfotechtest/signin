<?php
include 'connection.php';
 
$name = $_POST['name'];
$email = $_POST['email'];
$cid = $_POST['cid'];
 echo $name . $email . $cid;

$subject = "Verification Mail ";
$body = "Hi , $name click on the link to activate your account : http://localhost/genetics-testing/activate.php?cid=$cid";
$headers = "From : maishainfotech123@gmail.com";

$send_email = mail($email,$subject,$body,$headers);

echo ($send_email) ? 'success' : 'error';
 
?>