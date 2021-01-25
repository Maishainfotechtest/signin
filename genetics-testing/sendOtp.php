<?php
include "connection.php";
$contact = $_POST['number'];
$countryCode = $_POST['countrycode'];
 
$otp = rand(1111, 9999);

date_default_timezone_set("Asia/Kolkata");   //India time (GMT+5:30)
$date = date('d-m-Y');
$time =  date('H:i:s');
$selTemp = "select * from usertemptable where mobile='$contact'";
$runQry = mysqli_query($conn, $selTemp);
$count = mysqli_num_rows($runQry);
if ($count > 0) {
    echo  1;
} else {
    if (!empty($contact) && !empty($countryCode) ) {
        $insertQuery = "INSERT INTO `usertemptable` (`id`, `countrycode`, `mobile`, `OTP`, `date`, `time`) VALUES (NULL, '$countryCode', '$contact', '$otp', '$date', '$time')";
        $runQry = mysqli_query($conn, $insertQuery);
        if ($runQry) {
            echo "inserted";
        } else {
            echo "not inserted";
        }
    }
   
}
