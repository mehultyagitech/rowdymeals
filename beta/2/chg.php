
<?php

include("connection/connect.php");

session_start();
if(empty($_SESSION["user_id"]))
{
	header('location:login.php');
echo $_SESSION["user_id"];
}
else{
    
if (count($_POST) > 0) {

 
   
	$password = $_POST ["currPassword"];
    
  

    $result = mysqli_query($db, "SELECT *from users WHERE u_id='".$_SESSION["user_id"] ."'");
    $row = mysqli_fetch_array($result);
   
    if (md5($password) == $row["password"]) {
        mysqli_query($db, "UPDATE users set password='" . md5($_POST["newPassword"]) . "' WHERE u_id='" . $_SESSION["user_id"] . "'");
        $message = "Password Changed"; 
      session_destroy();
      redirect('login.php');
    } else
        $message = "Current Password is not correct";
        echo $message; exit;
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

                                <h2>Change Password</h2>
                                <div class="row">
                                    <div class="form-group col-sm-12">

                                        <label for="currPassword">Current Password</label>
                                        <input type="password" name="currPassword" id="currPassword" class="form-control" /> <i class="fa fa-eye" id="togglePassword"> Show Password</i>
                                    </div>
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
    const togglePassword = document.querySelector('#togglePassword');
     const togglePassword1 = document.querySelector('#togglePassword1');
      const togglePassword2 = document.querySelector('#togglePassword2');
const password = document.querySelector('#currPassword');
const password1 = document.querySelector('#newPassword');
const password2 = document.querySelector('#confirmPassword');

togglePassword.addEventListener('click', function (e) {
    // toggle the type attribute
    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
    password.setAttribute('type', type);
    // toggle the eye slash icon
    this.classList.toggle('fa-eye-slash');
});
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

<?php
}
?>