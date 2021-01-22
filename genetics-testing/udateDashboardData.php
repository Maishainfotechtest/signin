<?php
include 'connection.php';
//updating userdata 
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$mobile = $_POST['contact'];
$country = $_POST['country'];
$state = $_POST['state'];
$email = $_POST['email'];
$city = $_POST['city'];
$address = $_POST['address'];

if (!empty($fname) && !empty($lname) && !empty($mobile) && !empty($country) && !empty($state) && !empty($city) && !empty($address)) {
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $mobile = $_POST['contact'];
    $country = $_POST['country'];
    $state = $_POST['state'];
    $email = $_POST['email'];
    $city = $_POST['city'];
    $address = $_POST['address']; 

    $updateQuery = "UPDATE `users` SET `f_name`= '$fname',`l_name`= '$lname', `countrycode`='$country',`state`='$state',`city`='$city',`address`='$address' , `mobile`='$mobile' WHERE email='$email'";

    $runQuery = mysqli_query($conn, $updateQuery);
    if ($runQuery) {
        echo '<p class="text-success text-capitalize"> Data updated </p>';  
    } else {
      echo '<p class="text-danger text-capitalize"> Data update failed </p>';   
    }
}else{
    echo '<p class="text-danger text-capitalize">Please enter all fields </p>';
}
