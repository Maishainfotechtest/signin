 <?php 
 if (isset($_POST['click'])) {
       echo "clicked";
 }
 ?><!DOCTYPE html>
 <html lang="en">
 <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Document</title>
 </head>
 <body>
       <form action="" method="post">
       <input type="button" value="click" name="clicked">
       </form>
 </body>
 </html>