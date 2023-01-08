<?php include("inc/head.php"); ?>
        <!-- Page wrapper  -->
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
                                <h4 class="card-title">All Menu data</h4>
                                <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
								
                                <div class="table-responsive m-t-40">
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                            <th>SNO </th>
                                            
                                               <th>Time</th>
											 <th>First Name </th>
                                                <th>Last Name</th>
                                                <th>Subject</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                               <th>Message</th>
                                               <th>Action</th>
												  
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
											<th>SNO </th>
										
											 <th>Time</th>
											 <th>First Name </th>
                                                <th>Last Name</th>
                                                <th>Subject</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                               <th>Message</th>
                                               <th>Action</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
										
                                           
                                               	<?php
												$sql="SELECT * FROM contact_form order by id desc";
												$query=mysqli_query($db,$sql);
												
													if(!mysqli_num_rows($query) > 0 )
														{
															echo '<td colspan="11"><center>No Dish-Data!</center></td>';
														}
													else
														{				
                                                            $i=0;
																	while($rows=mysqli_fetch_array($query))
																		{
                                                                            $i++;
																				$mql="select * from contact_form where id='".$rows['id']."'";
																				$newquery=mysqli_query($db,$mql);
																				$fetch=mysqli_fetch_array($newquery);
																				
																				$date = date($rows['time'],strtotime('+330 minutes', 0));
																				
																				$createdAt = $rows['time'];
                                                                                $dateFrom = new DateTime($createdAt, new DateTimeZone('America/Chicago'));
                                                                                $dateFrom->setTimezone(new DateTimeZone('Asia/Kolkata'));
                                                                                $IST = $dateFrom->format('Y-m-d H:i:s');
                                                                                
                                                                                $currentDate =  $IST;

                                                                                //To Get Current DateTime - 15Min
                                                                                $oldDate = date("Y-m-d H:i:s", strtotime($currentDate) - (60 * 60));
                                                                                
                                                                               
																					echo '<tr><td>'.$i.'</td>
																					
																					 <td>'.$oldDate.' </td>
                                                                                    <td>'.$rows['first_name'].'</td>
																								<td>'.$rows['last_name'].'</td>
																								<td>'.$rows['subject'].'</td>
																								<td>'.$rows['email'].'</td>
                                                                                                <td>'.$rows['phone'].'</td>
                                                                                                <td>'.$rows['message'].'</td>
																								
																								
																								
																							
																									 <td><a href="delete_enq.php?menu_del='.$rows['id'].'" class="btn btn-danger btn-flat btn-addon btn-xs m-b-10"><i class="fa fa-trash-o" style="font-size:16px"></i></a> 
																										</td></tr>';
																					 
																						
																						
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
            <!-- footer -->
            <?php include("inc/footer.php"); ?>