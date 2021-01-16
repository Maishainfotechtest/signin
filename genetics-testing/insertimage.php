<?php 
include 'connection.php';

$filenameAjax = $_POST['attrvalue'];

// Check if form was submitted  update image  
if (isset($_POST['attrvalue'])) {
    $name = $_SESSION['name'];
    $email = $_SESSION['email'];
    $filename  = $_FILES["$filenameAjax"]["name"];
    //for using filename in javascript
    $_SESSION['filename'] =   $_FILES["$filenameAjax"]["name"];
    $tempname = $_FILES["$filenameAjax"]["tmp_name"];
    $folderpath = "./images/usersImage/" . $filename;
  
    //image details for validation
    $fileinfo = getimagesize($_FILES["$filenameAjax"]["tmp_name"]);
    $width = $fileinfo[0];
    $height = $fileinfo[1];
    //array for image extension validation
    $allowed_image_extension = array("png", "jpg", "jpeg");
    //print_r($fileinfo);
    //print_r($_FILES["image"]);
    $folderpath = "./images/usersImage/" . $filename;
    $fileupload = move_uploaded_file($tempname, $folderpath);
    // Get image file extension
    $file_extension = pathinfo($filename, PATHINFO_EXTENSION);
    if (!in_array($file_extension, $allowed_image_extension)) {
      $response =  "invalid image extension. Only PNG and JPEG are allowed.";
    }
    //get image size forvalidation 
    else if (($_FILES["$filenameAjax"]["size"] > 200000)) {
      $response =  "Image size exceeds 200kb";
    } else {
      $updateimage = "UPDATE `userimages` SET `imgSrc` = '$folderpath' WHERE `userimages`.`email` = '$email'";
      $runQuery = mysqli_query($conn, $updateimage);
      if ($runQuery) { 
          echo "image updated";
          ?>
         
  <?php } else {
        echo "image not  updated";
      }
    }
  }
?>