<?php
include 'connection.php';

$name = $_POST['name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$feedMsg = $_POST['message'];

date_default_timezone_set("Asia/Kolkata");   //India time (GMT+5:30)
$date = date('d-m-Y');

$time =  date('H:i:s');
if (!empty($name) && !empty($phone) && !empty($email) && !empty($feedMsg) && !empty($subject)) {
    $insertQuery = "INSERT INTO `userfeedback` (`id`, `name`, `phone`, `email`, `subject`, `message`, `date`, `time`, `status`) VALUES (NULL, '$name', '$phone', '$email', '$subject', '$feedMsg', '$date', '$time', 'pending')";

    $runQuery = mysqli_query($conn, $insertQuery);
    if ($runQuery) {
        echo '<p class="text-success text-center  text-capitalize">your feedback is succesfully sent . Thankyou!</p>';
    } else {
        echo '<p class="text-danger  text-center text-capitalize"> sorry Error Occured  . Try Again!</p>';
    }
}else{
    echo '<p class="text-danger text-capitalize text-center ">  Please fill all input fields . Try Again!</p>';
}
