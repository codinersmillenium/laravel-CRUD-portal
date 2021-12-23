<?php if (isset($component)) { $__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\AppLayout::class, []); ?>
<?php $component->withName('app-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link rel="stylesheet" type="text/css" href="Assets/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <script src="assets/js/jquery-slim.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
     <?php $__env->slot('header', null, ['style' => 'width:60% position:fixed']); ?> 
        <h2 class="font-semibold text-xl text-gray-400 leading-tight">
            <?php echo e(__('Dashboard')); ?>

        </h2>
     <?php $__env->endSlot(); ?>
    <!-- <img class="bg-dashboard" src="home.jpg"> -->
    <div class="slideshow-container">


<div class="big-slide">
    <div class="sambutan">
         <p class="text"><b>The Academic Portal is a system that allows Harford Institute academics to receive 
            information more quickly via the Internet. This system is expected to make it easier 
            for every academic community to carry out academic activities and the 
            teaching and learning process. Welcome to use this facility.</b></p>
    </div>
  </div>
    <div class="mySlides fade">
    <img src="home.jpg" style="width:100%; height:650px; margin-top:3px; opacity:70%; ">
    </div>
    <div class="mySlides fade">
    <img src="profil4.jpg" style="width:100%; height:650px; margin-top:3px;">
    </div>
    <div class="mySlides fade">
    <img src="profil3.jpg" style="width:100%; height:650px; margin-top:3px;">
    </div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>


<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

</div>
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
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
    
    

     <div class="motto">
          <h1><b>"Every Single Student is Our Priority".</b></h1>
    </div>

    
    <!-- info -->
    <div class="row1" style="margin:80px;">
        <div class="column">
            <div class="kartu">
            <p><i class="fa fa-calendar"></i></p>
            <h3>15+</h3>
            <p>Years</p>
            </div>
        </div>

        <div class="column">
            <div class="kartu">
            <p><i class="fa fa-building"></i></p>
            <h3>14+</h3>
            <p>Branches</p>
            </div>
        </div>
        
        <div class="column">
            <div class="kartu">
            <p><i class="fa fa-users"></i></p>
            <h3>50+</h3>
            <p>Teachers</p>
            </div>
        </div>
        
        <div class="column">
            <div class="kartu">
            <p><i class="fa fa-users"></i></p>
            <h3>50000+</h3>
            <p>Students</p>
            </div>
        </div>
        </div>
    </div> 
</div>        
</div> 

<div>
<footer class="footer-distributed">
 
 <div class="footer-left">
 
 <h3>WebDev<span>Trick</span></h3>
 
 <p class="footer-links">
 <a href="#">Home</a>
 ·
 <a href="#">Blog</a>
 ·
 <a href="#">Pricing</a>
 ·
 <a href="#">About</a>
 ·
 <a href="#">Faq</a>
 ·
 <a href="#">Contact</a>
 </p>
 
 <p class="footer-company-name">webdevtrick &copy; 2019</p>
 </div>
 
 <div class="footer-center">
 
 <div>
 <i class="fa fa-map-marker"></i>
 <p><span>21 Revolution Street</span> Delhi, India</p>
 </div>
 
 <div>
 <i class="fa fa-phone"></i>
 <p>+1 555 123456</p>
 </div>
 
 <div>
 <i class="fa fa-envelope"></i>
 <p><a href="mailto:support@company.com">contact@webdevtrick.com</a></p>
 </div>
 
 </div>
 
 <div class="footer-right">
 
 <p class="footer-company-about">
 <span>About the company</span>
 Web Dev Trick is a blog for web designers, graphic designers, web developers &amp; SEO Learner.
 </p>
 
 <div class="footer-icons">
 
 <a href="#"><i class="fa fa-facebook"></i></a>
 <a href="#"><i class="fa fa-twitter"></i></a>
 <a href="#"><i class="fa fa-linkedin"></i></a>
 <a href="#"><i class="fa fa-github"></i></a>
 
 </div>
 
 </div>
 
 </footer>
</div>
<script src="assets/js/jquery-slim.min.js"></script>
<script>
// Get the elements with class="column"
var elements = document.getElementsByClassName("column");

// Declare a loop variable
var i;

// List View
function listView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "100%";
  }
}

// Grid View
function gridView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "50%";
  }
}



/* Optional: Add active class to the current button (highlight it) */
var container = document.getElementById("btnContainer");
var btns = container.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>



</body>
</html>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da)): ?>
<?php $component = $__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da; ?>
<?php unset($__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da); ?>
<?php endif; ?><?php /**PATH E:\xamppNew\htdocs\webtes\portal\resources\views/dashboard.blade.php ENDPATH**/ ?>