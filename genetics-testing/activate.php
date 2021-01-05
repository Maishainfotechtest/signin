 <?php
 include 'connection.php';
 session_start();
    if (isset($_GET['cid'])) {
        $cid = $_GET['cid'];
        
        $activateAcc = " UPDATE `users` SET `email_verify` = 'yes' WHERE `users`.`cid` = '$cid'";
        $run = mysqli_query($conn, $activateAcc);
        if ($run) {
          
           $_SESSION['activated'] = "Thankyou! your Email is verified";
           header("location: http://localhost/genetics-testing/signin.php");
        }else{
            echo "account not activated";
        }
    }
    ?>