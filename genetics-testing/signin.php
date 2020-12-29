<?php include('includes/header.php');

include 'connection.php';

if (isset($_POST['submit'])) {
   $f_name = $_POST['fname'];
   $l_name = $_POST['lname'];
   $email = $_POST['email'];
   $country = $_POST['country'];
   $phone = $_POST['phone'];
   $date = $_POST['date'];
   $password = $_POST['password'];

   echo $f_name ." ". $l_name . " " . $email . " " . $country . " " . $phone . " " . $date . " " . $password;
   
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
                                <form action="" method="" id="login_form" name="">
                                    <p id="login_msg"></p>
                                    <div class="form-group">
                                        <input type="text" name="email" value="" class="form-control" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" value="" class="form-control" placeholder="Password">
                                        <a href="https://www.mandarinresorts.in/user/forgot_password" style="color:#012b72; font-size:13px; float:right;">Forgot your password?</a>
                                    </div>
                                    <div class="row">
                                        <div class="form-group">
                                            <label style="font-weight:400; float:none; text-align:left;" class="sign_up"><input type="checkbox" name="">Remember me</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" name="submit" id="submit" class="btn">Log In</button>
                                    </div>
                                    <div class="form-group">
                                        <div class="middle"><span>or</span></div>
                                        <div class="facebook">
                                            <a href="#"><img src="images/facebook-icon.png" alt="">Login with Facebook</a>
                                        </div>
                                        <div class="google_plus">
                                            <a href="#"><img src="images/gmail-icon.png" alt="">Login with Gmail</a>
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
                                <form action="" method="post" id="registration_form">
                                    <p id="reg_msg"></p>
                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="fname" id="f_name" value="" class="form-control" style="padding-left:15px;" placeholder="Enter Your First Name"  onkeyup="FirstNameValidation()" required>
                                            <p class="text-danger" id="f_nameError"> </p>
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="lname" id="l_name" value="" class="form-control" style="padding-left:15px;" placeholder="Enter Your Last Name" onkeyup="LastNameValidation()" required>
                                            <p class="text-danger" id="l_nameError"></p>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="email" id="email" value="" class="form-control" placeholder="Enter Your Email" required>
                                            <p class="text-danger" id="emailError">**error</p>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <select class="form-control" name="country" id="country" required>
                                                <option value="">Select Country</option>
                                                <!-- Adding Country Name and Country code -->
                                                <?php
                                                $selCon = "select * from country ";
                                                $run = mysqli_query($conn, $selCon);
                                                while ($conData = mysqli_fetch_assoc($run)) { ?>
                                                    <option value="<?php echo $conData['phonecode'];?>"> <?php echo $conData['name'];?><span style="color: blue;" name="c_code"> (<?php echo $conData['phonecode'];?>)</span> </option>
                                                <?php  } ?>

                                            </select>
                                            <p class="text-danger" id="countryError">**error</p>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="text" name="phone" id="phone" value="" class="form-control" placeholder="Enter Your Phone" required>
                                            <p class="text-danger" id="phoneError">**error</p>
                                        </div>
                                        <div class="form-group col-sm-6 date">
                                            <input type="date" value="2018-01-01" name="date" required>
                                            <p class="text-danger" id="dateError">**error</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-sm-6">
                                            <input type="password" name="password" id="password" value="" class="form-control" placeholder="Enter Your Password" required>
                                            <p class="text-danger" id="passError">**error</p>
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <input type="password" name="con_password" id="con_password" value="" class="form-control" placeholder="Enter Your Confirm Password" required>
                                            <p class="text-danger" id="con_passError">**error</p>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-sm-12">
                                            <label style="font-weight:400; float:none; text-align:left;" class="sign_up"><input type="checkbox" name="">I have read terms of service & Privacy statement</label>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="form-group col-sm-12">
                                            <button type="submit" name="submit" id="submit" class="btn">Register</button>
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
</section>


<!--footer start-->
<?php include('includes/footer.php')
?>