<?php
include('includes/header.php');
include 'connection.php';
//login to account
?>
<!--site-main start-->
<section class="login_bg">
    <div class="row">
        <div class="col-lg-5 container">
            <h3 style="position: relative;left: 17%;top: -24%;">Reset Your password</h3>
        </div>
    </div>
    <div class="container-fluid">
        <div class="col-sm-9 login_main">
            <div id="login">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="register">
                            <div class="heading">Forgot Your Password?</div>
                            <p>If you’ve forgotten your password, please enter your registered email address. We’ll send you a link to reset your password.</p>
                        </div>
                    </div>
                    <!--login-->
                    <div class="col-sm-6">
                        <div class="login">
                            <div class="heading" style="text-align:center;"><img src="images/forgot-password.png" alt="" style="height:80px;"></div>
                            <form action="" method="" id=" " name="" onsubmit="return false">
                                
                                <div class="form-group">
                                    <input type="email" name="email" id="email" value="" class="form-control" placeholder="Email"  >
                                </div>
                                <div class="form-group">
                                    <button type="" name="" id="submit" onclick="showPara()" class="btn">Reset Password</button>
                                </div>

                            </form>

                        </div>
                        <div>
                            <p id="msg" style="visibility: hidden;position: relative;top: 207%;left: 12%;color: black;font-size: 14px;">  </p>
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
        document.getElementById("msg").innerText = "A reset mail is sent to "  +email;
        document.getElementById("msg").style.visibility = "visible";
    }
</script>
<!--footer start-->
<?php include('includes/footer.php'); ?>