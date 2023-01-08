<section class="app-section">
            <div class="app-wrap">
                <div class="container">
                    <div class="row text-img-block text-xs-left">
                        <div class="container">
                            <div class="col-xs-12 col-sm-5 right-image text-center">
                          <img src="https://zolostays.com/blog/wp-content/uploads/2020/11/image7-1.jpg" alt="Right Image" class="img-fluid" style="border-radius: 10px;">
                            </div>
                            <div class="col-xs-12 col-sm-7 left-text">
                                <h3>The Best Food Tiffin Service</h3>
                                <p>Now you can make Home Made fresh Meal happen pretty much wherever you are, providing you all day food by Our Tiffin Service in haridwar.</p>
                                <div class="social-btns">
                                    <a href="https://api.whatsapp.com/send?phone=917617477477&text=%22Hello!ROWDYMEALS%22&source=&data=" class="app-btn apple-button clearfix">
                                        <div class="pull-left" style="float: left !important;"><i class="fa fa-whatsapp "></i> </div>
                                        <div class="pull-right"> <span class="text">Chat on whatsapp </span> </div>
                                    </a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>  
  
  
  
  <!--   Return To Top  -->
  <a class="return-to-top text-white bg-base-color d-inline-block" href="javascript:void(0)"><i class="lni-arrow-up"></i></a> <!-- start: FOOTER -->
            <section class="footer" style="border-top: 2px solid #ccc;">
  <div class="container">
    <div class="row">
      <div class="col-md-4 social_icons_wrap pull_left">
      <p>
        <a href="index.php"> <img src="images/logo.png" alt="Footer logo"> </a> 
        </p>
        <div class="itle" style="font-size: 17px;margin-top: 15px;margin-bottom: 10px;">Fastly • Rowdly • Tastly </div>
       
        <p>
          <a href="tel:+91-7617477477"><span>Tel: </span> +91-7617477477</a> <br>
           <a href="mailto:hello@rowdymeals.com" class="mobo_block"><span>Email:
            </span>
            hello@rowdymeals.com</a>
        </p>
        <p>Shubham City, Haridwar, Uttarakhand, India  -249405 </p>
        
      </div>
      <div class="col-md-4  footercol2 ">
        <div class="widget_title">How it Works!</div>
  
                        <ol class="work">
                             <li>Choose Restaurant </li>
                            <li>Choose Meal</li>
                            <li>Enter Your Location </li>
                             <li>Wait For Delivery </li>
                            <li>Pay via Card , UPI or Cash </li>
                        </ol>
      </div>
      <div class="col-md-4 p-50 footercol3">
        <div class="widget_title">Quick Links</div>
                        <ul>
                        <li><a href="restaurants.php">Explore Restaurants</a> </li>
                        <li><a href="about.php">About Rowdy Meals</a> </li>
                        <li><a href="contact.php">Contact us</a> </li>
                        <?php
                        
						if(empty($_SESSION["user_id"])) // if user is not login
							{
								echo '<li ><a href="login.php" >Login</a> </li>
							  <li ><a href="registration.php" >Signup</a> </li>';
							}
							else{
							    	echo '<li ><a href="your_orders.php" >Your Orders</a> </li>';
							}
              ?>
                           
                            <!-- <li><a href="#">We are hiring</a> </li> -->
                        </ul>
        </p>
      
      </div>
    </div>
  </div>
</section>


<section class="copyright_section">
  <div class="container">
      <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
         
              <div class="menu_footer_menu_container">
                  <ul id="menu_footer_menu">
                  <li><a href="https://www.facebook.com/Rowdymeals"><i class="fa fa-facebook-f"></i></a></li>
            <li><a href="https://www.linkedin.com/company/rowdy-meals"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="https://www.instagram.com/rowdymeals"><i class="fa fa-instagram"></i></a></li>
                 </ul>
              </div>
                        </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
              <div class="copy_txt">
                  <p> &copy; 2021 ROWDY MEALS |  ALL RIGHTS RESERVED.</p>
              </div>
          </div>
      </div>
  </div>


</section>









    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>

    

    </body>


</html>