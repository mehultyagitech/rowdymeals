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
						<h4 class="card-title">Transfer  Order</h4>
							<h4 class="card-title">?user_upd=3</h4>

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
									    <td><strong>user id:</strong></td>
										<td>
											<center><?php echo $rows['u_id']; ?> </center>
										</td>
										<td><strong>username:</strong></td>
										<td>
											<center> <?php echo $rows['username']; ?></center>
										</td>
										


									</tr>
									<tr>
									    
									    <form action="" method="post">
									     <td><strong>user id:</strong></td>
									    <td>
											<center>
											        
												<input type="text" name="uidup" id="uidup"> 
											</center>
										</td>
									    <td>
											<center>
											        
													<button type="submit" name="submit" class="btn btn-primary">Transfer Order</button>
											</center>
										</td>
										</form>
										
										<?php 
									   
									    
										$user_id = $_POST['uidup'];
										
										$transfer_sql = "UPDATE users_orders set u_id='".$user_id."' where o_id='".$_GET['user_upd']."'";
										
										$query=mysqli_query($db,$transfer_sql);
										
										?>
										
										
										
									</tr>
									
									<tr>
									    <td>
									         <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label">USERS</label>
													<select name="res_name" class="form-control custom-select" data-placeholder="USERS" tabindex="1">
                                                        <option>--User Directory--</option>
                                                 <?php $ssql ="select * from  users where is_verified='1'";
													$res=mysqli_query($db, $ssql); 
													while($row=mysqli_fetch_array($res))  
													{
                                                       echo' <option>'.$row['u_id'].' - '.$row['username'].' - '.$row['phone'].'</option>';;
													}  
                                                 
													?> 
													 </select>
                                                </div>
                                            </div>
									    </td>
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