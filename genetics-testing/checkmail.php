<?php 
include 'connection.php';
$email =  $_POST['email'];

if (!empty($email)) {
    $sel = "SELECT * FROM `users` WHERE email = '$email'";
    $runQry  = mysqli_query($conn , $sel);
    $rows = mysqli_num_rows($runQry);

    if ($rows>0) {
        echo  "**email already exist";
    }else{
        echo "invalid";
    }
     
}
?>