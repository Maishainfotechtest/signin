<?php include('includes/header.php')
  ?>
  


        <!-- page-title -->
        <div class="ttm-page-title-team">
            <div class="ttm-page-title-row-inner">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="page-title-heading">
                                <h2 class="title">Results</h2>
                            </div>
                            <div class="breadcrumb-wrapper">
                                <span>
                                    <a title="Homepage" href="index.php">Home</a>
                                </span>
                                <span>Results</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                    
        </div><!-- page-title end-->


    <!--site-main start-->
    <div class="site-main">

        <!--portfolio-section-->
    <section class="ttm-row pricing-plan-section-2 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <!--ttm-pricing-plan-->
                        <div class="ttm-pricing-plan ttm-pricing-plan2">
                            <div class="ttm-p_table-head">
                              <div class="ttm-p_table-title2"><h3><img src="images/negative-results.png"></h3></div>
                                <div class="ttm-p_table-title"><h3  style="font-size:20px;">Negative results</h3></div>
                                <div class="ttm-p_table-desc">
                                    <div class="text para">  <span class="more">
                                  A negative result means a mutated gene was not detected by the test, which can be reassuring, but it's not a 100 percent guarantee that you don't have the disorder. The accuracy of genetic tests to detect mutated genes varies, depending on the condition being tested for and whether or not the gene mutation was previously identified in a family member.<br><br>Even if you don't have the mutated gene, that doesn't necessarily mean you'll never get the disease. For example, the majority of people who develop breast cancer don't have a breast cancer gene (BRCA1 or BRCA2). Also, genetic testing may not be able to detect all genetic defects.</span></div></div>
      
                            </div>
          

                        </div><!--ttm-pricing-plan-->
                    </div>
                      <div class="col-md-4">
                        <!--ttm-pricing-plan-->
                        <div class="ttm-pricing-plan ttm-pricing-plan2">
                            <div class="ttm-p_table-head">
                                <div class="ttm-p_table-title2"><h3><img src="images/inconclusive.png"></h3></div>
                                <div class="ttm-p_table-title"><h3  style="font-size:20px;">Inconclusive results</h3></div>
                                <div class="ttm-p_table-desc">
                                  <div class="text para">  <span class="more">
                                In some cases, a genetic test may not provide helpful information about the gene in question. Everyone has variations in the way genes appear, and often these variations don't affect your health. But sometimes it can be difficult to distinguish between a disease-causing gene and a harmless gene variation. These changes are called variants of uncertain significance. In these situations, follow-up testing or periodic reviews of the gene over time may be necessary.</span></div></div>
                            </div>
              

                        </div><!--ttm-pricing-plan-->
                    </div>

                      <div class="col-md-4">
                        <!--ttm-pricing-plan-->
                        <div class="ttm-pricing-plan ttm-pricing-plan2">
                            <div class="ttm-p_table-head">
                                <div class="ttm-p_table-title2"><h3><img src="images/genetic-counseling.png"></h3></div>
                                <div class="ttm-p_table-title"><h3 style="font-size:20px;">Genetic counseling</h3></div>
                                <div class="ttm-p_table-desc">
                                   <div class="text para">  <span class="more">
                                  No matter what the results of your genetic testing, talk with your doctor, medical geneticist or genetic counselor about questions or concerns you may have. This will help you understand what the results mean for you and your family.</span></div>
</div>
                            </div>
       

                        </div><!--ttm-pricing-plan-->
                    </div>

                </div>
            </div>
        </section>
        <!--portfolio-section-->


       


      
    </div><!--site-main end-->


<script type="text/javascript">
    $(document).ready(function() {
    // Configure/customize these variables.
    var showChar = 250;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Read more >";
    var lesstext = "Read less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span><a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});
</script>

    <!--footer start-->
  <?php include('includes/footer.php')
  ?>
  