<?php 
include("inc/header.php"); ?>

<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">-->


<link rel="stylesheet" href="css/login.css">

<style type="text/css">
    #buttn {
        color: #fff;
        background-color: #F05C4D;
    }
</style>


<?php 



if(isset($_POST['submit']))   // if button is submit
{
	$username = $_POST['username'];  //fetch records from login form
	$password = $_POST['password'];

	$_SESSION['username'] = $username;
	
	if(!empty($_POST["submit"]))   // if records were not empty
     {
	
	$loginquery ="SELECT * FROM users WHERE ( username='$username' OR email = '$username') && password='".md5($password)."' and is_verified='1'"; //selecting matching records
	$result=mysqli_query($db, $loginquery); //executing
	$row=mysqli_fetch_array($result);
	
	                        if(is_array($row))  // if matching records in the array & if everything is right
								{
                                    	$_SESSION["user_id"] = $row['u_id']; // put user id into temp session
                                    		$_SESSION["user_fname"] = $row['f_name'];
                                    			$_SESSION["user_phone"] = $row['phone'];
                                    				$_SESSION["user_email"] = $row['email'];
                                    			
								       
								        echo "<script>window.location.href='restaurants.php'</script>";
										 //header("refresh:1;url=https://rowdymeals.com/beta2/index.php");
									
	                            } 
								
							else
							    {
                                      	$message = "Invalid Username or Password or Please verify the account!"; // throw error
                                }
	 }
	
	
}
?>

<div class="page-wrapper">
    <div class="pen-title">
        <img class="img-rounded" src="images/logo.png" alt="">
    </div>
    <!-- Form Module-->
    <div class="module form-module">
        <div class="toggle">

        </div>
        <div class="form">
            <h2>Login to your account</h2>

            <form action="" method="post">
                <input type="text" placeholder="Username" name="username" />
                <input type="password" placeholder="Password" name="password" id="password" />
                <p><i class="fa fa-eye" id="togglePassword" style="margin-bottom: 10px;"> Show Password</i></p>

                <input type="submit" id="buttn" name="submit" value="login" />
                  
                
            </form>
            <span style="color:red;margin-bottom:5px;display:block;"><?php echo $message; ?></span>
            <span style="color:green; margin-bottom:5px;display:block;"><?php echo $success; ?></span>
        </div>
        <div class="cta">Forgot Your Password ?<a href="forgot-password.php" style="color:#F05C4D"> Click Here ! </a></div>
        <div class="cta">Not registered?<a href="registration.php" style="color:#F05C4D"> Create an account</a></div>
    </div>
</div>

<script>
    const togglePassword = document.querySelector('#togglePassword');
    togglePassword.addEventListener('click', function (e) {
        // toggle the type attribute
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        // toggle the eye slash icon
        this.classList.toggle('fa-eye-slash');
    });
</script>
<?php 
include("inc/footer.php"); ?>