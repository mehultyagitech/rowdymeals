
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

                                <h2>Request Password Reset Link</h2>
                                <div class="row">
                                   
                                    <div class="form-group col-sm-12">

                                        <label for="newPassword">Enter your Email </label>

                                        <input type="email" name="email" id="email" class="form-control" /> 
                                    </div>
                                     <div class="form-group col-sm-12">
                                    
                                        
                                          
                                             <input type="submit" name="submit" value="Submit"
                                                        class="btn theme-btn">
                                            
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


<?php 
  //PHP Mailer
  require 'phpmailer/mail.php';

    if(isset($_POST['submit'])){
      $email = $_POST['email'];
      
   
      $que= "select email,randomcode from users where email='$email'";
     
      $query = mysqli_query($db,$que);
     
      $row = mysqli_fetch_row($query);
    
      $user_email=$row[0];
      $code = $row[1];
    
        
      if((!strcmp($email, $user_email))){
          
          
            $mail->From = 'hello@rowdymeals.com';
                $mail->FromName = "Rowdy Meals"; // Name to indicate where the email came from when the recipient received
                $mail->AddAddress($user_email);
                $mail->AddCC("adityanamansingh@gmail.com");
                $mail->WordWrap = 50; // set word wrap
                $mail->IsHTML(true); // send as HTML
                $mail->SMTPDebug = false;
                $mail->do_debug = 0;
                $mail->Subject = "Rowdy Meals Password Reset"; //used for mail subject
              $mail->Body = '<p>Please reset your password on this link: <a href="https://rowdymeals.com/reset-pass.php?email='.$user_email.'&&code='.$code.'">Reset Your password</a></p>';
     
          
          
          
          
    
        
       if ($mail->Send()) {
                echo "<p class=".message.">Mail Sent. Thank you " . $user_email . " .Please Check your Email for Password Reset Link. </p>";
            
            }else{
               echo "Failed to send email. Please try again later";
                }
      }
      else{
      $data['error']="Invalid Email ID !";
      }

}

?>


<?php include("inc/footer.php"); ?>

