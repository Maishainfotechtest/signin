<?php include('includes/header.php');
include 'connection.php'; ?>

<!-- page-title -->
<div class="ttm-page-title-row">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading">
                        <h2 class="title">Email Verification</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <span>
                            <a title="Homepage" href="index.php">Home</a>
                        </span>
                        <span class="text-capitalize">verify mail</span>
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
                        <div class="section-title">
                            <div class="title-header">
                                <h2 class="title text-capitalize">verify your Email</h2>
                            </div>
                            <div class="text-dark"> Hi <?php echo "username"; ?> Click on the button to Verify your Email Address </a></div>
                        </div><!-- section title end -->
                    </div>
                    <div class="accordion">
                        <!-- Activate Button -->
                        <div class="toggle ttm-style-classic ttm-toggle-title-bgcolor-grey ttm-control-right-true">
                            <div   style=" background: #0369a4; width: 38%; position: absolute; left: 30%; text-align: center;padding: 9px;text-transform: capitalize; border-radius: 3px; font-weight: 500;"><a href="index.php" style="text-align: center;" class="text-white">Verify your Email</a></div>

                        </div>
                        <!-- Activate Button end -->
                    </div>
                    <div class="container " style="display: flex;width: 50%;position: relative;top: 77px;left: -1%; justify-content: space-evenly;"> <p style="background: #0369a4; width: 49%;padding: 4px; text-align:center; "><a href="" class="text-white text-capitalize">Resend Verification mail</a></p> <p id="demo" style="position: relative; top: 7px;font-weight: bold;">0.45</p></div>
                </div>
            </div>
        </div>
    </section>


</div>
<!--site-main end-->


<!--footer start-->
<?php include('includes/footer.php')
?>