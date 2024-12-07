<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   
   <link rel="icon" href="images/kido3.jpg" type="image/x-icon">
   
</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading" style="background-image:url('images/backgro1.jpg')">
   <h3>about us</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>

<section class="about">

   <div class="flex">
      <img src="images/kido3.jpg">
      <span style="color:green;font-size:50px">ግዮን </span>  <span style="color:#e7e40b;font-size:50px">መፅሃፍት</span> <span style="color:rgb(247, 19, 19);font-size:50px">መደብር</span>
      <h1>Addis Abeba/Ethiopa</h1>
      <h1></h1>
   </div>

</section>









<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>