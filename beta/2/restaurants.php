<?php 

include("inc/header.php");

include("product-action.php"); //including controller
 ?>

        <div class="page-wrapper">
            <!-- top Links -->
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                       
                        <li class="col-xs-12 col-sm-4 link-item active"><span>1</span><a href="restaurants.php">Choose Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>2</span><a href="#">Pick Your favorite food</a></li>
                        <li class="col-xs-12 col-sm-4 link-item"><span>3</span><a href="#">Order and Pay online</a></li>
                    </ul>
                </div>
            </div>
            <!-- end:Top links -->
            <!-- start: Inner page hero -->
            <div class="inner-page-hero bg-image" data-image-src="images/img/res.jpeg">
                <div class="container"> </div>
                <!-- end:Container -->
            </div>
            <div class="result-show">
                <div class="container">
                    <div class="row">
                       
                       
                    </div>
                </div>
            </div>
            <!-- //results show -->
            <section class="restaurants-page">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-5 col-lg-3 sm-d-none">
                          
                          
                            <div class="widget clearfix">
                                <!-- /widget heading -->
                                <div class="widget-heading">
                                    <h3 class="widget-title text-dark">
                                 Popular Dishes
                              </h3>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="widget-body">
                                <div class="restaurants-filter pull-right">
                            <nav class="primary pull-left">
                                          
                            <?php 
						// fetch records from database to display popular first 3 dishes from table
						$query_res= mysqli_query($db,"select * from dishes where featured='yes' LIMIT 3"); 
									      while($r=mysqli_fetch_array($query_res))
										  {
													
						                       echo '<div class="col-xs-12 food-item">
														<div class="food-item-wrap">
															<div class="figure-wrap bg-image" data-image-src="admin/Res_img/dishes/'.$r['img'].'" style="height: 150px;">
															
																
															</div>
															<div class="content">
                                                            <form method="post" action="dishes.php?res_id='.$r['rs_id'].'&action=add&id='.$r['d_id'].'">
																<h5><a href="dishes.php?res_id='.$r['rs_id'].'">'.$r['title'].'</a></h5>
																<div class="product-name">'.$r['slogan'].'</div>
																<div class="price-btn-block">
																<span class="price pull-left">₹'.$r['price'].'</span>
                                                                <input class="pull-right" type="number" name="quantity"  min="1" max="15" value="1" size="1" />
                                                                </div>
                                                                
                                                                <input type="submit" class="btn  theme-btn-dash" style="margin-top:10px;margin-left: auto;margin-right: auto;" value="Add to cart" />
										  
                                                                 
                                                                </form>
                                                                 </div>
															
														</div>
												</div>';
													
										  }

						
						
						?>
                            </nav>
                        </div>
                                </div>
                            </div>
                            <!-- end:Widget -->
                        </div>
                        <div class="col-xs-12 col-md-7 col-lg-9 col-md-pull-9 ">
                            
                              <h3 class="widget-title text-dark text-center">
                                 Popular Restaurants
                              </h3>
                              
                            <div class="bg-gray restaurant-entry mt-10">
                                <div class="row">
                                <?php
                                if($_SESSION["user_id"]) // if user is login
							{
								echo '<div class="entry-dscr" style="color:green;background-color: #c4c4c4;border: 1px solid black;border-radius: 40px;"> Welcome back ! please head to your previous restaurant or Start with a new one ! </div> <br>';
							}
              ?>
								<?php $ress= mysqli_query($db,"select * from restaurant where status='1' ORDER BY prior ASC");
									      while($rows=mysqli_fetch_array($ress))
										  {
                                            $query= mysqli_query($db,"select * from res_category where c_id='".$rows['c_id']."' ");
                                            $rowss=mysqli_fetch_array($query);
													
						
													 echo' <div class="col-sm-12 col-md-12 col-lg-8 text-xs-center text-sm-left '.$rowss['c_name'].'">
															<div class="entry-logo">
																<a class="img-fluid" href="dishes.php?res_id='.$rows['rs_id'].'" > <img src="admin/Res_img/'.$rows['image'].'" alt="Food logo"></a>
															</div>
															<!-- end:Logo -->
															<div class="entry-dscr">
																<h5><a href="dishes.php?res_id='.$rows['rs_id'].'" >'.$rows['title'].'</a></h5> <span>'.$rows['address'].' <a href="#">...</a></span>
																<ul class="list-inline">
                                                                <li class="nav-item"> <i class="fa fa-clock-o"></i> '. $rows['o_hr'].'-'.$rows['c_hr'].' | <i class="fa fa-check"></i> Min ₹150 | <i class="fa fa-motorcycle"></i> 30 min</li>
																</ul>
															</div>
															<!-- end:Entry description -->
														</div>
														
														 <div class="col-sm-12 col-md-12 col-lg-4 text-xs-center">
																<div class="right-content bg-white">
																	<div class="right-review">
                                                                       
																		
																		<p>  <a href="dishes.php?res_id='.$rows['rs_id'].'" class="btn theme-btn-dash">View Menu</a> </p> </div>
																</div>
																<!-- end:right info -->
															</div>';
                                                           
                                                               
										  }
						
						
						?>
                            


                                </div>
                                <!--end:row -->
                            </div>
                         
                            
                                
                            </div>
                          
                          
                           
                        </div>
                    </div>
                </div>
            </section>
            <?php include("inc/footer.php"); ?>