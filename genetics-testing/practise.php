<?php include('includes/header.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" id="form">


        <input type="email" name="" id="email" style="width: 40%;
    padding: 0;
    margin: 33px;">

        <p class="text-danger mx-3" id="errorMsg"> </p>
        
    </form>
</body>

</html>
<?php include('includes/footer.php')
?>
<script>
    $(document).ready(function() {
        
        $('#email').on("input", function() {
            var email = document.getElementById('email').value;
            console.log(email);

            $.ajax({
                url: "checkmail.php",
                type: "POST",
                data:   {email: email},
               
                success: function(data) {

                   
                    $('#errorMsg').text(data);
                     
                }
            })
        })
    })
</script>