<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php"); // connection to db
error_reporting(0);
session_start();

include_once 'product-action.php'; //including controller

?>
<?php include("inc/header.php"); ?>
        <div class="page-wrapper">

<div class=" page-wrapper container">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-12"  style="position: sticky; top: 80px;">
                        
                         <div class="widget widget-cart">
                                <div class="widget-heading">
                                    <h3 class="widget-title text-dark">
                                 Your Shopping Cart
                              </h3>
							  				  
							  
                                    <div class="clearfix"></div>
                                </div>
                                <div class="order-row bg-white">
                                    <div class="widget-body">
									
									
	<?php
if(count($_SESSION['cart_item'])>=0){




$item_total = 0;
$more=150;

foreach ($_SESSION["cart_item"] as $item)  // fetch items define current into session ID
{
?>									
									
                                        <div class="title-row">
										<?php echo $item["title"]; ?><a href="cart.php?action=remove&id=<?php echo $item["d_id"]; ?>#qqw" >
										<i class="fa fa-trash pull-right"></i></a>
										</div>
										
                                        <div class="form-group row no-gutter">
                                            <div class="col-xs-6">
                                                 <input type="text" class="form-control b-r-0" value=<?php echo "₹".$item["price"]; ?> readonly id="exampleSelect1">
                                                   
                                            </div>
                                            <div class="col-xs-6">
                                               <input class="form-control" type="text" readonly value='Quantity : <?php echo $item["quantity"]; ?>' id="example-number-input"> </div>
                                        
									  </div>
									  
	<?php
$item_tota += (($item["price"]*$item["quantity"]));
$item_total = $item_tota + 29; // calculating current price into cart

$more = 150-$item_total;
}
}
else{
        echo "hyello";
}
?>								  

									  
									  
									  
                                    </div>
                                </div>
                               
                                <!-- end:Order row -->
                             
                             
                             
                             
                             
                             	<?php
if(count($_SESSION['cart_item'])>=0){

?>									
									
                                        <div class="widget-body">
                                    <div class="price-wrap text-xs-center">
                                        <p>TOTAL</p>
                                        <h3 class="value"><strong><?php echo "₹".$item_total; ?></strong></h3>
                                      
                                        <p>Incl 29 ₹ Shipping</p>
									  
	<?php

}

else{
        echo "hy";
}
?>	
                               
                                        <?php
                                        
                                        if(count($_SESSION['cart_item'])>=0){


if ($item_total >= 148.99) {
  echo ' <a href="checkout.php?res_id='.$_GET['res_id'].'>&action=check"  class="btn theme-btn btn-lg">Checkout</a>';
}
else{
    echo ' 
    <p style=" font-size: 1.0rem;">Add '. $more .' ₹  more items to checkout.</p>
    <a href="#" class="btn theme-btn btn-sm" style=" font-size: 1.0rem;">Minimum order QTY is 150 ₹</a> <br> <br>
    <a href="restaurants.php" class="btn theme-btn btn-sm" style=" font-size: 1.0rem;">Explore More Dishes ! </a>     
  ';  
}
}
else{
        echo "hyello";
}
?>
                                       
                                        



                                        </div>
                                    </div>
                                </div>
								
						
								
								
                            </div>
                    </div>

</div>



<?php include("inc/footer.php"); ?>