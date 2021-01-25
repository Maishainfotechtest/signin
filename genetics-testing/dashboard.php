<?php include('includes/header.php');

// sign in setting on login and logout
if (isset($_SESSION['username'])) {
  $name =  $_SESSION['username'];
  $email =  $_SESSION['user_email'];
  $logclass =  "fa fa-sign-out";
  $link = " ";
  $trilogo = "dropdown-toggle";
  $none = "none";
  $input = "Log Out";

  //selecting users data from database 

  $selQuery = "select * from users where email = '$email'";
  $runQuery = mysqli_query($conn, $selQuery);
  $userData = mysqli_fetch_assoc($runQuery);

  $_SESSION['name'] = $userData['f_name'];
  $_SESSION['email'] = $userData['email'];



  // echo "<pre>";print_r($userData);echo "</pre>";
  //checking country name is set or not
  if (isset($userData['countrycode'])) {
    $countryname = $userData['countrycode'];
  } else {
    $countryname = "select country.";
  }
  //checking state name is set or not
  if (isset($userData['state'])) {
    $statename = $userData['state'];
  } else {
    $statename = "select state.";
  }
  //checking city name is set or not
  if (isset($userData['city'])) {
    $cityname = $userData['city'];
  } else {
    $cityname = "select  city.";
  }
} else {
  $name = "Sign in";
  $logclass = " ";
  $link = "signin.php";
  $trilogo = " ";
  $input = " ";
?>
  <script>
    window.location.replace("http://localhost/genetics-testing/index.php");
  </script>
<?php
}


//selecting user image from databse
$selQuery = "select * from userimages where email = '$email'";
$runQuery = mysqli_query($conn, $selQuery);
$userImage = mysqli_fetch_assoc($runQuery);


if ($userImage['imgSrc'] == "") {
  $imageAddress = "images/usersImage/profile-icon.png";
  $AddUpdate = "upload";
} else {
  $imageAddress =  $userImage['imgSrc'];
  $AddUpdate = "change";
}
?>
<!-- page-title -->

<section class="dashboard_bg">
  <div class="container">
    <!--breadcrumb-->
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="index.php">Home</a></li>
      <li class="breadcrumb-item active">Dashboard</li>
    </ol>
    <!--end breadcrumb-->

    <div class="ttm-tabs ttm-tab-style-horizontal" data-effect="fadeIn">
      <div class="row">
        <!--left side-->
        <div class="col-lg-3 col-md-4 col-sm-12">
          <div class="left_menu">
            <ul class="tabs">
              <li class="tab active" id="dashbaordDiv"><a href="#"><img src="images\dashboard-icon.png"> Dashboard</a></li>
              <li class="tab" id="profile"><a href="#"><img src="images\profile-icon-left.png"> My Profile</a></li>
              <li class="tab"><a href="#"><img src="images/order-icon.png"> My Orders</a></li>
              <li class="tab"><a href="#"><img src="images/reports.png"> My Reports</a></li>
              <li class="tab"><a href="#"><img src="images\change-password.png"> Change Password</a></li>
              <li id="logout"><a href="logout.php"><img src="images\logout-icon.png"> Logout</a></li>
            </ul>
          </div>
        </div>
        <!--end left side-->

        <!--right side-->
        <div class="col-lg-9 col-md-8 col-sm-12">
          <div class="dashboard_box content-tab">
            <div class="content-inner active" id="dashboard">
              <div class="lds-ring m-0 p-0" id="loader">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
              </div>
              <div class="heading">Welcome to Dashboard</div>
              <div class="row">
                <div class="col-sm-12">

                  <div class="dasboard_head">Account Details <p class="btn edit_btn" style="cursor: pointer;" id="click"><i class="fa fa-edit"></i> Edit Account</p>
                  </div>
                  <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-4 col-12 position">

                      <form action="dashboard.php" id="submit-group">
                        <label for="file-upload" class="custom-file-upload">
                          <i for class="fa fa-2x fa-pencil-square-o  uploadicon" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="<?php echo $AddUpdate; ?>"></i>
                          <p style="width: 247px;margin: 4px 36px;" class="text-capitalize text-success font-weight" id="fileMsg"> </p>
                        </label>
                        <center><input type="file" name="file" id="file-upload" required>
                          <div id="default">
                            <img src="<?php echo $imageAddress; ?>" class="img-fluid  " style="border-radius: 61px; height: 111px; width: 114px;">
                          </div>
                          <div id="image_preview">
                          </div>
                        </center>

                      </form>


                    </div>
                    <div class="col-lg-10 col-md-10 col-12 col-sm-6">
                      <p style="line-height:27px;"><strong style="color:#1f1f1f;" class="text-capitalize"> <?php echo $userData['f_name'] . " " . $userData['l_name']; ?></strong><br>
                        <?php echo $userData['email']; ?><br>
                        <?php echo $userData['mobile']; ?><br>
                        <span class="text-capitalize"><?php echo $userData['address']; ?> </span>
                      </p>

                    </div>
                  </div>

                </div>
              </div>
            </div>
            <!-- tab1 end -->
            <div class="content-inner  " id="personalInfo">
              <div id="returnMSG" class="text-success"></div>
              <div class="heading">Personal Information</div>
              <!-- OTP FORM --->
              <div id="otp">
                <!-- <i class="fa fa-times-circle" aria-hidden="true" id="otpclose"></i> -->
                <h5 class="text-capitalize text-muted"> Enter the OTP to verify your phone number</h5>

                <p class="text-capitalize   " style="font-size: 12px; margin:0;">an OTP(one time password) has been sent to <spani id="conNum"></span></p>
                <div class="inputsforOtp">
                  <form id="otpform">
                    <input class="inputOTP" maxlength="1" placeholder="#" type="text" name="" id="otp1">
                    <input class="inputOTP" maxlength="1" placeholder="#" type="text" name="" id="otp2">
                    <input class="inputOTP" maxlength="1" placeholder="#" type="text" name="" id="otp3">
                    <input class="inputOTP" maxlength="1" placeholder="#" type="text" name="" id="otp4">

                  </form>

                </div>
                <p class="text-capitalize"><button id="resendOtp">resend OTP</button> : <span>0.</span><span style="margin: 0px; cursor:text" id="timer">10</span></p>
                <div id="">
                  <span class="text-success text-capitalize" id="true"></span><span class="text-danger text-capitalize" id="false"></span>
                </div>

                <button class="text-capitalize" id="validate">VERIFY</button>
              </div>
              <!-- /OTP FORM --->
              <form action="" method="post">
                <div class="row">
                  <div class="form-group col-sm-6">
                    <label>First Name</label><span class="text-danger valEror" id="prof_f_nameError"> </span> &nbsp;<span class="  valSuccess text-success" id="prof_f_name_sucess"> </span>
                    <input type="text" class="text-dark m-0 p-2" name="first_name" id="prof_f_name" value="<?php echo $userData['f_name']; ?>" class="form-control text-capitalize" placeholder="" onkeyup="ProfileFirstNameValidation()" required>
                  </div>
                  <!--********--->
                  <div class="form-group col-sm-6">
                    <label>Last Name</label><span class="text-danger valEror" id="Profile_l_nameError"> </span> &nbsp;<span class="text-success valSuccess " id="Profile_l_name_sucess"> </span>
                    <input type="text" class="text-dark m-0 p-2" name="last_name" id="Profile_l_name" value="<?php echo $userData['l_name']; ?>" class="form-control text-capitalize" placeholder="" onkeyup="ProfileLastNameValidation()" required>
                  </div>
                  <div class="form-group col-sm-6">
                    <label>Email</label>
                    <input type="email" class="  m-0 p-2" name="email" id="email" disabled="disabled" style="cursor: not-allowed;" value="<?php echo $userData['email']; ?>" class="form-control " placeholder="">
                  </div>
                  <div class="form-group col-sm-6">
                    <label>Contact No</label><span class="text-danger valEror" id="ProfilephoneError"> </span> &nbsp;<span class=" text-success valSuccess" id="Profilephonesuccess"> </span>
                    <input type="text" class="  m-0 p-2" name="mobile" id="Profliephone" value="<?php echo $userData['mobile']; ?>" class="form-control text-capitalize" onkeyup="ProfilephoneVal()" required>
                  </div>
                  <div class="form-group col-sm-6">
                    <label>Country</label>
                    <select class="form-control" name="country" id="country">
                      <option value="<?php echo  $countryname; ?>"><?php echo  $countryname; ?></option>
                      <?php
                      //selecting country data
                      $run = mysqli_query($conn, "select * from countries ");

                      while ($conData = mysqli_fetch_assoc($run)) {

                      ?>
                        <option value="+<?php echo  $conData['phonecode']; ?>" key="<?php echo $conData['id']; ?>"><span><?php echo $conData['name']; ?></span> </option>
                      <?php }
                      ?>

                    </select>
                  </div>
                  <div class="form-group col-sm-6">
                    <label>State</label>
                    <select class="form-control" name="state" id="state">
                      <option value="<?php echo  $statename; ?>"><?php echo  $statename; ?></option>
                    </select>
                  </div>
                  <div class="form-group col-sm-6">
                    <label>City</label>
                    <select class="form-control" name="city" id="city">
                      <option value="<?php echo  $cityname; ?>"><?php echo  $cityname; ?></option>
                    </select>
                  </div>
                  <!--  
                    
                  <div class="form-group col-sm-6 date">
                    <label for="" id="label"> DD/MM/YY</label>
                    <input type="date" name="date" id="date" oninput="dateVal()" min="1940-01-31" date_format="dd/mm/yy" value="2000-01-31" max="2018-12-31" class="form-control inputsignin" required>
                    <p class="text-danger invalidMsg text-capitalize" id="dateError"></p>
                    <p class="text-success SigninMsg text-capitalize" id="dateSuccess"></p>
                  </div>-->

                  <div class="form-group col-sm-12">
                    <label>Address</label><span class="text-danger" id=""> </span> &nbsp;<span class="text-success" id=""> </span>
                    <textarea name="address" id="address" class="form-control text-capitalize" style="min-height:65px;" placeholder="Enter Address" required><?php echo $userData['address']; ?></textarea>
                  </div>
                  <div class="form-group col-sm-12">
                    <button type="button" id="updateProf" class="btn2">Update</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- tab 2 end -->
            <div class="content-inner">
              <div class="heading"><span>My Orders</span></div>
              <div class="table-responsive">
                <table cellpadding="0" cellspacing="0" border="0" class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width:10%;">#</th>
                      <th style="width:10%;">Order No</th>
                      <th style="width:25%;">Order Status</th>
                      <th style="width:20%;">Payment Mode</th>
                      <th style="width:15%;">Order Total</th>
                      <th style="width:15%;">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr data-toggle="collapse" id="row1" data-target=".row1">
                      <td>1</td>
                      <td>1086345</td>
                      <td>Your order had been placed</td>
                      <td>Online Payment</td>
                      <td>Rs.300</td>
                      <td><button class="btn btn-default btn-sm">View More</button></td>
                    </tr>
                    <tr class="row1 collapse" style="background: rgb(237, 237, 237); height: 0px;" aria-expanded="false">
                      <th>#</th>
                      <th>Product Name</th>
                      <th>Quantity</th>
                      <th>Unit Price</th>
                      <th>Total</th>
                      <th>Status</th>
                    </tr>
                    <tr class="row1 collapse" aria-expanded="false" style="height: 0px;">
                      <td>#</td>
                      <td>Package 1</td>
                      <td>1</td>
                      <td>Rs. 3000</td>
                      <td>Rs. 3000</td>
                      <td style="color:red;font-weight:700">Pending</a></td>
                    </tr>

                    <!--   --tr id 2 -->
                    <tr data-toggle="collapse" id="row2" data-target=".row2">
                      <td>2</td>
                      <td>1086345</td>
                      <td>Your order had been placed</td>
                      <td>Online Payment</td>
                      <td>Rs.300</td>
                      <td><button class="btn btn-default btn-sm">View More</button></td>
                    </tr>
                    <tr class="row2 collapse in" style="background: rgb(237, 237, 237);" aria-expanded="true">
                      <th>#</th>
                      <th>Product Name</th>
                      <th>Quantity</th>
                      <th>Unit Price</th>
                      <th>Total</th>
                      <th>Status</th>
                    </tr>
                    <tr class="row2 collapse in" aria-expanded="true" style="">
                      <td>#</td>
                      <td>Package 2</td>
                      <td>1</td>
                      <td>Rs. 3000</td>
                      <td>Rs. 3000</td>
                      <td style="color:green;font-weight:700">Confirmed</a></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- tab reports     -->
            <div class="content-inner">
              <div class="heading"><span>My Reports</span></div>
              <div class="table-responsive">
                <table cellpadding="0" cellspacing="0" border="0" class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width:10%;">#</th>
                      <th style="width:20%;">Report No</th>
                      <th style="width:70%;">Download Report</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>1086345</td>
                      <td><button class="btn btn-default btn-sm">Download Report</button></td>
                    </tr>


                  </tbody>
                </table>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- change password -->
            <div class="content-inner">
              <div class="heading">Change Password</div>

              <form action="" method="" id="" name="">
                <div class="row">

                  <div class="form-group col-sm-6">
                    <label>New Password</label>
                    <input type="password" name="new_pass" id="new_pass" value="" class="form-control" placeholder="Type New Password">
                    <p id="pserror" class="text-danger"></p>
                    <p id="psSucc"></p>
                  </div>
                  <div class="form-group col-sm-6">
                    <label>Confirm Password</label>
                    <input type="password" name="confirm_pass" id="confirm_pass" value="" class="form-control" placeholder="Type Confirm Password">
                  </div>
                  <div class="form-group col-sm-12">
                    <button type="button" name="submit" id="ProfUpdate" class="btn2">Change Password</button>
                  </div>

                </div>
              </form>

            </div>

          </div>

        </div>
      </div>
      <!--end right side-->
    </div>
  </div>

  </div>
</section>
<!-- page-title end-->
<!--footer start-->
<?php include('includes/footer.php')
?>
<!-- Image update and settings -->
<script>
  $(document).ready(function() {

    $('#file-upload').change(function(e) {
      var filename = $('#file-upload');
      imgname = filename[0].files[0].name;
      $('#fileMsg').text(imgname);

      $('#loader').css('display', 'block');
      setTimeout(function() {
        $('#loader').css('display', 'none');
      }, 500);

      var fileData = new FormData($("#submit-group")[0]);
      console.log(fileData);
      $.ajax({
        url: "insertimage.php",
        type: "POST",
        data: fileData,
        contentType: false,
        processData: false,
        success: function(data) {

          $('#default').hide();
          $('#image_preview').html(data);
          $('#fileMsg').text(' ');
        }
      });
    });
  });
</script>

<script>
  //to toggle user from user details to edit details page
  $(document).ready(function() {
    $('#click').click(function() {
      $('#dashbaordDiv').removeClass('active');
      $('#dashboard').removeClass('active');
      $('#dashboard').removeAttr("style");
      $('#profile').addClass('active');
      $('#personalInfo').addClass('active');
      $('#personalInfo').removeAttr("style");
    });

    //to check new password value 
    $('#new_pass').on("keyup", function() {
      var newPass = this.value;
      var pas = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
      if (!newPass.match(pas)) {
        $('#pserror').text("password between 7 to 15 characters which contain at least one numeric digit and a special character");
      } else {
        $('#pserror').text(" ");
      }
    })

    //logout user from dashboard on click on logOut option  
    $('#logout').click(function() {
      window.location.replace("logout.php");
    })
  })
</script>

<script>
  $(document).ready(function() {
    function timer() {
      var time = 10;
      var timer = setInterval(function() {
        time--;
        if (time >= 0) {
          $('#timer').text(time);
          $('#resendOtp').attr("disabled", "disabled");
          $('#resendOtp').css("cursor", "not-allowed");
        }
        if (time < 0) {

          clearInterval(timer);
          $('#resendOtp').removeAttr("disabled", "disabled");
          $('#resendOtp').css("cursor", "pointer");
        }
      }, 1000);

    }

    $('#updateProf').on("click", function() {
      var fname = $('#prof_f_name').val();
      var lname = $('#Profile_l_name').val();
      var contact = $('#Profliephone').val();
      var email = $('#email').val();
      var country = $('#country').val();
      var state = $('#state').val();
      var city = $('#city').val();
      var address = $('#address').val();
      timer();
      //updating users data
      $.ajax({
        url: "udateDashBoardData.php",
        type: "POST",
        data: {
          fname: fname,
          lname: lname,
          contact: contact,
          email: email,
          country: country,
          state: state,
          city: city,
          address: address
        },
        success: function(data) {
          $('#returnMSG').html(data);
        }
      })
      //inserting contry code and contact in tempusers 

      $.ajax({
        url: "sendOtp.php",
        type: "POST",
        data: {
          number: contact,
          countrycode: country,

        },
        success: function(data) {
          if (data == 1) {
            $("#otp").css("display", "none");
          } else {
            $("#otp").css("display", "block");
            $('#conNum').text(contact);

          }
        }
      })
      //validating otp for mobile verification
      $("#validate").on("click", function() {
        var otp1 = $('#otp1').val();
        var otp2 = $('#otp2').val();
        var otp3 = $('#otp3').val();
        var otp4 = $('#otp4').val();
        var enteredOtp = otp1 + otp2 + otp3 + otp4;
        console.log(enteredOtp);
        $.ajax({
          url: "validateOtp.php",
          type: "POST",
          data: {
            userOtp: enteredOtp,
            contact: contact
          },
          success: function(data) {
            if (data == 1) {
              $('#true').text("mobile number verified");
              $('#false').text(" ");
              setTimeout(function() {
                window.location.replace("http://localhost/genetics-testing/dashboard.php");
              }, 2000)
            } else {
              $('#false').text("Invalid OTP");
              $('#true').text(" ");
            }
          }
        })
      })

    })

    $('#resendOtp').on("click", function() {
      $('#otpform')[0].reset();
      $('#false').text("");
      var resend = "resendOtp";
      var contact = $('#Profliephone').val();
      timer();
      $.ajax({
        url: "resendOtp.php",
        type: "POST",
        data: {
          resend: resend,
          contact: contact
        },
        success: function(data) {

        }
      })
      console.log("clicked");
    })
    /* $('#otpclose').on("click",function  () {
       $('#otp').hide();
       $('#otpform')[0].reset();
     })*/
  })
  window.onbeforeunload = function() {
    return "Dude, are you sure you want to leave? Think of the kittens!";
  }
  $(document).on("submit", "form", function(event) {
    window.onbeforeunload = null;
  });
</script>