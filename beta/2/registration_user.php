<?php include('inc/header.php')?>


<?php 

$email = $_GET['email'];
$usercode = $_GET['code'];

$mql = "UPDATE users set is_verified='1' where email='$email' and randomcode='$usercode'";
mysqli_query($db, $mql);


?>

<div class="page-wrapper">
  <section class="thank_you_page">
      <div class="container">
          <div class="row">
              <div class="col-md-12 text-center">
                  <div class="thank_you_page_inner">
                         <div class="thank_you_icon flex-center">
                             <img src="images/img/hand.png" alt="">
                         </div>
                         <h4 class="thank_you_content">Thank you! We have recieved your request.</h4>
                         <p class="thank_tou_desc">We will contact you soon.</p>
                         <a href="index.php" class="thank_you_button">Go Back to Home</a>
                  </div>
              </div>
          </div>
      </div>
  </section>
</div>


<?php include('inc/footer.php')?>