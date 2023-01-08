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
    require 'phpmailer/mail.php';
    
    	if($_POST['submit']){
    	    $count_item = count($_SESSION['cart_item']);
    	    
          $qry= "insert into users_orders_info(products,user_id)values('".$count_item."','".$_SESSION["user_id"]."')";
                
          mysqli_query($db,$qry);
          $ord_id = mysqli_insert_id($db);
                
		foreach ($_SESSION["cart_item"] as $item)
		{
		
               $item_subtotal += ($item["price"]*$item["quantity"]);
               $item_tota += (($item["price"]*$item["quantity"]));
               $item_total = $item_tota + 29;
               $count_item = count($_SESSION['cart_item']);
		
				$_SESSION['address'] = $_POST['address'];
				$_SESSION['area'] = $_POST['area'];
                $_SESSION['ordertype'] = $_POST['ordertype'];

              
				$SQL="insert into users_orders(o_id,u_id,rs_id,ordertype,address,area,title,quantity,price)
				values('".$ord_id."','".$_SESSION["user_id"]."','".$item['rs_id']."','".$_SESSION["ordertype"]."','".$_SESSION["address"]."','".$_SESSION["area"]."','".$item["title"]."','".$item["quantity"]."','".$item["price"]."')";

				mysqli_query($db,$SQL);
                
                if($count_item > 1){
                    
                    
                    
                    $item_title.= $item["title"]."<br/> ";
                    
                    $my1.= $item["title"] ."-". $item['quantity']."<br/> ";
                    
                    $rs_id.=$item['rs_id']."<br/>";
                   
                    
                    $price.=$item['price']."<br/>";
                
                    
                    $quantity.=$item['quantity']."<br/> ";
                    
          
          
                ?>
              
          
                        
                    
        <?php  }
                else{
                    
                    $item_title= $item["title"];
                    $rs_id=$item['rs_id'];
                    $price=$item['price'];
                    $quantity=$item['quantity'];
                }
                
          


				$success = '
				<style>
				    .card h1 {
				        color: #88B04B;
				        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
				        font-weight: 900;
				        font-size: 40px;
				        margin-bottom: 10px
				    }

				    .card p {
				        color: #404F5E;
				        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
				        font-size: 20px;
				        margin: 0
				    }

				    i {
				        color: #9ABC66;
				        font-size: 100px;
				        line-height: 200px;
				        margin-left: -15px
				    }

				    .card {
				        background: white;
				        padding: 60px;
				        border-radius: 4px;
				        box-shadow: 0 2px 3px #C8D0D8;
				        display: inline-block;
				        margin: 0 auto
				    }

				    .d {
				        text-align: center;
				        padding: 40px 0;
				        background: #EBF0F5
				    }
				</style>
				<div class="d">
				    <div class="card">
				        <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
				            <i class="checkmark">✓</i>
				        </div>
				        <h1>Success</h1>
				        <p>We received your order request<br /> we will be in touch shortly!</p>
				        <p>check your order <a href="your_orders.php">FROM HERE !</a></p>
				    </div>
				</div>';
				
				
		   }
		   
		   	//PHP Mailer
				
				$name = $_POST['name'];
				$email = $_POST['email'];
				$subject=$_POST['subject'];
				$content=$_POST['message'];
				$mail->From = "hello@rowdymeals.com";
				$mail->FromName = "Rowdy Meals"; // Name to indicate where the email came from when the recipient received
				$mail->AddAddress("hello@rowdymeals.com");
				$mail->AddBCC("hello@rowdymeals.com");
					$mail->AddCC("rowdymeals@gmail.com");
				$mail->AddCC("adityanamansingh@gmail.com");
				$mail->AddCC("mehultyagi101@gmail.com");
                $mail->SMTPDebug = false;
                $mail->do_debug = 0;
				$mail->WordWrap = 50; // set word wrap
				$mail->IsHTML(true); // send as HTML
				$mail->Subject = "ORDER "; //used for mail subject
				$mail->Body = '<html>

				<head>
				    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
				</head>

				<body style="background-color:#f6f6f6; box-sizing: border-box; font-family: " Poppins", sans-serif;">
				    <div style="margin:0px auto;background: #f3f3f3;padding: 10px;">
				        <div
				            style="border: 1px solid #ccc;background-color:#fff;clear:both;color:#666;line-height:32px;max-width:500px;margin:50px auto;border-radius:5px 5px 5px 5px">
				            <div
				                style="color:#fff;text-align:center;padding:0px 0px 0px;background-repeat:no-repeat;background-position:center;background-size:183px;background-image: url(https://rowdymeals.com/images/logo.png);background-color:#fff;width:100%;height:125px;border-radius:5px 5px 0px 0px">
				            </div>
				            <div
				                style="margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0px;padding-left:0;font-size:15px">
				                <img src="https://rowdymeals.com/images/img/message.png"
				                    style=" display: block; margin: 0 auto;width: 100px; padding-top: 15px;">
				                <table cellpadding="0" cellspacing="0"
				                    style="width: 100%;margin: 8px 1px;font-size: 12px;font-size:12px">
				                    <tbody>
				                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                User id</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left; ">
				                                '.$_SESSION["user_id"].'</td>
				                        </tr>
                                        
                                    <tr>
                                        <td
                                            style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
                                            User Name</td>
                                        <td
                                            style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
                                            '.$_SESSION["user_fname"].'</td>
                                    </tr>
                                    <tr>
                                        <td
                                            style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
                                            User Phone</td>
                                        <td
                                            style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
                                            '.$_SESSION["user_phone"].'</td>
                                    </tr>
                                    <tr>
                                        <td
                                            style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
                                            ORDER TYPE</td>
                                        <td
                                            style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
                                            '.$_SESSION['ordertype'].'</td>
                                    </tr>
                                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                Area</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$_SESSION["area"].'</td>
				                        </tr>
                                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                Address</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$_SESSION["address"].'</td>
				                        </tr>

				                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                Restro ID</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$rs_id.'</td>
				                        </tr>
				                        
				                        
				                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                Order Name</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$my1.'</td>
				                        </tr>
				                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                Quantity of Dish</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$quantity.'</td>
				                        </tr>
				                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                                Price of Dish</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$price.'</td>
				                        </tr>
				                        
				                        <tr>
				                            <td
				                                style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;">
				                               Order Total</td>
				                            <td
				                                style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;">
				                                '.$item_total.'</td>
				                        </tr>
				                        
                                       
				                    </tbody>
				                </table>
				                <p style="padding: 10px 30px;font-weight: 600;text-align: center;font-size: 14px;margin-bottom: 0;background-repeat:no-repeat;background-position:center;background-color:#FDB913;background: #FDB913;color: #000;text-transform: capitalize;">  Rowdy Meals | All right reserved</p>
				            </div>
				        </div>
				    </div>
				    </div>
				</body>

				</html>';
				$mail->Send();
            
		
				header("refresh:8;url=your_orders.php");
			
            }

?>


<?php include('inc/header.php')?>
<div class="page-wrapper">
    <div class="top-links">
        <div class="container">
            <ul class="row links">

                <li class="col-xs-12 col-sm-4 link-item"><span>1</span><a href="restaurants.php">Choose Restaurant</a>
                </li>
                <li class="col-xs-12 col-sm-4 link-item "><span>2</span><a href="#">Pick Your favorite food</a></li>
                <li class="col-xs-12 col-sm-4 link-item active"><span>3</span><a href="checkout.php">Order and Pay
                        online</a></li>
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
                                        <h4>Cart Summary</h4>
                                    </div>
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
                                                    <td class="text-color"><strong>
                                                            <?php echo "₹ ".$item_total; ?></strong></td>
                                                </tr>
                                            </tbody>




                                        </table>
                                    </div>
                                </div>
                                <!-- end cart summary-->
                                <?php   $Hour = date('G');  if ( $Hour >= 9 && $Hour <= 22 ) {          ?>
                                <div class="payment-option">
                                    <ul class=" list-unstyled">
                                       
                                        <?php 
                                            if(isset($_SESSION['OID']) && $_SESSION['paysucess']){
                                                echo "Paid Sucessfully";
                                                
                                              ?>
                                              
<form action="#" method="post">


<div class="form-group col-sm-12">

    <label for="exampleTextarea1">Select Area</label>
    <input list="area" class="form-control" id="exampleTextarea1"
        name="area" placeholder="Select Area" required>
    <datalist id="area" class="form-group col-sm-6">
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
    <input type="hidden" id="ordertype" name="ordertype" value="prepaid">
</div>
<div class="form-group col-sm-12">
    <label for="exampleTextarea">Delivery Address</label>
    <textarea class="form-control" id="exampleTextarea" name="address"
        rows="3" placeholder="Enter Delivery Address" required></textarea>
</div>


</form>


                                        <p class="text-xs-center"> <input type="submit"
                                                onclick="return confirm('Are you sure?');" name="submit"
                                                class="btn btn-outline-success btn-block" value="Order now"> </p>
                                </div>
                    </form>
                    <?php }else{ 
                                            
                                            
                                            
                                            
                                            ?>


                    <li>
                        <label class="custom-control custom-radio  m-b-20">
                            <input name="mod1" id="watch-me" value="COD" type="radio" class="custom-control-input">
                            <span class="custom-control-indicator"></span> <span
                                class="custom-control-description">Payment on delivery</span>
                            <br> <span>We accept PAYTM , UPI , even Cash at your doorsteps. </span> </label>
                    </li>

                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
                    </script>

                    <script>
                        $('input[name="mod1"]').click(function () {

                            if ($(this).attr('id') == 'watch-me') {
                                $('#show-me').show();
                                $('#chupa').show();

                            } else {
                                $('#show-me').hide();
                            }
                        });
                    </script>


                    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

                    <li id="chupa">

                        <label class="custom-control custom-radio  m-b-10">
                            <input type="button" name="btn" id="btn" value="Pay Now" onclick="pay_now()" /> <span
                                class="custom-control-indicator"></span> <span class="custom-control-description">Razorpay
                                <img src="images/badge-dark.png" alt=""></span> </label>
                    </li>
                    </ul>

                    <p class="text-xs-center" id='show-me' style='display:none'> <input type="submit"
                            onclick="return confirm('Are you sure?');" name="submit"
                            class="btn btn-outline-success btn-block" value="Order now"> </p>

                        

                    <script>
                        function pay_now(){
                            var name = <?php echo $_SESSION["user_id"]; ?>;
                            var amt = <?php echo $item_total; ?>;
                            var phone = <?php echo $_SESSION["user_phone"]; ?>;
                            var ordertype ="prepaid";

                            jQuery.ajax({
                                type: 'post',
                                url: 'payment_process.php',
                                data: "amt=" + amt + "&name=" + name + "&phone=" + phone + "&ordertype="+ordertype,
                                success: function (result) {
                                    var options = {
                                        "key": "rzp_live_HPkVQ0Wz9UD5aU",
                                        "amount": amt * 100,
                                        "currency": "INR",
                                        "name": "Rowdy Meals",
                                        "description": "Online Order Payment",
                                        "image": "https://rowdymeals.com/images/logo.png",
                                        "handler": function (response) {
                                            jQuery.ajax({
                                                type: 'post',
                                                url: 'payment_process.php',
                                                data: "payment_id=" + response
                                                    .razorpay_payment_id,
                                                success: function (result) {
                                                    window.location.href =
                                                        "checkout.php";
                                                }
                                            });
                                        }
                                    };
                                    var rzp1 = new Razorpay(options);
                                    rzp1.open();
                                }
                            });


                        }
                        </script>

<form action="#" method="post" >


<div class="form-group col-sm-12">

    <label for="exampleTextarea1">Select Area</label>
    <input list="area" class="form-control" id="exampleTextarea1"
        name="area" placeholder="Select Area" required>
    <datalist id="area" class="form-group col-sm-6">
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
    <input type="hidden" id="ordertype" name="ordertype" value="cod">
</div>
<div class="form-group col-sm-12">
    <label for="exampleTextarea">Delivery Address and Additional Delivery Instructions (You can write like to make the food spicy, or ask the rider to deliver it to your Security Gate)</label>
    <textarea class="form-control" id="exampleTextarea" name="address"
        rows="3" placeholder="Enter Delivery Address and Additional Delivery Instructions (You can write like to make the food spicy, or ask the rider to deliver it to your Security Gate)" required></textarea>
</div>


</form>


                    <?php } ?>












                </div>
                
                                    <?php }  else  {
    echo "Out of Service Timing";
} 
  ?>          </div>

    </div>
</div>
</form>
</div>
<?php
            
              
            
            
            include('inc/footer.php')?>
<?php
}
?>