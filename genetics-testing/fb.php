
<?php 
//login with facebook 
include('fbinit.php');

$facebook_output = '';

$facebook_helper = $facebook->getRedirectLoginHelper();


?>

/////////////////
http://localhost/ge
//facebook login
include('fbinit.php');
$facebook_output = '';
$facebook_helper = $facebook->getRedirectLoginHelper();
if (isset($_GET['code'])) {
    if (isset($_SESSION['access_token'])) {
        $access_token = $_SESSION['access_token'];
    } else {
        $access_token = $facebook_helper->getAccessToken();

        $_SESSION['access_token'] = $access_token;

        $facebook->setDefaultAccessToken($_SESSION['access_token']);
    }

    $_SESSION['user_id'] = '';
    $_SESSION['user_name'] = '';
    $_SESSION['user_email_address'] = '';
    $_SESSION['user_image'] = '';

    $graph_response = $facebook->get("/me?fields=name,first_name,last_name,email", $access_token);

    $facebook_user_info = $graph_response->getGraphUser();

    if (!empty($facebook_user_info['id'])) {
        $_SESSION['user_image'] = 'http://graph.facebook.com/' . $facebook_user_info['id'] . '/picture';
        $_SESSION['id'] = $facebook_user_info['id'];
        $_SESSION['user_email_address'] = $facebook_user_info['email'];
    }

    if (!empty($facebook_user_info['first_name'])) {
        $_SESSION['first_name'] = $facebook_user_info['first_name'];
    }

    if (!empty($facebook_user_info['last_name'])) {
        $_SESSION['last_name'] = $facebook_user_info['last_name'];
    }

    if (!empty($facebook_user_info['email'])) {
        $_SESSION['user_email'] = $facebook_user_info['email'];
    }

    $fname =  $_SESSION['first_name'];
    $lname =  $_SESSION['last_name'];
    $email = $_SESSION['user_email'];
    echo $_SESSION['user_email_address'];
    $CID =  $_SESSION['id'];

    $joindate = date('Y:m:d');
    $jointime = date("h:i:s");



    $insqry = "INSERT INTO `users` ( `id` ,`cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES ( NULL , '$CID', '$fname', '$lname', '$email', 'yes', ' ', ' ', 'no', ' ', '1', '$joindate', '$jointime', 'active')";

    $run = mysqli_query($conn, $insqry);
    if ($run) { ?>
         <script>alert("success");</script>
    <?php
    } else { ?>
         <script>alert("failed");</script>
        <?php }
} else {
    // Get login url
    $facebook_permissions = ['email']; // Optional permissions

    $facebook_login_url = $facebook_helper->getLoginUrl('http://localhost/genetics-testing/signin.php', $facebook_permissions);

    $_SESSION['facebook-link']= $facebook_login_url;
}