<?php include("inc/head.php"); ?>

<script>
    window.setTimeout(function () {
  window.location.reload();
}, 12000);
    
    
</script>
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Dashboard</h3> </div>
               
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        
                       
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">All user Orders</h4>
                             
                                <div class="table-responsive m-t-40">
                                    <table id="myTable1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                            <th>Order Id</th>	
                                                <th>Username</th>		
                                                <th>Title</th>
                                                <th>Quantity</th>
                                                <th>price</th>
												<th>Address</th>
                                                <th>Area</th>		
												<th>status</th>												
												 <th>Reg-Date</th>
												  <th>Action</th>
												 
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
											
											<?php
												$sql="SELECT * FROM users INNER JOIN users_orders ON users.u_id=users_orders.u_id order by o_id desc";
											//	$sql="SELECT * FROM users_orders uo INNER JOIN users u  on uo.u_id=u.u_id";order by d_id desc
												$query=mysqli_query($db,$sql);
												
													if(!mysqli_num_rows($query) > 0 )
														{
															echo '<td colspan="8"><center>No Orders-Data!</center></td>';
														}
													else
														{				
																	while($rows=mysqli_fetch_array($query))
																		{
																																					
																				?>
																				<?php
																					echo ' <tr>
                                                                                    <td>'.$rows['o_id'].'</td>
																					           <td>'.$rows['username'].'</td>
																								<td>'.$rows['title'].'</td>
																								<td>'.$rows['quantity'].'</td>
																								<td>₹'.$rows['price'].'</td>
																								<td>'.$rows['address'].'</td>
                                                                                                <td>'.$rows['area'].'</td>';
																								?>
																								<?php 
																			$status=$rows['status'];
																			if($status=="" or $status=="pending")
																			{
																			?>
																			<td> <button type="button" class="btn btn-info" style="font-weight:bold;"><span class="fa fa-bars"  aria-hidden="true" >Dispatch</button></td>
																		   <?php 
																			  }
																			   if($status=="in process")
																			 { ?>
																			<td> <button type="button" class="btn btn-warning"><span class="fa fa-cog fa-spin"  aria-hidden="true" ></span>On a Way!</button></td> 
																			<?php
																				}
																			if($status=="closed")
																				{
																			?>
																			<td> <button type="button" class="btn btn-success" ><span  class="fa fa-check-circle" aria-hidden="true">Delivered</button></td> 
																			<?php 
																			} 
																			?>
																			<?php
																			if($status=="rejected")
																				{
																			?>
																			<td> <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i>cancelled</button></td> 
																			<?php 
																			} 
																			?>
                                                                            <?php
																			if($status=="CANUSER")
																				{
																			?>
																			<td> <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i>cancelled by User</button></td> 
																			<?php 
																			} 
																			?>
																						<?php																									
																							echo '	<td>'.$rows['date'].'</td>';
																							?>
																									 <td>
																									 <a href="delete_orders.php?order_del=<?php echo $rows['o_id'];?>" onclick="return confirm('Are you sure?');" class="btn btn-danger btn-flat btn-addon btn-xs m-b-10"><i class="fa fa-trash-o" style="font-size:16px"></i></a> 
																								<?php
																								echo '<a href="view_order.php?user_upd='.$rows['o_id'].'" " class="btn btn-info btn-flat btn-addon btn-sm m-b-10 m-l-5"><i class="ti-settings"></i></a>
																									</td>
																									</tr>';
																					 
																						
																						
																		}	
														}
												
											
											?>
                                             
                                            
                                           
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
            <script>
                
    $(document).ready(function() {
     
    $('#myTable1').DataTable( {
        "order": [[ 1, "desc" ]]
    } );
     $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;
                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                            last = group;
                        }
                    });
                }
            });
} );
                
                
            </script>
			<?php include("inc/footer.php"); ?>
			
			
			
           