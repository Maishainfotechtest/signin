<?php include('includes/header.php');
include 'connection.php';
// 
 
if (isset($_POST['verify']) && $_GET['cid']) {  
     $f_name = $_GET['fname'];
     $email = $_GET['email'];
     $cid = $_GET['cid'];
    
    $to_mail = "$email";
    $subject = "Simple Email Test via PHP";
    $body = "Hi ,$f_name click on the link to activate your account : http://localhost/genetics-testing/activate.php?cid=$cid";
    $headers = "From : maishainfotech123@gmail.com";
     
     if (mail($to_mail , $subject ,$body , $headers)) {
         echo "success";
     }else {
           echo "failed " . $to_mail;
     }
  }

?>

<!-- page-title -->
<div class="ttm-page-title-row">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading">
                        <h2 class="title">Email Verification</h2>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div><!-- page-title end-->


<!--site-main start-->
<div class="site-main">
    <section class="ttm-row" style="height: 60vh;">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 faq">
                    <div class="mb-30">
                        <!-- section title -->
                        <div class="section-title text-center">
                            <div class="title-header">
                                <h3 class="title text-capitalize " style="font-size:38px;">Please verify your Email</h3>
                            </div>
                            <div class="text-dark text-capitalize" style="font-size: 1.2em;"> Hi <?php echo  $_SESSION['f_name']; ?>, we have sent an account verification mail to your registered email id please click the link given on the mail in order to verify your account. </a></div>
                        </div><!-- section title end -->
                    </div>
                    <div class="accordion">
                        <!-- Activate Button -->
                       <form action="" method="post" onsubmit="return false">
                        <div class="toggle ttm-style-classic ttm-toggle-title-bgcolor-grey ttm-control-right-true" style="position: absolute;top: 97%;left: 50%;">
                        
                           <input type="submit" value="Resend" name="verify" style="background: rgb(3, 105, 164);font-size: 15px;cursor: pointer;padding: 0 9px;" id="resend" onclick="emailverification()" > 
                           <p style="position: relative; top: 7px;font-weight: bold; font-size:18px; text-align:center"><span id="min">0.</span><span id="demo">60</
                        </div>
                        </form>
                     
                        <!-- Activate Button end -->
                    </div>
                     

                </div>
                 
            </div>
        </div>

    </section> 


</div>
<!--site-main end-->

<script>
    function emailverification() {
        var countDown = 60;
        var clickable = document.getElementById('resend');
        var time = setInterval(function() {
            countDown--;
            var min = document.getElementById('min');

            var timer = document.getElementById('demo');
            if (countDown => 0) {
                timer.innerText =  countDown;
                clickable.removeAttribute('onclick', 'emailverification()');
                clickable.value = "Resend";
                document.getElementById("resend").style.cursor = "not-allowed";
                document.getElementById("resend").style.backgroundColor = "#7eb3d2";
                clickable.style.backgroundColor = "#7eb3d2";
                 
            }
            if (countDown == 0) {
                
                clearInterval(time);
                timer.innerText = "0.00";
             
                clickable.setAttribute('onclick', 'emailverification()');
                min.innerText = " ";
                clickable.value = "Resend";
                clickable.setAttribute('href', 'mailVerify.php');
                document.getElementById("resend").style.cursor = "pointer";
                document.getElementById("resend").style.backgroundColor = "#0369a4";
                clickable.style.backgroundColor = "#0369a4";
                
                
            }
        }, 1000);
    }
    emailverification();
</script>
<!--footer start-->
<?php include('includes/footer.php')
?>