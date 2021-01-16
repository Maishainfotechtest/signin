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
     <select name="" id="select"  class="w-25">
         <option value="lokesh" class="option" key="1">lokesh</option>
         <option value="garia" class="option" key="2">garia</option>
     </select>
 </body>
 </html>
<?php include('includes/footer.php')
?>
 <script>
     $(document).ready(function  () {
   $('#select').change(function  ( ) {

       var sel =     $("#select").find(':selected').attr('key');
       console.log(sel);
   });
         
     })
 </script>