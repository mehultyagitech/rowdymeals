<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
error_reporting(0);
session_start();

if(empty($_SESSION['user_id']))  //if usser is not login redirected baack to login page
{
	header('location:login.php');
}
else
{
?>

<style type="text/css" rel="stylesheet">
    .indent-small {
        margin-left: 5px;
    }

    .form-group.internal {
        margin-bottom: 0;
    }

    .dialog-panel {
        margin: 10px;
    }

    .datepicker-dropdown {
        z-index: 200 !important;
    }

    .panel-body {
        background: #e5e5e5;
        /* Old browsers */
        background: -moz-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
        /* FF3.6+ */
        background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%, #e5e5e5), color-stop(100%, #ffffff));
        /* Chrome,Safari4+ */
        background: -webkit-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
        /* Chrome10+,Safari5.1+ */
        background: -o-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
        /* Opera 12+ */
        background: -ms-radial-gradient(center, ellipse cover, #e5e5e5 0%, #ffffff 100%);
        /* IE10+ */
        background: radial-gradient(ellipse at center, #e5e5e5 0%, #ffffff 100%);
        /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#e5e5e5', endColorstr='#ffffff', GradientType=1);
        /* IE6-9 fallback on horizontal gradient */
        font: 600 15px "Open Sans", Arial, sans-serif;
    }

    label.control-label {
        font-weight: 600;
        color: #777;
    }


    table {
        width: 900px;
        border-collapse: collapse;
        margin: auto;

    }

    /* Zebra striping */
    tr:nth-of-type(odd) {
        background: #eee;
    }

    th {
        background: #F05C4D;
        color: white;
        font-weight: bold;

    }

    td,
    th {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
        font-size: 14px;

    }

    /* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
    @media only screen and (max-width: 760px),
    (min-device-width: 768px) and (max-device-width: 1024px) {

        table {
            width: 100%;
        }

        /* Force table to not be like tables anymore */
        table,
        thead,
        tbody,
        th,
        td,
        tr {
            display: block;
        }

        /* Hide table headers (but not display: none;, for accessibility) */
        thead tr {
            position: absolute;
            top: -9999px;
            left: -9999px;
        }

        tr {
            border: 1px solid #ccc;
            margin-top:10px;
        }

        td {
            /* Behave  like a "row" */
            border: none;
            border-bottom: 1px solid #eee;
            position: relative;
            padding-left: 50%;
        }
        
        td button{
            font-size: 0.6rem !important;
        }

        td:before {
            /* Now like a table header */
            position: absolute;
            /* Top/left values mimic padding */
            top: 6px;
            left: 6px;
            width: 45%;
            padding-right: 10px;
            white-space: nowrap;
            /* Label the data */
            content: attr(data-column);

            color: #000;
            font-weight: bold;
        }

    }
</style>

<?php include('inc/header.php')?>

<script>
    window.setTimeout(function () {
        window.location.reload();
    }, 800000);
</script>



<div class="page-wrapper">
    <!-- top Links -->

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
                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3">
                    <div class="widget clearfix">
                        <!-- /widget heading -->
                        <div class="widget-heading">
                            <h3 class="widget-title text-dark">
                                Help?
                            </h3>
                            <div class="clearfix"></div>
                        </div>
                        <div class="widget-body">
                            <h4 class="m-t-20">Contact Customer Support</h4>
                            <p> If you"re looking for more help or have a question to ask, please </p>
                            <p> <a href="contact.php" class="btn theme-btn m-t-15">contact us</a> </p>
                        </div>
                    </div>
                    <!-- end:Widget -->
                </div>

                <div class="col-xs-12 col-sm-7 col-md-7 ">


                    <p>Ongoing</p>

                    <table>
                        <thead>
                            <tr>
                                <th>S.NO</th>
                                <th>Item</th>


                                <th>status</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Remarks</th>
                                <th>Date</th>
                                <th>Action</th>

                            </tr>
                        </thead>
                        <tbody>


                            <?php 
						// displaying current session user login orders 
						$query_res= mysqli_query($db,"select * from users_orders where u_id='".$_SESSION['user_id']."' AND status IN('pending', 'in process')order by o_id desc");
						
				
						
						
																
						if(!mysqli_num_rows($query_res) > 0 )
														{
															echo '<td colspan="7"><center>You have No orders Placed yet. </center></td>';
														}
													else
														{			      
										   $i=1;
										  while($row=mysqli_fetch_array($query_res))
										  {
										      
										      		$date = date($row['date'],strtotime('+330 minutes', 0));
																				
																				$createdAt = $row['date'];
                                                                                $dateFrom = new DateTime($createdAt, new DateTimeZone('America/Chicago'));
                                                                                $dateFrom->setTimezone(new DateTimeZone('Asia/Kolkata'));
                                                                                $IST = $dateFrom->format('Y-m-d H:i:s');
                                                                                
                                                                                $currentDate =  $IST;

                                                                                //To Get Current DateTime - 15Min
                                                                                $oldDate = date("Y-m-d H:i:s", strtotime($currentDate) - (60 * 60));
						
						
										
							?>
                            <tr>

                                <td data-column="S.No"><?php echo $i++; ?></td>
                                <td data-column="Item"> <?php echo $row['title']; ?></td>


                                <td data-column="status">
                                    <?php 
																			$status=$row['status'];
																			if($status=="pending" or $status=="NULL")
																			{
																			?>
                                    <button type="button" class="btn btn-info" style="font-weight:bold;"><span
                                            class="fa fa-cog fa-spin" aria-hidden="true"></span> Waiting for
                                        Approval</button>
                                    <?php 
																			  }
																			   if($status=="in process")
																			 { ?>
                                    <button type="button" class="btn btn-warning"><span class="fa fa-cog fa-spin"
                                            aria-hidden="true"></span> On a Way!</button>
                                    <?php
																				}
																			if($status=="closed")
																				{
																			?>
                                    <button type="button" class="btn btn-success"><span class="fa fa-check-circle"
                                            aria-hidden="true"> Delivered</button>
                                    <?php 
																			} 
																			?>
                                    <?php
																			if($status=="rejected")
																				{
																			?>
                                    <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i>
                                        Cancelled</button>
                                    <?php 
																			} 
																			?>
                                    <?php
																			if($status=="CANUSER")
																				{
																			?>
                                    <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i> Cancelled
                                        by You</button>
                                    <?php 
																			} 
																			?>






                                </td>
                                <td data-column="Quantity"> <?php echo $row['quantity']; ?></td>
                                <td data-column="Price"> <?php echo $row['price']; ?></td>
                                <td data-column="Remarks"> <?php echo $row['remarks']; ?></td>
                                <td data-column="Date"> <?php echo $oldDate; ?></td>
                                <td data-column="Action"> <a
                                        href="cancel_orders.php?order_del=<?php echo $row['o_id'];?>"
                                        onclick="return confirm('Are you sure you want to cancel your order?');"
                                        class="btn btn-danger btn-flat btn-addon btn-xs m-b-10"><i class="fa fa-trash-o"
                                            style="font-size:16px"></i></a>
                                </td>

                            </tr>


                            <?php }} ?>




                        </tbody>
                    </table>
                </div>
                <div class="col-xs-12 col-sm-5 col-md-5 col-lg-3">
                </div>


                <div class="col-xs-12 col-sm-7 col-md-7 ">


                    <p>Previous Orders</p>

                    <table>
                        <thead>
                            <tr>
                                <th>S.NO</th>
                                <th>Item</th>


                                <th>status</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Remarks</th>
                                <th>Date</th>


                            </tr>
                        </thead>
                        <tbody>


                            <?php 
						// displaying current session user login orders 
						$query_res= mysqli_query($db,"select * from users_orders where u_id='".$_SESSION['user_id']."' and status IN('rejected','closed', 'CANUSER') order by o_id desc");
						;
						
							
					
						
						
												if(!mysqli_num_rows($query_res) > 0 )
														{
															echo '<td colspan="7"><center>You have No orders Placed yet. </center></td>';
														}
													else
														{			      
										   $i=1;
										  while($row=mysqli_fetch_array($query_res))
										  {
											 
											  
											  
											  	$date = date($row['date'],strtotime('+330 minutes', 0));
																				
																				$createdAt = $row['date'];
                                                                                $dateFrom = new DateTime($createdAt, new DateTimeZone('America/Chicago'));
                                                                                $dateFrom->setTimezone(new DateTimeZone('Asia/Kolkata'));
                                                                                $IST = $dateFrom->format('Y-m-d H:i:s');
                                                                                
                                                                                $currentDate =  $IST;

                                                                                //To Get Current DateTime - 15Min
                                                                                $oldDate = date("Y-m-d H:i:s", strtotime($currentDate) - (60 * 60));
						
						
							?>
                            <tr>

                                <td data-column="S.NO"><?php echo $i++; ?></td>
                                <td data-column="Item"> <?php echo $row['title']; ?></td>


                                <td data-column="Status">
                                    <?php 

																			$status=$row['status'];
																			if($status=="" or $status=="NULL")
																			{
																			?>
                                    <button type="button" class="btn btn-info" style="font-weight:bold;"><span
                                            class="fa fa-cog fa-spin" aria-hidden="true"></span> Waiting for
                                        Approval</button>
                                    <?php 
																			  }
																			   if($status=="in process")
																			 { ?>
                                    <button type="button" class="btn btn-warning"><span class="fa fa-cog fa-spin"
                                            aria-hidden="true"></span> On a Way!</button>
                                    <?php
																				}
																			if($status=="closed")
																				{
																			?>
                                    <button type="button" class="btn btn-success"><span class="fa fa-check-circle"
                                            aria-hidden="true"> Delivered</button>
                                    <?php 
																			} 
																			?>
                                    <?php
																			if($status=="rejected")
																				{
																			?>
                                    <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i>
                                        Cancelled</button>
                                    <?php 
																			} 
																			?>
                                    <?php
																			if($status=="CANUSER")
																				{
																			?>
                                    <button type="button" class="btn btn-danger"> <i class="fa fa-close"></i>
                                        Cancelled
                                        by You</button>
                                    <?php 
																			} 
																			?>






                                </td>
                                <td data-column="Quantity"> <?php echo $row['quantity']; ?></td>
                                <td data-column="Price"> <?php echo $row['price']; ?></td>
                                <td data-column="Remarks"> <?php echo $row['remarks']; ?></td>

                                <td data-column="Date"> <?php echo $oldDate; ?></td>


                            </tr>


                            <?php }} ?>




                        </tbody>
                    </table>



                </div>


                <!--end:row -->
            </div>



        </div>



</div>
</div>
</div>
</section>
<?php include('inc/footer.php')?>
<?php
}
?>