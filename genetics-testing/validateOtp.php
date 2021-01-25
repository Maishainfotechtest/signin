<?php 
include "connection.php";
$userOtp = $_POST['userOtp'];
$usernumber = $_POST['contact'];
if (!empty($userOtp)) {
    $checkOtp = "SELECT * FROM `usertemptable` WHERE OTP = '$userOtp'";
    $runQry = mysqli_query($conn,$checkOtp);
    $countRows = mysqli_num_rows($runQry);
    if ($countRows>0) {
      $updateUser = "UPDATE `users` SET `mobile_verify`='yes'  WHERE mobile ='$usernumber'"; 
      
      $runQry =mysqli_query($conn,$updateUser);
      if ($runQry) {
          $delOtpdata = "UPDATE `usertemptable` SET `OTP` = '' WHERE  OTP = $userOtp;";
          $runDelQry = mysqli_query($conn,$delOtpdata);
          echo 1;
      }
    }else{
        echo  0;
    }
}
?>