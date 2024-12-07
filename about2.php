<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>About Us Section</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <link rel="stylesheet" href="css/style4.css">
	<link rel="stylesheet" type="text/css" href="css/stylels3.css">
    <link rel="icon" href="images/kido3.jpg" type="image/x-icon">
	<style>
* {
	box-sizing: border-box
}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 200px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color:blue;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
</head>	
<body>

<?php include 'header.php'; ?>
<div class="heading" style="background-image:url('images/backgro1.jpg')">
   <h3>about us</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>


	<div class="section">
		<div class="container">
			<div class="content-section">
			<div class="slideshow-container">


<div class="mySlides fade">
  <div class="numbertext">1 / 10</div>
  <img src="images/annafrank.png" style="width:100%">
  <div class="text">አናፍራንክ</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">2 / 10</div>
  <img src="images/fikereske.jpg" style="width:100%">
  <div class="text">ፍቅር እስክ መቃብር</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">3 / 10</div>
  <img src="images/dertogada.jpg" style="width:100%">
  <div class="text">ዴርቶጋዳ</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 10</div>
  <img src="images/alemenor.jpg" style="width:100%">
  <div class="text">አለመኖር</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">5 / 10</div>
  <img src="images/LF15.jpg" style="width:100%">
  <div class="text">ከአድማስ ባሻገር</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">6 / 10</div>
  <img src="images/mekeryocu.jpg" style="width:100%">
  <div class="text">መከረኛቹ</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">7/ 10</div>
  <img src="images/emgwa.jpeg" style="width:100%">
  <div class="text">እመጎ</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">8/ 10</div>
  <img src="images/melorina.jpg" style="width:100%">
  <div class="text">ሜሎሪና</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">9 / 10</div>
  <img src="images/yoratorad.jpg" style="width:100%">
  <div class="text">ዮራቶራድ</div>
</div>
<div class="mySlides fade">
  <div class="numbertext">10 / 10</div>
  <img src="images/tewd.jpeg" style="width:100%">
  <div class="text">አንድለእናቱ</div>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>



<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
<h2 style="margin-left:200px">your Number one choice</h1>
				<div class="title">
					<h1>About Us</h1>
				</div>
				<div class="content">
					<h3>Gion Book Store</h3>
					<p>Dear readers</p>

                  <p> We offer a tremendous gathering of books in the various classifications of Fiction Non-fiction, Biographies, 
                   History,  Children. We likewise move in immense accumulation of Investments and Management, Computers, Engineering, 
                   Medical, College and School content references books proposed by various foundations as schedule the nation over. 
                   Other than this, we likewise offer an expansive gathering of E-Books at reasonable valuing.</p>
					<div class="button">
						<a href="shop.php">Visit our store</a>
					</div>
				</div>
				<div class="social">
					<a href=""><i class="fab fa-facebook-f"></i></a>
					<a href=""><i class="fab fa-twitter"></i></a>
					<a href=""><i class="fab fa-instagram"></i></a>
				</div>
			</div>
			<div class="image-section">
				<img src="images/kido2.jpg">
			</div>
		</div>
	</div>
	

	
</body>
</html>


<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>