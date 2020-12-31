 <?php 
 $conn = mysqli_connect("localhost", "root" , "" , "youturn_genetics");
 if ($conn) {
     echo "success";
 } 
 else { ?><script>alert("failed");</script><?php } ?>