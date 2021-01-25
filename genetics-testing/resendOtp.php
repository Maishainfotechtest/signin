<?php
include 'connection.php';
$contact = $_POST['contact'];
$resend = $_POST['resend'];
$otp = rand(1111, 9999);
if (!empty($resend)) {
    $updateOtp = "update `usertemptable` set OTP = '$otp' where mobile ='$contact'";
    $runQry = mysqli_query($conn, $updateOtp);
    if ($runQry) {
        echo "updated otp";
    } else {
        echo "OTP not updated ";
    }
}
