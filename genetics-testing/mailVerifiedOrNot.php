<?php
include "connection.php"; 
$userEmail = $_POST['email'];

if (isset($userEmail)) {
    $select = "select * from users where email='$userEmail'";
    $run = mysqli_query($conn ,$select);
    $data = mysqli_fetch_assoc($run);
    $isverified = $data['email_verify'];

    if ($isverified == "yes") {echo 1;
    }else {echo  0;}
}
?>