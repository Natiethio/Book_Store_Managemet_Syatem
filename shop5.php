<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
      $message[] = 'already added to cart!';
   }else{
      mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
      $message[] = 'product added to cart!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>shop</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="icon" href="images/kido3.jpg" type="image/x-icon">
</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading" style="background-image:url('images/backgd3.jpg')">
   <h3>መደብር</h3>
   <p> <a href="shop.php">home</a> /ትርጉም </p>
</div>

<section class="products">

<h1 class="title">latest editions</h1>
<h2 style="font-style:bold;text-align:center;font-size:30px;margin-bottom:20px"><span style="color:blueviolet">Translated</span> Books</h2>
   <div class="box-container">

      <?php  
         $select_product5 = mysqli_query($conn, "SELECT * FROM `product5`") or die('query failed');
         if(mysqli_num_rows($select_product5) > 0){
            while($fetch_product5 = mysqli_fetch_assoc($select_product5)){
      ?>
     <form action="" method="post" class="box" style="background: linear-gradient(to right, white, rgb(0,0,0))">
      <img class="image" src="uploaded_img/<?php echo $fetch_product5['image']; ?>" alt="">
      <div class="name"><?php echo $fetch_product5['name']; ?></div>
      <div class="price"><?php echo $fetch_product5['price']; ?>ETB</div>
      <input type="number" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_product5['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_product5['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_product5['image']; ?>">
      <input type="submit" value="add to cart" name="add_to_cart" class="btn" style="background-color:#1797a0">
     </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>
   
      

</section>








<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>