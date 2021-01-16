<?php 
//login with google 
include 'config.php';

if (isset($_GET["code"])) {

    $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);


    if (!isset($token['error'])) {

        $google_client->setAccessToken($token['access_token']);


        $_SESSION['access_token'] = $token['access_token'];


        $google_service = new Google_Service_Oauth2($google_client);


        $data = $google_service->userinfo->get();


        if (!empty($data['given_name'])) {
            $_SESSION['user_first_name'] = $data['given_name'];
        }

        if (!empty($data['family_name'])) {
            $_SESSION['user_last_name'] = $data['family_name'];
        }

        if (!empty($data['email'])) {
            $_SESSION['user_email_address'] = $data['email'];
        }

        if (!empty($data['gender'])) {
            $_SESSION['user_gender'] = $data['gender'];
        }

        if (!empty($data['picture'])) {
            $_SESSION['user_image'] = $data['picture'];
        }

        $name = $_SESSION['user_first_name'];
        $lname = $_SESSION['user_last_name'];
        $email = $_SESSION['user_email_address'];
        $CID = $_SESSION['access_token'];

        $joindate = date('Y:m:d');
        $jointime = date("h:i:s");



        $insqry = "INSERT INTO `users` ( `id` ,`cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES ( NULL , '$CID', '$name', '$lname', '$email', 'no', ' ', ' ', 'no', ' ', '1', '$joindate', '$jointime', 'active')";

        $run = mysqli_query($conn, $insqry);
        if ($run) { ?>
            <div id="alertbox" class="alert alert-success " role="alert">
                <strong> Sucess .</strong> Registration Completed . Please Verify your Email.
                <button type="button" onclick="exitdiv()" style="color: #46a75d;;background-color: #d4edda;margin-top: 0px;font-size: 25px;border-radius: 33px; padding:2px 21px;">&times;</button>
            </div>
        <?php
        } else { ?>
            <div id="alertbox" class="alert alert-danger    " role="alert">
                <strong> OPPS!</strong> Email Already Exist ! Please login in your account.
                <button type="button" onclick="exitdiv()" style="color: #ca4f20;background-color: #f8d7da;margin-top: 0px;font-size: 25px;border-radius: 33px; padding:2px 21px;">&times;</button>
            </div>
        <?php }
    }
}

?>
 <div class="google_plus">
                                            <a href="<?php echo  $google_client->createAuthUrl() ?>"><img src="images/gmail-icon.png" alt="">Login with Gmail</a>
                                        </div>