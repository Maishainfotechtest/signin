<?php include('includes/header.php');
include 'connection.php';

$f_name = $_GET['fname'];
$email = $_GET['email'];
$cid = $_GET['cid'];


// checking that firstname is set or not /  
if (isset($_SESSION['fname'])) {
    $fname = $_SESSION['fname'];
} else {
    $fname = $_GET['fname'];
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
                                <h3 class="title text-capitalize heading">Please verify your Email</h3>
                            </div>
                            <div class="text-dark text-capitalize pcontent"> Hi <?php echo   $fname; ?>, we have sent an account verification mail to your registered email id please click the link given on the mail in order to verify your account. </a>
                          </div>
                        </div><!-- section title end -->
                    </div>
                    <div class="accordion">
                        <!-- Activate Button -->
                        <form action="" method="post" class="myform resendDIV">
                            <div class="toggle ttm-style-classic ttm-toggle-title-bgcolor-grey ttm-control-right-true  ">

                                <input type="submit" value="Resend" name="verify" style="background: rgb(3, 105, 164);font-size: 15px;cursor: pointer;padding: 0 9px;" id="resend" onclick="emailverification()">
                                <p style="position: relative; top: 7px;font-weight: bold; font-size:18px; text-align:center">
                                    <span id="min">0.</span>
                                    <span id="demo">60</span>

                            </div>
  <p id="alertmsg"></p>
                        </form>
                        <span class="output_message"></span>
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
        var countDown = 6;
        var clickable = document.getElementById('resend');
        var time = setInterval(function() {
            countDown--;
            var min = document.getElementById('min');

            var timer = document.getElementById('demo');
            if (countDown => 0) {
                timer.innerText = countDown;
                clickable.removeAttribute('onclick', 'emailverification()');
                clickable.value = "Please wait..";
                document.getElementById("resend").style.cursor = "not-allowed";
                clickable.setAttribute('disabled', 'disabled');
                document.getElementById("resend").style.backgroundColor = "#7eb3d2";
                clickable.style.backgroundColor = "#7eb3d2";
                min.innerText = "0.";
            }
            if (countDown == 0) {

                clearInterval(time);
                timer.innerText = "0.00";
                clickable.removeAttribute('disabled', 'disabled');
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
<script>
    $(document).ready(function() {
        $('.myform').on('submit', function() {

            let name = '<?php echo $_GET['fname']; ?>';
            let email = '<?php echo $_GET['email']; ?>';
            let cid = '<?php echo  $_GET['cid']; ?>';
            console.log(name + " " + email + " " + cid);
            if (name != "" && email != "" && cid != "") {
                $.ajax({
                    url: "sendmail.php",
                    type: "POST",
                    data: {
                        name: name,
                        email: email,
                        cid: cid,
                    },

                    success: function(result) {
                        if (result == 'success') {
                            $('.output_message').text('Message Sent!');
                        } else {
                            $('.output_message').text('Error in Sending email! to ' + email);
                        }
                    }
                });
            } else {
                alert('Please fill all the field !');
            }
            return false;
        });

       
    });
</script>
<script>
    $(document).ready(function ( ) {
        
    })
       setInterval(function  () {
        let email = '<?php echo $_GET['email']; ?>';
            console.log(email);
             $.ajax({
                 url:"mailVerifiedOrNot.php",
                 type : "POST",
                 data : {email : email},
                 success : function  (data) {
                    if (data== 1) {
                        console.log("verified");
                         window.location.replace("http://localhost/genetics-testing/signin.php");
                    } else{
                        console.log("not-verified");
                    }
                 }
             }) 
       },5000)
           
         
</script>
 