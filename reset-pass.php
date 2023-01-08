
<?php

include("connection/connect.php");

session_start();

     $email = $_GET['email'];
     $code = $_GET['code'];
     
      $que= "select email from users where email='$email'";
     
      $query = mysqli_query($db,$que);
     
      $row = mysqli_fetch_row($query);
      
if(count($row) > 0){

  $user_email=$row[0];
      
  
    
if ((count($_POST) > 0)) {
    
    $pass = $_POST['newPassword'];
    
    $cpass =  $_POST['confirmPassword'];
    
   
    if($pass == $cpass){
        
        mysqli_query($db, "UPDATE users set password='" .(md5($pass)). "' WHERE email='".$_GET['email']."' and randomcode = '".$_GET['code']."'");
        
    $message = "Password Reset Sucessful. Redirecting to Login Page in <span id='counter'>5</span> second(s).</p>
														<script type='text/javascript'>
														function countdown() {
															var i = document.getElementById('counter');
															if (parseInt(i.innerHTML)<=0) {
																location.href = 'login.php';
															}
															i.innerHTML = parseInt(i.innerHTML)-1;
														}
														setInterval(function(){ countdown(); },1000);
														</script>"; 
      
    } else{
        $message = "Passwords do not match";
        echo $message; 
}

}
}else{
    echo "<script>window.location.href='login.php'</script>";
}
?>



<?php 
include("inc/header.php"); ?>

<div class="page-wrapper">
    <section class="contact-page inner-page">
        <div class="container">
            <div class="row">
                <!-- REGISTER -->
                <div class="col-md-12">
                    <div class="widget">
                        <div class="widget-body">


                            <form name="frmChange" method="post" action="">

                                <div class="message"><?php if(isset($message)) { echo $message; } ?></div>
                                <div class="message"><?php 
                                
                                echo "Hello ! $row[0] Please Enter Your New Password";
                                ?></div>

                                <h2>Change Password</h2>
                                <div class="row">
                                    
                                    <div class="form-group col-sm-12">

                                        <label for="newPassword">New Password</label>

                                        <input type="password" name="newPassword" id="newPassword" class="form-control" /> <i class="fa fa-eye" id="togglePassword1"> Show Password</i>
                                    </div>
                                    <div class="form-group col-sm-12">

                                        <label for="confirmPassword">Confirm Password</label>
                                        <input type="password" name="confirmPassword" id="confirmPassword" class="form-control" /> <i class="fa fa-eye" id="togglePassword2"> Show Password</i>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <p> <input type="submit" name="submit" value="Submit"
                                                        class="btn theme-btn"> </p>
                                            </div>

                                        </div>
                                    </div>
                                </div>



                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

     const togglePassword1 = document.querySelector('#togglePassword1');
      const togglePassword2 = document.querySelector('#togglePassword2');

const password1 = document.querySelector('#newPassword');
const password2 = document.querySelector('#confirmPassword');

togglePassword1.addEventListener('click', function (e) {
    // toggle the type attribute
    const type = password1.getAttribute('type') === 'password' ? 'text' : 'password';
    password1.setAttribute('type', type);
    // toggle the eye slash icon
    this.classList.toggle('fa-eye-slash');
});
togglePassword2.addEventListener('click', function (e) {
    // toggle the type attribute
    const type = password2.getAttribute('type') === 'password' ? 'text' : 'password';
    password2.setAttribute('type', type);
    // toggle the eye slash icon
    this.classList.toggle('fa-eye-slash');
});

    
    
    
</script>


<?php include("inc/footer.php"); ?>

