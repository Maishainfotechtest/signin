<?php
include('includes/header.php');
include 'connection.php';

if (isset($_POST['reset'])) {
    $cid = $_GET['cid'];
    $cpass = $_POST['cpass'];

    $select = "select * from users where cid = '$cid'";
    $runquery = mysqli_query($conn, $select);
    $getdata = mysqli_fetch_assoc($runquery);
    $email = $getdata['email'];



    $query = "UPDATE `users` SET `password` = '$cpass' WHERE `users`.`email` = '$email'";
    $run = mysqli_query($conn, $query);
    if ($run) {
?>
        <script>
            window.location.replace("http://localhost/genetics-testing/signin.php");
        </script>
    <?php
    } else {
    ?>
        <script>
            alert("password reset failed. <?php echo $getdata['f_name']; ?>");
        </script>
<?php
    }
}
?>
<!--site-main start-->
<section class="login_bg">
    <div class="row">
        <div class="col-lg-5 container">
            <h3 class="heading3" style="text-align: center;">Reset Your Password</h3>
        </div>
    </div>
    <div class="container-fluid">
        <div class="col-sm-9 login_main">
            <div id="login">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="register">
                            <div class="heading">  Reset Your Password?</div>
                            <p>If you’ve forgotten your password, please enter your registered email address. We’ll send you a link to reset your password.</p>
                        </div>
                    </div>
                    <!--login-->
                    <div class="col-sm-6">
                        <div class="login">
                            <div class="heading" style="text-align:center;"><img src="images/forgot-password.png" alt="" style="height:80px;"></div>
                            <form action="" method="post" id=" " name="">

                                <div class="form-group">
                                    <input type="password" name="pass" id="reset_password" value="" class="form-control inputsignin" placeholder="Enter Your Password" onkeyup="resetpassVal()" required>
                                    <p class="text-danger   forgetPassMsg text-capitalize" id="reset_passError"></p>
                                    <p class="text-success SigninMsg text-capitalize" id="reset_passcorrect"></p>
                                    
                                </div>
                                 
                                <div class="form-group">
                                    <input type="password" name="cpass" id="confirm_password" value="" class="form-control inputsignin" placeholder="Enter Your Password" onkeyup="resetcpassVal()" required>
                                    <p class="text-danger   forgetPassMsg text-capitalize" id="reset_CpassError"></p>
                                    <p class="text-success   text-capitalize" id="reset_Cpasscorrect" style="position: absolute;top: 80px; left:85%"></p>
                                    
                                </div>
                                <div class="form-group">
                                    <button type="" name="reset" id="submit" onclick="showPara()" class="btn">Reset Password</button>
                                </div>

                            </form>

                        </div>
                        <div>
                            <p id="msg" style="visibility: hidden;position: relative;top: 207%;left: 12%;color: black;font-size: 14px;"> </p>
                        </div>
                    </div>
                    <div>
                        <!--end login-->
                    </div>
                </div>
            </div>

</section>
<script>
    function showPara() {
        var email = document.getElementById('email').value;
        document.getElementById("msg").innerText = "  ";
        document.getElementById("msg").style.visibility = "visible";
    }
</script>
<!--footer start-->
<?php include('includes/footer.php'); ?>