<?php include('inc/header.php')?>
<div class="page-wrapper">

    <section class="breadcumb bg_contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcumb_title">
                    <h2>Contact Us</h2>
                    <h4>Every beautiful relationship starts with a simple hello. <br>So let’s Talk. It might just be the start of something Delicious.</h4>
                </div>
            </div>
        </div>
    </div>
</section>
</section>
<section class="kdschool__sec_map">
    <div class="map__inner">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3458.6391008637625!2d77.9777593151118!3d29.90349798193387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjnCsDU0JzEyLjYiTiA3N8KwNTgnNDcuOCJF!5e0!3m2!1sen!2sin!4v1617283800561!5m2!1sen!2sin"
            width="100%" height="450" style="border:0;" allowfullscreen="" id="map__adjust"></iframe>
    </div>

    <div class="kd_contact_wrap">
        <div class="container">
            <div class="kd__contact_layout">
                <div class="row">
                    <div class="col-md-7">
                        <div class="kd_contact_cover">
                            <div class="kd_contact_cover_heading">
                                <h2>Query?</h2>
                                <p>We’d love to hear from you. Give us your problem and we'll get it sorted  within 24 hrs !</p>
                            </div>
                            <div class="kd_contact_form_wrap">
                                <form method="POST" action="#" onsubmit=" return validateForm()">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form_group">
                                                <input type="text" class="form_control_wrap" name="first_name" placeholder="First Name"
                                                    id="full_name" required=""><i class='fa fa-user-graduate'></i>
                                            </div>
                                        </div>
                                       
                                        <div class="col-md-6">
                                            <div class="form_group">
                                                <input type="text" class="form_control_wrap" name="last_name" placeholder="Last Name"
                                                    id="last_name" required=""><i class='fa fa-user-graduate'></i>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form_group">
                                                <input type="email" class="form_control_wrap" name="email" placeholder="Email"
                                                    id="email" required=""><i class="fa fa-envelope"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form_group">
                                                <input type="tel" name="phone" class="form_control_wrap_2"
                                                    placeholder="Phone" id="phone" required=""><i class="fa fa-mobile"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                    <div class="form_group">
                                        <label>What question can we answer for you today? <span class="manditory">*</span></label>
                                        <select name="question" id="Question" class="form_control_wrap">
                                            <option value="">Select Question</option>
                                                 <option value="whereisorder">Where is My Order ? </option>
                                                    <option value="diliveryboymisbehave">Report Misbehave by Delivery Boy</option>
                                            <option value="reportrestro">Report Restaurant</option>
                                            <option value="reportspillage">Report Spillage of the Food</option>
                                              <option value="correction_info">Corrections Or Missing Info</option>
                                            <option value="investor_information">Investor Information</option>
                                             <option value="website_feedback">Website Feedback</option>
                                          
                                      
                                         
                                            
                                           
                                        </select>
                                       
                                    </div>
                                </div>
                                        <div class="col-md-12">
                                            <div class="form_group">
                                            <input type="text" class="form_control_wrap" name="subject" placeholder="Subject Line"
                                                    id="subject" required=""><i class='fa fa-user-graduate'></i>
                                               </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form_group">
                                                <textarea name="message" id="message" rows="6"
                                                    placeholder="Your Message" required=""
                                                    class="form_control_wrap_3"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="contact_form_sumbit">
                                                <button type="submit" name="submit" class="blob">Submit<i class="fa fa-long-arrow-alt-right"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="address_cover_main">
                            <div class="addresrg">
                                <h5>Address</h5>
                                <p>Shubham City, Haridwar, Uttarakhand, India  -249405</p>
                            </div>
                            <div class="addresrg con_adre">
                                <h6>Phone</h6>
                                <p class="con_ads"><a href="tel:+917617477477">+91-7617 477 477</a></p>
                                <!-- <p class="con_ads"> <a href="tel:999000990">+133 (4444) 878</a></p> -->
                            </div>
                            <div class="addresrg con_adre">
                                <h6 class="mb_pd">Mail</h6>
                                <p><a href="mailto:hello@rowdymeals.com">hello@rowdymeals.com</a></p>
                            </div>
                            <div class="addresrg con_adre">
                                <h6>Follow Us</h6>
                               <ul>
                                <li><a href="https://www.facebook.com/Rowdymeals"><i class="fa fa-facebook-f"></i></a></li>
                               <li><a href="https://www.instagram.com/rowdymeals"><i class="fa fa-instagram"></i></a></li>
                               <li><a href="https://www.linkedin.com/company/rowdy-meals"><i class="fa fa-linkedin"></i></a></li>
                               </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<?php include('inc/footer.php')?>
<?php 
if(isset($_POST['submit'])){
    
     //PHP Mailer
  require 'phpmailer/mail.php';


    $param_student_name = $_POST['first_name'];
    $param_parent_name = $_POST['last_name'];
    $param_class = $_POST['subject'];
    $param_email = $_POST['email'];
    $param_phone = $_POST['phone'];
    $param_message = $_POST['message'];
    $param_quest = $_POST['question'];
    

    $sql = "INSERT into contact_form(`first_name`,`last_name`,`subject`,`question`,`email`,`phone`,`message`)VALUES('$param_student_name','$param_parent_name','$param_class','$param_quest','$param_email','$param_phone','$param_message')";
    if(mysqli_query($db , $sql)){
        
        
    
        $mail->From = 'hello@rowdymeals.com';
                $mail->FromName = "Rowdy Meals"; // Name to indicate where the email came from when the recipient received
                $mail->AddAddress($param_email);
                $mail->AddBCC("hello@rowdymeals.com");
                $mail->AddCC("adityanamansingh@gmail.com");
                $mail->WordWrap = 50; // set word wrap
                $mail->IsHTML(true); // send as HTML
                
                $mail->SMTPDebug = false;
                $mail->do_debug = 0;
                $mail->Subject = "Rowdy Meals Contact Enquiry"; //used for mail subject
              $mail->Body = '<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head><body style="background-color:#f6f6f6; box-sizing: border-box; font-family: " Poppins", sans-serif;"><div style="margin:0px auto;background: #f3f3f3;padding: 10px;"><div style="border: 1px solid #ccc;background-color:#fff;clear:both;color:#666;line-height:32px;max-width:500px;margin:50px auto;border-radius:5px 5px 5px 5px"><div style="color:#fff;text-align:center;padding:0px 0px 0px;background-repeat:no-repeat;background-position:center;background-size:183px;background-image: url(https://rowdymeals.com/images/logo.png);background-color:#fff;width:100%;height:125px;border-radius:5px 5px 0px 0px"></div><div style="margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;padding-top:0;padding-right:0;padding-bottom:0px;padding-left:0;font-size:15px"> <img src="https://rowdymeals.com/images/img/message.png" style=" display: block; margin: 0 auto;width: 100px; padding-top: 15px;"><table cellpadding="0" cellspacing="0" style="width: 100%;margin: 8px 1px;font-size: 12px;font-size:12px"><tbody><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> First Name</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left; "> '.$param_student_name.'</td></tr><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> Last Name</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;"> '.$param_parent_name.'</td></tr><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> Subject</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;"> '.$param_class.'</td></tr><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> Question</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;"> '.$param_quest.'</td></tr><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> Email</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;"> '.$param_email.'</td></tr><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> Phone</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;"> '.$param_phone.'</td></tr><tr><td style="border-bottom:1px solid #eeee;text-align:left;padding: 10px;color: #000;width: 171px;font-weight:bold;font-size: 15px;background: url(https://rowdymeals.com/images/img/dots.png);background-size: 3px;background-repeat: no-repeat;background-position: right;"> Message</td><td style="border-bottom:1px solid #eeee;font-size: 17px;padding: 10px;color: #000;text-align: left;"> '.$param_message.'</td></tr></tbody></table><p style="padding: 10px 30px;font-weight: 600;text-align: center;font-size: 14px;margin-bottom: 0;background-repeat:no-repeat;background-position:center;background-color:#F05C4D;background: #F05C4D;color: #fff;text-transform: capitalize;"> ROWDY MEALS | All right reserved</p></div></div></div></div></body></html>';
     
                if($mail->Send())
                {
                   echo "<script type='text/javascript'>alert('Your message has been saved successfully.We will contact you soon.')</script>";  
                    echo "<script> window.location.href = 'thank-you.php';</script>"; 
                
                } else {

                    $mailError = $mail->ErrorInfo;
                    echo"hhh";
                       }



        }else{
    echo "<script type='text/javascript'>alert('There is an issue with the form you filled. Please try again.')</script>";
    echo "<script> window.location.href = 'sorry.php';</script>"; }
}
?>