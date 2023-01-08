<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");  //include connection file
error_reporting(0);  // using to hide undefine undex errors
session_start(); //start temp session until logout/browser closed

?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <?php 
    function setTitle($requestUri)
         {
            $explodeRequestUri = explode("/", $requestUri);
            $currentFileName = end($explodeRequestUri);
            $withoutExt = preg_replace('/\\.[^.\\s]{3,4}$/', '', $currentFileName);
            $explodeCurrentFileName = explode("-", $withoutExt);
            foreach ($explodeCurrentFileName as $curFileValue) 
            {
               $fileArrayName[] = ucfirst($curFileValue);
            }
            echo implode(" ", $fileArrayName);

         }
    
    ?>
    <title> <?php setTitle($_SERVER['REQUEST_URI']); ?> | Rowdy Meals</title>
    <!-- Bootstrap core CSS -->
    <link rel="apple-touch-icon" sizes="180x180" href="https://rowdymeals.com/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="https://rowdymeals.com/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="https://rowdymeals.com/favicon-16x16.png">
<link rel="manifest" href="https://rowdymeals.com/site.webmanifest">
    
    
    
    
    
  
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
      <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
   
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
 
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css" integrity="sha512-DIW4FkYTOxjCqRt7oS9BFO+nVOwDL4bzukDyDtMO7crjUZhwpyrWBFroq+IqRe6VnJkTpRAS6nhDvf0w+wHmxg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    

    
    
    
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/606b3a70f7ce182709374243/1f2hdp494';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
    
   <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-L4J2VSLC18"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-L4J2VSLC18');
</script> 
    
    
    </head>
    
    

<body class="home">
    
        <!--header starts-->
       
        <header id="header" class="header-scroll top-header headrow">
            <!-- .navbar -->
            
                
            
            <nav class="navbar navbar-light">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logo.png" alt="" width="70%"> </a>
                     <li class="nav-item cartmobo " >
                    <a href="cart.php" class="nav-link active" id="cart">
                        <?php
                  
                        $cart_count=count($_SESSION['cart_item']);
                        ?>
                        Cart <i class="fa fa-shopping-cart"></i> <?php echo $cart_count; ?>
                    </a>
                </li> 
                    <div class="collapse navbar-toggleable-md float-lg-left" id="mainNavbarCollapse" style="padding-top: 1rem;">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
                             <li class="nav-item"> <a class="nav-link active" href="about.php">About US <span class="sr-only"></span></a> </li>
                              <li class="nav-item"> <a class="nav-link active" href="contact.php">Contact US <span class="sr-only"></span></a> </li>
     <!--                        <li class="nav-item dropdown">-->
					<!--			  <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Company</a>-->
        
     <!--    <div class="dropdown-menu" aria-labelledby="navbarDropdown">-->
					<!--		<a class="dropdown-item" href="about.php">About US</a> -->
					<!--		<div class="dropdown-divider"></div>-->
					<!--<a class="dropdown-item" href="contact.php">Contact US</a> </div>-->
					<!--</li>-->
					 <li class="nav-item mobo_none">
                    <a href="cart.php" class="nav-link active" id="cart">
                        <?php
                  
                        $cart_count=count($_SESSION['cart_item']);
                        ?>
                        Cart <i class="fa fa-shopping-cart"></i> <?php echo $cart_count; ?>
                    </a>
                </li> 
                            
                           
							<?php
                         
						if(empty($_SESSION["user_id"])) // if user is not login
							{
								echo '
								  <li class="nav-item dropdown">
								  <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <i class="fa fa-user" aria-hidden="true"></i> Login
        </a>
        
         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="login.php" >Login</a> 
							<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="registration.php" >Signup</a> </div>';
							}
						else
							{
									//if user is login 
                                    echo '
                                    
                                    <li class="nav-item dropdown">
        <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <i class="fa fa-user" aria-hidden="true"></i> '.$_SESSION['username'].' 
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="your_orders.php" > <i class="fa fa-cutlery" aria-hidden="true"></i> Your orders</a>
          <a class="dropdown-item" href="chg.php" ><i class="fa fa-key" aria-hidden="true"></i> Change Password</a> 
          <a class="dropdown-item" href="logout.php" >Logout</a> 
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      &nbsp;
       
      
 ';
							}?>
							<?php 
$Hour = date('G');
if ( $Hour >= 9 && $Hour <= 22) {
      echo " ";
  ?> 

  <li class="nav-item btn btn-success"> Online <br> Delivering Happiness </li>
<?php } else{
      echo " ";
    ?>
    <li class="nav-item btn btn-danger">We Are Offline <br> Services will Start at 9 AM  </li>
<?php 
}

?>

                         </ul>
						 
                    </div>
                </div>
            </nav>
            <!-- /.navbar -->
        </header>
       