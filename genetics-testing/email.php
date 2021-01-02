<?php
$email ="lokeshgaria8811@gmail.com";
$subject ="Simple Email Test via PHP";
$body ="Hi,click on the link to activate your account";
$headers="From: maishainfotech123@gmail.com";

if (mail($email,$subject,$body,$headers)) {
    echo "Email successfully sent to $email...";
} else {
    echo "Email sending failed...";
}
?>