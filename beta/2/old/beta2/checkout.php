<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
include_once 'product-action.php';
error_reporting(0);
session_start();
if(empty($_SESSION["user_id"]))
{
	header('location:login.php');
}
else{

										 
												foreach ($_SESSION["cart_item"] as $item)
												{
											
                                                    $item_subtotal += ($item["price"]*$item["quantity"]);
                                                         $item_tota += (($item["price"]*$item["quantity"]));
$item_total = $item_tota + 29;
												
													if($_POST['submit'])
													{
                                                        
                                                        $_SESSION['address'] = $_POST['address'];
                                                        $_SESSION['area'] = $_POST['area'];
                                                        
                                                      
													$SQL="insert into users_orders(u_id,rs_id,address,area,title,quantity,price) values('".$_SESSION["user_id"]."','".$item['rs_id']."','".$_SESSION["address"]."','".$_SESSION["area"]."','".$item["title"]."','".$item["quantity"]."','".$item["price"]."')";
						                              
														mysqli_query($db,$SQL);
														
														$success = '
                                                        <style>.card h1{color:#88B04B;font-family:"Nunito Sans","Helvetica Neue",sans-serif;font-weight:900;font-size:40px;margin-bottom:10px}.card p{color:#404F5E;font-family:"Nunito Sans","Helvetica Neue",sans-serif;font-size:20px;margin:0}i{color:#9ABC66;font-size:100px;line-height:200px;margin-left:-15px}.card{background:white;padding:60px;border-radius:4px;box-shadow:0 2px 3px #C8D0D8;display:inline-block;margin:0 auto}.d{text-align:center;padding:40px 0;background:#EBF0F5}</style>
                                                        <div class="d">
                                                        <div class="card">
                                                        <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                                                          <i class="checkmark">✓</i>
                                                        </div>
                                                          <h1>Success</h1> 
                                                          <p>We received your order request<br/> we will be in touch shortly!</p>
                                                          <p>check your order  <a href="your_orders.php">FROM HERE !</a></p>
                                                        </div>
                                                        </div>';
                                                        	unset($_SESSION["cart_item"]);

														
														
													}
												}
?>


<?php include('inc/header.php')?>
        <div class="page-wrapper">
            <div class="top-links">
                <div class="container">
                    <ul class="row links">
                      
                        <li class="col-xs-12 col-sm-4 link-item"><span>1</span><a href="restaurants.php">Choose Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item "><span>2</span><a href="#">Pick Your favorite food</a></li>
                        <li class="col-xs-12 col-sm-4 link-item active" ><span>3</span><a href="checkout.php">Order and Pay online</a></li>
                    </ul>
                </div>
            </div>
			
                <div class="container">
                 
					   <span style="color:green;">
								<?php echo $success; ?>
										</span>
					
                </div>
            
			
			
				  
            <div class="container m-t-30">
			<form action="" method="post">
                <div class="widget clearfix">
                    
                    <div class="widget-body">
                        <form method="post" action="#">
                            <div class="row">
                                
                                <div class="col-sm-12">
                                    <div class="cart-totals margin-b-20">
                                        <div class="cart-totals-title">
                                            <h4>Cart Summary</h4> </div>
                                        <div class="cart-totals-fields">
										
                                            <table class="table">
											<tbody>
                                          
												 
											   
                                                    <tr>
                                                        <td>Cart Subtotal</td>
                                                        <td> <?php echo "₹ ".$item_subtotal; ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Shipping &amp; Handling</td>
                                                        <td>₹ 29 </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-color"><strong>Total</strong></td>
                                                        <td class="text-color"><strong> <?php echo "₹ ".$item_total; ?></strong></td>
                                                    </tr>
                                                </tbody>
												
												
												
												
                                            </table>
                                        </div>
                                    </div>
                                    <!--cart summary-->
                                    <div class="payment-option">
                                        <ul class=" list-unstyled">
                                            <li>
                                                <label class="custom-control custom-radio  m-b-20">
                                                    <input name="mod" id="radioStacked1" checked value="COD" type="radio" class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Payment on delivery</span>
                                                    <br> <span>We accept PAYTM , UPI , even Cash at your doorsteps.   </span> </label>
                                            </li>
                                            <!-- <li>
                                                <label class="custom-control custom-radio  m-b-10">
                                                    <input name="mod"  type="radio" value="paypal" disabled class="custom-control-input"> <span class="custom-control-indicator"></span> <span class="custom-control-description">Paypal <img src="images/paypal.jpg" alt="" width="90"></span> </label>
                                            </li> -->
                                        </ul>

                                                <form action="#" method="post">
                                                
                                       
                                    <div class="form-group col-sm-12">
                                       
                                    <label for="exampleTextarea1">Select Area</label>
                                       <input list="area"  class="form-control" id="exampleTextarea1"  name="area"  placeholder="Select Area" required>
<datalist id="area" class="form-group col-sm-6" >
<option value="Patanjali-1">Patanjali - 1</option>
                                             <option value="Patanjali-2">Patanjali - 2 </option>
                                             <option value="Patanjali-sevasadan">Patanjali Seva Sadan </option>
                                             <option value="hariashraynagar">Hari Ashray Nagar </option>
                                             <option value="Anandikacity">Anandika City </option>
                                             <option value="Arihantcollg">Arihant College</option>
                                             <option value="Adiyogi">Adi Yogi</option>
                                             <option value="Ombio">Om Bio College </option>
                                             <option value="Shubhamcity">Shubham City </option>
                                             <option value="Arogyam">Arogyam</option>
                                             <option value="COER">COER College</option>
</datalist>   
                                    </div>
                                    <div class="form-group col-sm-12">
                                       <label for="exampleTextarea">Delivery Address</label>
                                       <textarea class="form-control" id="exampleTextarea"  name="address" rows="3"  placeholder="Enter Delivery Address" required></textarea>
                                    </div>
                                                
                                                
                                                </form>

                                        <p class="text-xs-center"> <input type="submit" onclick="return confirm('Are you sure?');" name="submit"  class="btn btn-outline-success btn-block" value="Order now"> </p>
                                    </div>
									</form>
                                </div>
                            </div>
                       
                    </div>
                </div>
				 </form>
            </div>
            <?php
            
              
            
            
            include('inc/footer.php')?>
<?php
}
?>
