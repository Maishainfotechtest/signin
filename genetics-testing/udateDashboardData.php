<?php
include 'connection.php';
//updating userdata 
$fname = $_POST['first_name'];
$lname = $_POST['last_name'];
$mobile = $_POST['mobile'];
$country = $_POST['country'];
$state = $_POST['state'];
$city = $_POST['city'];
$address = $_POST['address'];

if (isset($_POST['update'])) {
    $fname = $_POST['first_name'];
    $lname = $_POST['last_name'];
    $mobile = $_POST['mobile'];
    $country = $_POST['country'];
    $state = $_POST['state'];
    $city = $_POST['city'];
    $address = $_POST['address'];

    $updateQuery = "UPDATE `users` SET `f_name`= '$fname',`l_name`= '$lname', `countrycode`='$country',`state`='$state',`city`='$city',`address`='$address' , `mobile`='$mobile' WHERE email='$email'";

    $runQuery = mysqli_query($conn, $updateQuery);
    if ($runQuery) {
        echo "updated";
        $_SESSION['username'] = $fname;
?>
        <script>
            window.location.replace("http://localhost/genetics-testing/dashboard.php");
        </script>
        <?php
        ?>

<?php } else {
        echo "failed due to " . mysqli_error($conn);
    }
}
?>