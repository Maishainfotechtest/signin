<?php
include('includes/header.php');
include 'connection.php';
$msg = " ";
if (isset($_POST['send'])) {
    $checkmail = $_POST['email'];

    $getData  = "select * from users where email = '$checkmail' ";
    $runquery = mysqli_query($conn, $getData);
    $emailcount = mysqli_num_rows($runquery);
    $data = mysqli_fetch_assoc($runquery);
    $f_name = $data['f_name'];
    $cid = $data['cid'];
   
    if ($emailcount > 0) {
        $to_mail = $checkmail;
        $subject = "Reset Password";
        $body = "Hi , $f_name click on the link to reset your password : http://localhost/genetics-testing/resetPassword.php?cid=$cid";
        $headers = "From : maishainfotech123@gmail.com";

        if (!mail($to_mail, $subject, $body, $headers)) {
             ?>
            
            <form action="" method="post" id="forgetpass">
                <div class="  " style="background-color: #0369a4!important">
                    <p class="ml-2 p-0 text-white" style="font-size: 18px;padding: 5px 0 !important;">Youturn Genetics <span> <i class="fa fa-times-circle" id="closeicon" aria-hidden="true"></i></span></p>
                </div>
                <p style="font-weight: 400;font-size: 0.9rem;padding: 0px 26px;" class="text-capitalize">  We have sent you a link to reset your password. please check your mail to reset your password. </p>
                
            </form>
<?php
        } else {
            echo "Email not send to " . $to_mail;
        }
    } else {
        $msg = "**Invalid Email ID.";
    }
}
?>
<!--site-main start-->
<section class="login_bg">
    <div class="row">
        <div class="col-lg-5 container">
            <h3 class="heading3">Reset Your Password</h3>
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
                            <form action="" method="post" id=" " name="">

                                <div class="form-group">
                                    <input type="email" name="email" id="email" value="" class="form-control" placeholder="Enter Email" required>
                                    <p class="text-danger"><?php echo $msg; ?></p>
                                </div>
                                <div class="form-group">
                                    <button type="" name="send" id="submit" onclick="showPara()" class="btn">submit</button>
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
<script>
    $(document).ready(function() {
       

        $('#closeicon').click(function() {
            $('#forgetpass').css({
                "display": "none"
            });
        });
    })
</script>