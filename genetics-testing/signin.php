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



        $insqry = "INSERT INTO `users` ( `id` ,`cid`, `f_name`, `l_name`, `email`, `email_verify`, `countrycode`, `mobile`, `mobile_verify`, `DOB`, `password`, `joindate`, `jointime`, `status`) VALUES ( NULL , '$CID ', '$name', '$lname', '$email', 'no', ' ', ' ', 'no', ' ', '1', '$joindate', '$jointime', 'active')";

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

//login to account
$msg = " ";
if (isset($_POST['login'])) {
    $emailCheck = $_POST['email_verify'];
    $passCheck = $_POST['password_check'];

    $sql = " select * from `users` where `email` = '$emailCheck' and `password` = '$passCheck' ";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $verify = $row['email_verify'];
    $_SESSION['username'] = $row['f_name'];
    $count = mysqli_num_rows($result);

    // If result matched $myusername and $mypassword, table row must be 1 row

    if ($count == 1 && $verify == 'yes') {
        $_SESSION['username'] = $row['f_name'];

        ?>
        <script>
            window.location.replace("http://localhost/genetics-testing/index.php");
        </script>
<?php

    }
    if ($count == 1 && $verify == 'no') {
        echo  $_SESSION['username'] . " Please Verify your Account";
    } else {
        $msg = " invalid email id or password  " . mysqli_error($conn);
    }
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
                                            <a href="<?php echo $facebook_login_url; ?>"><img src="images/facebook-icon.png" alt="">Login with Facebook</a>
                                        </div>
                                        <div class="google_plus">
                                            <a href="<?php echo  $google_client->createAuthUrl() ?>"><img src="images/gmail-icon.png" alt="">Login with Gmail</a>
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
                                            <input type="text" name="fname" id="f_name" value="" class="form-control" style="padding-left:15px;" placeholder="Enter Your First Name" onkeyup="FirstNameValidation()" required>
                                            <p class="text-danger  text-capitalize" id="f_nameError"> </p>
                                            <p class="text-success text-capitalize" id="f_name_sucess"></p>
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="lname" id="l_name" value="" class="form-control" style="padding-left:15px;" placeholder="Enter Your Last Name" onkeyup="LastNameValidation()" required>
                                            <p class="text-danger text-capitalize" id="l_nameError"></p>
                                            <p class="text-success text-capitalize" id="l_name_sucess"></p>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="email" name="email" id="email" value="" class="form-control" placeholder="Enter Your Email" onkeyup="emailVal()" required>
                                            <p class="text-danger text-capitalize" id="emailError"></p>
                                            <p class="text-success text-capitalize" id="emailsucess"></p>

                                        </div>

                                        <div class="form-group col-sm-6">
                                            <select class="form-control" name="country" id="country" oninput="counVal()" required>
                                                <option value="">Select Country</option>
                                                <!-- Adding Country Name and Country code -->
                                                <?php
                                                $selCon = "select * from country ";
                                                $run = mysqli_query($conn, $selCon);
                                                while ($conData = mysqli_fetch_assoc($run)) { ?>
                                                    <option value="+<?php echo $conData['phonecode']; ?>"> <?php echo $conData['name']; ?><span style="color: blue;" name="c_code"> (+<?php echo $conData['phonecode']; ?>)</span> </option>
                                                <?php  } ?>

                                            </select>
                                            <p class="text-danger text-capitalize" id="countryError"></p>
                                            <p class="text-success text-capitalize" id="countrySuccess"></p>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="phone" id="phone" value="" class="form-control" placeholder="Enter Your Phone" onkeyup="phoneVal()" required>
                                            <p class="text-danger text-capitalize" id="phoneError"></p>
                                            <p class="text-success text-capitalize" id="phonesuccess"></p>
                                        </div>
                                        <div class="form-group col-sm-6 date">
                                            <input type="date" name="date" id="date" oninput="dateVal()" min="1940-01-31" max="2018-12-31" required>
                                            <p class="text-danger text-capitalize" id="dateError"></p>
                                            <p class="text-success text-capitalize" id="dateSuccess"></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="password" name="password" id="password" value="" class="form-control" placeholder="Enter Your Password" onkeyup="passVal()" required>
                                            <p class="text-danger text-capitalize" id="passError"></p>
                                            <p class="text-success text-capitalize" id="passcorrect"></p>
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="password" name="con_password" id="con_password" value="" class="form-control" placeholder="Enter Your Confirm Password" onkeyup="cpassVal()" required>
                                            <p class="text-danger text-capitalize" id="con_passError"></p>
                                            <p class="text-success text-capitalize" id="con_passSuccess"></p>
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
<!--footer start-->
<?php include('includes/footer.php');
?>