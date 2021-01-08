<?php

include('includes/header.php');
include 'connection.php';
//Facebook – Youturn Genetics 
//ID- 9310320173
//Password- gaurav@0011

//login with google 

include 'config.php';
if (isset($_GET["code"])) {

    $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);


    if (!isset($token['error'])) {

        $google_client->setAccessToken($token['access_token']);


        $_SESSION['access_token'] = $token['access_token'];


        $google_service = new Google_Service_Oauth2($google_client);


        $data = $google_service->userinfo->get();

        if (!empty($data['id'])) {
            $_SESSION['id'] = $data['id'];
        }

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
        $CID = $_SESSION['id'];

        $joindate = date('Y:m:d');
        $jointime = date("h:i:s");



        $insqry = "INSERT INTO `users` (`id`, `cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES (NULL, '$CID', '$name', '$lname', '$email', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active')";
        $run = mysqli_query($conn, $insqry);
        if ($run) { ?>
            <!-- fURTHER CODE GOES HERE -->
        <?php
        } else { ?>
            <!-- fURTHER CODE GOES HERE -->
        <?php }
    }
}
//login to account
$msg = " ";
if (isset($_POST['login'])) {
    $emailCheck = $_POST['email_verify'];
    $passCheck = $_POST['password_check'];

    $sql = " select * from `users` where `email` = '$emailCheck' and `password` = '$passCheck' ";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $verify = $row['email_verify'];

    $username = $row['f_name'];

    $count = mysqli_num_rows($result);

    // If result matched $myusername and $mypassword, table row must be 1 row

    if ($count == 1 && $verify == 'yes') {
        $_SESSION['username'] =  $username;

        ?>
        <script>
            window.location.replace("http://localhost/genetics-testing/index.php");
        </script>
    <?php

    }
    if ($count == 1 && $verify == 'no') {
        echo   $_SESSION['nonverified'] = $username   . " Please Verify your Account";
    } else {
        $msg = " invalid email id or password  " . mysqli_error($conn);
    }
}

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

    $CID = "fb" . $_SESSION['id'];

    $joindate = date('Y:m:d');
    $jointime = date("h:i:s");

    $CheckEmail = "SELECT * FROM users where email = '$email'";
    $runqry = mysqli_query($conn, $CheckEmail);
    $fbrow = mysqli_num_rows($runqry);
    $fbdata = mysqli_fetch_array($runqry);

    if ($fbrow == 1) {
        $_SESSION['username'] = $fbdata['f_name'];
    ?>
        <script>
            window.location.replace("http://localhost/genetics-testing/");
        </script>
        <?php
    } else {
        $insqry = "INSERT INTO `users` (`id`, `cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES (NULL, '$CID', '$fname', '$lname', '$email', 'yes', NULL, NULL, NULL, NULL, NULL, '$joindate', '$jointime', 'active')";

        $run = mysqli_query($conn, $insqry);
        if ($run) {
            $_SESSION['username'] = $fname;
        ?>
            <script>
                window.location.replace("http://localhost/genetics-testing/");
            </script>
        <?php
        } else { ?>
            <!-- fURTHER CODE GOES HERE -->
<?php }
    }
} else {
    // Get login url
    $facebook_permissions = ['email']; // Optional permissions

    $facebook_login_url = $facebook_helper->getLoginUrl('http://localhost/genetics-testing/signin.php', $facebook_permissions);

    $_SESSION['facebook-link'] = $facebook_login_url;
}


?>

<!--site-main start-->

<section class="login_bg">
    <div class="container-fluid">
        <div class="col-sm-9 login_main">

            <div class="row">
                <div id="login" style="display: block;">
                    <div class="row">
                        <div class="col-lg-6 col-sm-12">
                            <div class="register">
                                <div class="heading">Don't Have an account?</div>
                                <p>Don’t have an account? Create your youturn Account using your email address and password today. </p>
                                <a href="#" class="btn register_btn" id="register_fo">Sign Up</a>
                            </div>

                        </div>
                        <!--login-->
                        <div class="col-sm-12 col-lg-6">
                            <div class="login">
                                <div class="heading">Member Login</div>

                                <form action="" method="post" id="login_form" name="">

                                    <div class="form-group">
                                        <input type="text" name="email_verify" class="form-control" placeholder="Email">
                                        <p id="login_msg " class="text-capitalize text-danger"><?php echo $msg; ?></p>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password_check" class="form-control" placeholder="Password">

                                        <a href="forgetPassword.php" style="color:#012b72; font-size:13px; float:right;">Forgot your password?</a>

                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <label style="font-weight:400; float:none; text-align:left;" class="sign_up"><input type="checkbox" name="">Remember me</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="login" id="submit" class="btn">Log In</button>
                                    </div>
                                    <div class="form-group">
                                        <div class="middle"><span>or</span></div>
                                        <div class="facebook">
                                            <a href="<?php echo  $facebook_login_url; ?>"><img src="images/facebook-icon.png" alt="">Login with Facebook</a>
                                        </div>
                                        <div class="google_plus">
                                            <a href="<?php echo  $google_client->createAuthUrl() ?>"><img src="logo.jpg" alt="">Login with Gmail</a>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>

                    </div>

                </div>

                <!--end login-->

                <div id="register" style="display: none;">
                    <div class="row">
                        <!--login-->
                        <div class="col-sm-12 col-lg-7">
                            <div class="login">
                                <div class="row">
                                    <div class="heading col-sm-12">Member Registration</div>
                                </div>
                                <form action="#" method="post" id="registration_form">
                                    <p id="reg_msg"></p>
                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="fname" id="f_name" value="" class="form-control  " placeholder="Enter Your First Name" onkeyup="FirstNameValidation()" required>
                                            <p class="text-danger SigninMsg text-capitalize" id="f_nameError"> </p>
                                            <p class="text-success   SigninMsg text-capitalize" id="f_name_sucess"></p>
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="lname" id="l_name" value="" class="form-control   " placeholder="Enter Your Last Name" onkeyup="LastNameValidation()" required>
                                            <p class="text-danger SigninMsg  text-capitalize" id="l_nameError"></p>
                                            <p class="text-success SigninMsg text-capitalize" id="l_name_sucess"></p>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="email" name="email" id="email" value="" class="form-control inputsignin" placeholder="Enter Your Email" onkeyup="emailVal()" required>
                                            <p class="text-danger SigninMsg text-capitalize" id="emailError"></p>
                                            <p class="text-success SigninMsg text-capitalize" id="emailsucess"></p>

                                        </div>
                                        <input list="browsers" name="browser" class="form-control" placeholder="--Select Country--" style="width: 49%;height: 49px;">

                                        <div class="form-group   col-sm-6">
                                            <datalist id="browsers" oninput="counVal()" required ">

                                                <!-- Adding Country Name and Country code -->
                                                <?php
                                                $selCon = "select * from country ";
                                                $run = mysqli_query($conn, $selCon);
                                                while ($conData = mysqli_fetch_assoc($run)) { ?>
                                                    <option value="+<?php echo $conData['phonecode']." " .$conData['name']; ?>">  <span style="color: blue;" name="c_code">  </span> </option>
                                                <?php  } ?>

                                            </datalist>
                                            <p class="text-danger SigninMsg text-capitalize" id="countryError"></p>
                                            <p class="text-success SigninMsg  text-capitalize" id="countrySuccess"></p>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="phone" id="phone" value="" class="form-control inputsignin" placeholder="Enter Your Phone" onkeyup="phoneVal()" required>
                                            <p class="text-danger SigninMsg SigninMsg text-capitalize" id="phoneError"></p>
                                            <p class="text-success SigninMsg text-capitalize" id="phonesuccess"></p>
                                        </div>
                                        <div class="form-group col-sm-6 date">
                                            <input type="date" name="date" id="date" oninput="dateVal()" min="1940-01-31" value="2000-01-31" max="2018-12-31" class="form-control inputsignin" required>
                                            <p class="text-danger SigninMsg text-capitalize" id="dateError"></p>
                                            <p class="text-success SigninMsg text-capitalize" id="dateSuccess"></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="password" name="password" id="password" value="" class="form-control inputsignin" placeholder="Enter Your Password" onkeyup="passVal()" required>
                                            <p class="text-danger  SigninMsg text-capitalize" id="passError"></p>
                                            <p class="text-success SigninMsg text-capitalize" id="passcorrect"></p>
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="password" name="con_password" id="con_password" value="" class="form-control inputsignin" placeholder="Enter Your Confirm Password" onkeyup="cpassVal()" required>
                                            <p class="text-danger SigninMsg text-capitalize" id="con_passError"></p>
                                            <p class="text-success SigninMsg text-capitalize" id="con_passSuccess"></p>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-12">
                                            <label style="font-weight:400; float:none; text-align:left;" class="sign_up">
                                                <input type="checkbox" name="checkbox" required>I have read terms of service & Privacy statement</label>

                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="form-group col-sm-12">
                                            <button type="submit" name="submit" id="submitRejis" onclick="validations()" class="btn">Register</button>

                                        </div>

                                    </div>

                                </form>

                            </div>
                        </div>
                        <!--end login-->
                        <div class="col-lg-5 col-sm-12">
                            <div class="register">
                                <div class="heading">Have an account?</div>
                                <p>Log in using the email address and password you registered with in order to access your youturn Account.</p>
                                <a href="#" class="btn register_btn" id="login_fo">Log In</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Use a button to open the snackbar -->

    <!-- The actual snackbar -->
    <p id="snackbarlight" value="" class=" text-capitalize">Some text some message..</p>

</section>

<?php
//on submit button new account created
if (isset($_POST['submit'])) {
    $CID = openssl_random_pseudo_bytes(8);
    $CID = bin2hex($CID);
    $joindate = date('Y:m:d');
    $jointime = date("h:i:s");
    $f_name = $_POST['fname'];
    $l_name = $_POST['lname'];
    $email = $_POST['email'];
    $country = $_POST['country'];
    $phone = $_POST['phone'];
    $DOB = $_POST['date'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE email='$email'";

    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) { ?>
        <script>
            function mySnackBar() {
                // Get the snackbar DIV
                var x = document.getElementById("snackbarlight")
                // Add the "show" class to DIV
                x.className = "show";
                // After 3 seconds, remove the show class from DIV
                setTimeout(function() {
                    x.className = x.className.replace("show", "");
                }, 3000);
            }
            mySnackBar();
            var formid = document.getElementById('registration_form');
            var snackbar = document.getElementById('snackbarlight');
            snackbar.innerText = "Email  Exist. Try To login ";
        </script>
        <?php } else {

        // inserting data in users table 
        $insqry = "INSERT INTO `users` (`cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES ('$CID ', '$f_name', '$l_name', '$email', 'no', '$country', '$phone', 'no', '$DOB', '$password', '$joindate', '$jointime', 'active')";

        $run = mysqli_query($conn, $insqry);
        if ($run) {
            $_SESSION['email'] = $email;
            $_SESSION['cid'] = $CID;
            $_SESSION['f_name'] = $f_name;
        ?>
            <script>
                function mySnackBar() {
                    // Get the snackbar DIV
                    var x = document.getElementById("snackbarlight")
                    // Add the "show" class to DIV
                    x.className = "show";
                    // After 3 seconds, remove the show class from DIV
                    setTimeout(function() {
                        x.className = x.className.replace("show", "");
                    }, 3000);
                }
                mySnackBar();
                var btn = document.getElementById('submitRejis');
                var formid = document.getElementById('registration_form');
                var snackbar = document.getElementById('snackbarlight');
                snackbar.innerText = "Registration completed";
                btn.setAttribute('disabled', 'disabled');
                btn.innerText = "your registration is completed";
                window.location.replace("http://localhost/genetics-testing/mailVerify.php?cid=<?php echo $CID; ?>&email=<?php echo $email; ?>&fname=<?php echo $f_name; ?>");
            </script>
        <?php } else {  ?>
            <script>
                function mySnackBar() {
                    // Get the snackbar DIV
                    var x = document.getElementById("snackbarlight")
                    // Add the "show" class to DIV
                    x.className = "show";
                    // After 3 seconds, remove the show class from DIV
                    setTimeout(function() {
                        x.className = x.className.replace("show", "");
                    }, 3000);
                }
                mySnackBar();
                var formid = document.getElementById('registration_form');
                var snackbar = document.getElementById('snackbarlight');
                snackbar.innerText = "Registraition Failed";
            </script>
<?php }
    }
}

?>
<script>
    $(function() {
        $('.selectpicker').selectpicker();
    });
</script>
<!--footer start-->
<?php include('includes/footer.php');
?>