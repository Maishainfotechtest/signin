<?php include('includes/header.php')
  ?>
  
<div class="ttm-page-title-row">
            <div class="ttm-page-title-row-inner">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="page-title-heading">
                                <h2 class="title">Cart</h2>
                            </div>
                            <div class="breadcrumb-wrapper">
                                <span>
                                    <a title="Homepage" href="index.php">Home</a>
                                </span>
                                <span>Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                    
        </div>
  
  <!--site-main start-->
  <div class="site-main"> 

    
    <!--features-section-->
    <section class="ttm-row pricing-plan-section-2 clearfix" style="background:#fff;">
      <div class="container"> 
        <!-- row -->
        <div class="row">

            <!--ttm-pricing-plan-->
           <fieldset>
                <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            
                                            <th class="product_thumb">Image</th>
                                            <th class="product_name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product_quantity">Quantity</th>
                                            <th class="product_total">Total</th>
                                            <th class="product_remove">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                          
                                            <td class="product_thumb"><a href="product-detail.php"><img src="images/genetic-kit.png" class="img-fluid"></a></td>
                                            <td class="product_name"><a href="product-detail.php">Package 1</a></td>
                                            <td class="product-price"><i class="fa fa-rupee"></i> 65.00</td>
                                            <td class="product_quantity"><input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total"><i class="fa fa-rupee"></i> 1300.00</td>
                                             <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                        </tr>
                                           <tr>
                                          
                                            <td class="product_thumb"><a href="product-detail.php"><img src="images/genetic-kit.png" class="img-fluid"></a></td>
                                            <td class="product_name"><a href="product-detail.php">Package 2</a></td>
                                            <td class="product-price"><i class="fa fa-rupee"></i> 65.00</td>
                                            <td class="product_quantity"><input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total"><i class="fa fa-rupee"></i> 1300.00</td>
                                             <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                        </tr>
                                        <tr>
                                          
                                            <td class="product_thumb"><a href="product-detail.php"><img src="images/genetic-kit.png" class="img-fluid"></a></td>
                                            <td class="product_name"><a href="product-detail.php">Package 3</a></td>
                                            <td class="product-price"><i class="fa fa-rupee"></i> 650.00</td>
                                            <td class="product_quantity"><input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total"><i class="fa fa-rupee"></i> 130.00</td>
                                             <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>   
                            </div>  
                            <div class="cart_submit cart-table">
                               
                    
                      <button onclick="setLocation('#')" class="button btn-continue" title="Continue Shopping" type="button"><span><i class="ti ti-arrow-circle-right"></i> Continue Shopping</span></button>
                        <button class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit"><span>Update Cart</span></button>
                        <button id="empty_cart_button" class="button btn-empty" title="Clear Cart" value="empty_cart" name="update_cart_action" type="submit"><span>Clear Cart</span></button>
                    
                  
                            </div>      
                        </div>
                    </div>
              </fieldset>
            <!--ttm-pricing-plan-->
            </div> 

<div class="cart-collaterals row">
         
            <div class="col-sm-4">
              <div class="discount">
                <h3>Discount Codes</h3>
                <form method="post" action="#couponPost/" id="discount-coupon-form">
                  <label for="coupon_code">Enter your coupon code if you have one.</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" value="" name="coupon_code" id="coupon_code" class="input-text fullwidth">
                  <button value="Apply Coupon" onclick="discountForm.submit(false)" class="button coupon " title="Apply Coupon" type="button"><span>Apply Coupon</span></button>
                </form>
              </div>
            </div>
            <div class="col-sm-4"></div>
            <div class= "col-sm-4">
              <div class="totals">
              <h3>Shopping Cart Total</h3>
              <div class="inner">
                <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                  <colgroup>
                  <col>
                  <col width="1">
                  </colgroup>
                  <tfoot>
                    <tr>
                      <td colspan="1" class="a-left" style=""><strong>Grand Total</strong></td>
                      <td class="a-right" style=""><strong><span class="price"><i class="fa fa-rupee"></i> 77.38</span></strong></td>
                    </tr>
                  </tfoot>
                  <tbody>
                    <tr>
                      <td colspan="1" class="a-left" style=""> Subtotal </td>
                      <td class="a-right" style=""><span class="price"><i class="fa fa-rupee"></i> 77.38</span></td>
                    </tr>
                  </tbody>
                </table>
                <ul class="checkout">
                  <li>
                    <button class="button btn-proceed-checkout" title="Proceed to Checkout" type="button"><span><a href="checkout.php">Proceed to Checkout</a></span></button><a href="checkout.php">
                  </a></li>
               </ul>
              <!--inner--> 
        


          </div>
        </div>
      </div>
        <!-- row end --> 
      </div>
    </section>
    <!--features-section end--> 

    
  </div>
  <!--site-main end--> 
  <?php include('includes/footer.php')
  ?>