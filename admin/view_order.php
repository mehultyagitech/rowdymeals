<?php include("inc/head.php"); ?>
<script language="javascript" type="text/javascript">
	var popUpWin = 0;

	function popUpWindow(URLStr, left, top, width, height) {
		if (popUpWin) {
			if (!popUpWin.closed) popUpWin.close();
		}
		popUpWin = open(URLStr, 'popUpWin',
			'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width=' +
			800 + ',height=' + 800 + ',left=' + left + ', top=' + top + ',screenX=' + left + ',screenY=' + top + '');
	}
</script>

<!-- Page wrapper  -->
<div class="page-wrapper">
	<!-- Bread crumb -->
	<div class="row page-titles">
		<div class="col-md-5 align-self-center">
			<h3 class="text-primary">Dashboard</h3>
		</div>

	</div>
	<!-- End Bread crumb -->
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Start Page Content -->
		<div class="row">
			<div class="col-12">


				<div class="card">
					<div class="card-body">
						<h4 class="card-title">View user Orders</h4>

						<div class="table-responsive m-t-20">
							<table id="myTable" class="table table-bordered table-striped">

								<tbody>
									<?php
											$sql="SELECT users.*, users_orders.* FROM users INNER JOIN users_orders ON users.u_id=users_orders.u_id where o_id='".$_GET['user_upd']."'";
											
												$query=mysqli_query($db,$sql);
												$rows=mysqli_fetch_array($query);
												$sql1="SELECT * from restaurant  where rs_id='".$rows['rs_id']."'";
													$query1=mysqli_query($db,$sql1);
												$rowss=mysqli_fetch_array($query1);
						
												
												
																		
												?>

									<tr>
										<td><strong>username:</strong></td>
										<td>
											<center><?php echo $rows['u_id']; ?> <?php echo $rows['username']; ?></center>
										</td>
										<td>
											<center>
												<a href="javascript:void(0);"
													onClick="popUpWindow('order_update.php?form_id=<?php echo htmlentities($rows['o_id']);?>');"
													title="Update order">
													<button type="button" class="btn btn-primary">Take
														Action</button></a>
											</center>
										</td>


									</tr>
									<tr>
										<td><strong>Title:</strong></td>
										<td>
											<center><?php echo $rows['title']; ?></center>
										</td>
										<td>
											<center>
												<a href="javascript:void(0);"
													onClick="popUpWindow('userprofile.php?newform_id=<?php echo htmlentities($rows['o_id']);?>');"
													title="Update order">
													<button type="button" class="btn btn-primary">View User
														Detials</button></a>

											</center>
										</td>

									</tr>
									<tr>
										<td><strong>Quantity:</strong></td>
										<td>
											<center><?php echo $rows['quantity']; ?></center>
										</td>
										<td>
											<center>
												<form action="" method="post">
													<button type="submit" id="emailprogress" name="emailprogress"
														class="btn btn-primary">Email Inprogress</button></a>
												</form>
											</center>
										</td>

										<?php
													 
													 if(isset($_POST['emailprogress'])){
														 
														 //PHP Mailer
													  require '../phpmailer/mail.php'; 
																	  $mail->From = 'hello@rowdymeals.com';
																	 $mail->FromName = "Rowdy Meals"; // Name to indicate where the email came from when the recipient received
																	$mail->AddAddress($rows['email']);
																	 $mail->AddBCC("hello@rowdymeals.com");
																	 $mail->AddCC("adityanamansingh@gmail.com");
																	  $mail->AddCC("rowdymeals@gmail.com");
																	 $mail->WordWrap = 50; // set word wrap
																	 $mail->IsHTML(true); // send as HTML
																	 $mail->SMTPDebug = false;
																	 $mail->do_debug = 0;
																	 $mail->Subject = "ROWDY MEALS | Your Order Status is Updated"; //used for mail subject
																   $mail->Body = '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head><body style="background-color:#f6f6f6; box-sizing: border-box; font-family: " Poppins", sans-serif;"><div style="margin:0px auto;background: #f3f3f3;padding: 10px;"><div style="border: 1px solid #ccc;background-color:#fff;clear:both;color:#666;line-height:32px;max-width:500px;margin:50px auto;border-radius:5px 5px 5px 5px"><div style="color:#fff;text-align:center;padding:0px 0px 0px;background-repeat:no-repeat;background-position:center;background-size:183px;background-image: url(https://rowdymeals.com/images/logo.png);background-color:#fff;width:100%;height:125px;border-radius:5px 5px 0px 0px"></div><div style="margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0px;padding-left:0;font-size:15px"><img src="https://rowdymeals.com/images/img/message.png" style=" display: block; margin: 0 auto;width: 100px; padding-top: 15px;"><table cellpadding="0" cellspacing="0" style="width: 100%;margin: 8px 1px;font-size: 12px;font-size:12px"><tbody><tr><p style="text-align:left;padding: 10px;color: #000;font-size: 15px;text-align:center;margin-bottom:10px;">Congratulations '.$rows['f_name'].' ! Your Order is in Progress and will be delivered as soon as Possible  ! </p></tr><tr><p style="text-align:left;padding: 10px;color: #000;font-size: 15px;text-align:center;margin-bottom:10px;">Check Your Order Status <a href="https://rowdymeals.com/your_orders.php">Click Here</a></p></tr><tr><p style="text-align:left;padding: 10px;color: #000;font-size: 15px;text-align:center;margin-bottom:10px;">Any Issues or Want Some Customization ?</p></tr><tr><p style="text-align:left;padding: 10px;color: #000;font-size: 15px;text-align:center;margin-bottom:10px;"><a href="https://api.whatsapp.com/send?phone=917617477477&text=%22Hello!ROWDY%22&source=&data=">Click Here to Chat on Whatsaap !</a></p></tr></tbody></table><p style="padding: 10px 30px;font-weight: 600;text-align: center;font-size: 14px;margin-bottom: 0;background-repeat:no-repeat;background-position:center;background-color:#F05C4D;background: #F05C4D;color: #fff;text-transform: capitalize;">ROWDY MEALS | All right reserved</p><p style="display:hidden;opacity: 0;">This message was sent to : '.$rows['f_name'].' '.$rows['l_name'].' '. date("h:i:sa") .'</p></div></div></div></div></body></html>';
														  
																	 $mail->Send();
													 
													 
													 
													 
													 
													 }
																										  
																										  ?>

									</tr>
									<tr>
										<td><strong>RES ID :</strong></td>
										<td>
											<center><?php echo $rowss['rs_id']; ?></center>
										</td>
										

<td>
											<center>
												<form action="" method="post">
													<button type="submit" id="emaildel" name="emaildel"
														class="btn btn-primary">Email Sucessful Delivery</button></a>
												</form>
											</center>
										</td>
										<?php
													 
if(isset($_POST['emaildel'])){
    
	//PHP Mailer
 require '../phpmailer/mail.php'; 
 				$mail->From = 'hello@rowdymeals.com';
                $mail->FromName = "Rowdy Meals"; // Name to indicate where the email came from when the recipient received
               $mail->AddAddress($rows['email']);
                $mail->AddBCC("hello@rowdymeals.com");
                  $mail->AddCC("rowdymeals@gmail.com");
                $mail->AddCC("adityanamansingh@gmail.com");
                $mail->WordWrap = 50; // set word wrap
                $mail->IsHTML(true); // send as HTML
				$mail->SMTPDebug = false;
				$mail->do_debug = 0;
                $mail->Subject = "Rowdy Meals Order Delivered Sucessfully"; //used for mail subject
              $mail->Body = '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head><body style="background-color:#f6f6f6; box-sizing: border-box; font-family: " Poppins", sans-serif;"><div style="margin:0px auto;background: #f3f3f3;padding: 10px;"><div style="border: 1px solid #ccc;background-color:#fff;clear:both;color:#666;line-height:32px;max-width:500px;margin:50px auto;border-radius:5px 5px 5px 5px"><div style="color:#fff;text-align:center;padding:0px 0px 0px;background-repeat:no-repeat;background-position:center;background-size:183px;background-image: url(https://rowdymeals.com/images/logo.png);background-color:#fff;width:100%;height:125px;border-radius:5px 5px 0px 0px"></div><div style="margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0px;padding-left:0;font-size:15px"><img src="https://rowdymeals.com/images/img/message.png" style=" display: block; margin: 0 auto;width: 100px; padding-top: 15px;"><table cellpadding="0" cellspacing="0" style="width: 100%;margin: 8px 1px;font-size: 12px;font-size:12px"><tbody><tr><p style="text-align:left;padding: 10px;color: #000;font-size: 15px;text-align:center;margin-bottom:10px;">Congratulations '.$rows['f_name'].' ! Your Order Has been Sucessfully Delivered ! </p></tr><tr><p style="text-align:left;padding: 10px;color: #000;font-size: 15px;text-align:center;margin-bottom:10px;">Tell us how we did <a href="https://api.whatsapp.com/send?phone=917617477477&text=%22Hello!ROWDY%22&source=&data=">Click Here</a></p></tr></tbody></table><p style="padding: 10px 30px;font-weight: 600;text-align: center;font-size: 14px;margin-bottom: 0;background-repeat:no-repeat;background-position:center;background-color:#F05C4D;background: #F05C4D;color: #fff;text-transform: capitalize;">ROWDY MEALS | All right reserved</p><p style="display:hidden;opacity: 0;">This message was sent to : '.$rows['f_name'].' '.$rows['l_name'].' '. date("h:i:sa") .'</p></div></div></div></div></body></html>';
     
                $mail->Send();





}
													 
													 ?>																  
									</tr>
									<tr>
										<td><strong>RES NAME:</strong></td>
										<td>
											<center><?php echo $rowss['title']; ?></center>
										</td>


									</tr>
									<tr>
										<td><strong>Price:</strong></td>
										<td>
											<center>₹<?php echo $rows['price']; ?></center>
										</td>


									</tr>
									<tr>
										<td><strong>Address:</strong></td>
										<td>
											<center><?php echo $rows['address']; ?></center>
										</td>


									</tr>
									<tr>
										<td><strong>Date:</strong></td>
										<td>
											<center><?php echo $rows['date']; ?></center>
										</td>


									</tr>
									<tr>
										<td><strong>status:</strong></td>
										<?php 
																			$status=$rows['status'];
																			if($status=="" or $status=="pending")
																			{
																			?>
										<td>
											<center><button type="button" class="btn btn-info"
													style="font-weight:bold;"><span class="fa fa-bars"
														aria-hidden="true">Dispatch</button></center>
										</td>
										<?php 
																			  }
																			   if($status=="in process")
																			 { ?>
										<td>
											<center><button type="button" class="btn btn-warning"><span
														class="fa fa-cog fa-spin" aria-hidden="true"></span>On a
													Way!</button></center>
										</td>
										<?php
																				}
																			if($status=="closed")
																				{
																			?>
										<td>
											<center><button type="button" class="btn btn-success"><span
														class="fa fa-check-circle" aria-hidden="true">Delivered</button>
											</center>
										</td>
										<?php 
																			} 
																			?>
										<?php
																			if($status=="rejected")
																				{
																			?>
										<td>
											<center><button type="button" class="btn btn-danger"> <i
														class="fa fa-close"></i>cancelled</button> </center>
										</td>
										<?php 
																			} 
																			?>
										<?php
																			if($status=="CANUSER")
																				{
																			?>
										<td>
											<center><button type="button" class="btn btn-danger"> <i
														class="fa fa-close"></i>cancelled by USER</button> </center>
										</td>
										<?php 
																			} 
																			?>


									</tr>







								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>



</div>
<!-- End PAge Content -->
</div>
<!-- End Container fluid  -->



<?php include("inc/footer.php"); ?>