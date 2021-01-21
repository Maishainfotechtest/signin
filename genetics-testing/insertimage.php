<?php 
include 'connection.php';
session_start(); 
 
// Check if form was submitted  update image  
if ($_FILES["file"]["name"] != " ") {
    $name = $_SESSION['name'];
    $email = $_SESSION['email'];
    $filename  = $_FILES["file"]["name"];
    //for using filename in javascript
    $_SESSION['filename'] =   $_FILES["file"]["name"];
    $tempname = $_FILES["file"]["tmp_name"];
    $folderpath = "./images/usersImage/" . $filename;
  
    //image details for validation
    $fileinfo = getimagesize($_FILES["file"]["tmp_name"]);
    $width = $fileinfo[0];
    $height = $fileinfo[1];
    //array for image extension validation
    $allowed_image_extension = array("png", "jpg", "jpeg");
    //print_r($fileinfo);
    //print_r($_FILES["image"]);
  
    // Get image file extension
   
    $file_extension = pathinfo($filename, PATHINFO_EXTENSION);
    $new_name = rand() . "." . $file_extension;
    $folderpath = "./images/usersImage/" . $new_name;
    

    if (!in_array($file_extension, $allowed_image_extension)) {

      echo '<p class="text-danger font-weight-bold text-capitalize"> invalid format  only jpeg , png are allowed . <p>';
      
    }
    //get image size forvalidation 
    else if (($_FILES["file"]["size"] > 200000)) {
      echo '<p class="text-danger text-capitalize" style="font-weight:bold;"> size limit exceeds 200kb. <p>';
    } 
    
    else {
      $fileupload = move_uploaded_file($tempname, $folderpath);
      $updateimage = "UPDATE `userimages` SET `imgSrc` = '$folderpath' WHERE `userimages`.`email` = '$email'";
      $runQuery = mysqli_query($conn, $updateimage);
      if ($runQuery) { 
        echo '<img src ="'.$folderpath.'" style="border-radius: 61px; height: 111px; width: 114px;" />';
    } else {
        echo "image not  updated";
      }
    }
  }





?>  


