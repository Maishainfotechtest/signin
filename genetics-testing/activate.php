 <?php
 include 'connection.php';
    if (isset($_GET['cid'])) {
        $cid = $_GET['cid'];
        $activateAcc = " UPDATE `users` SET `email_verify` = 'yes' WHERE `users`.`cid` = '$cid'";
        $run = mysqli_query($conn, $activateAcc);
        if ($run) {
           header("location:mailVerify.php");
        }else{
            echo "account not activated";
        }
    }
    ?>