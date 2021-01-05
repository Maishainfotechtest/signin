 <?php 
$to_mail = "bca40224202018@gmail.com";
$subject = "Simple Email Test via PHP";
$body = "Hi , click on the link to verify your email id : http://localhost/signin-master/genetics-testing/activate.php";
$headers = "From : lokeshgaria8811@gmail.com";
 
 if (mail($to_mail , $subject ,$body , $headers)) {
      echo "success email sent to " . $to_mail;
 }else {
       echo "failed " . $to_mail;
 }
?>
  