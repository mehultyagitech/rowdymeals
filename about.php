<?php include('inc/header.php')?>
<style type="text/css">
    body {
        margin-top: 20px;
        background: #eee;
    }


    .team-item {
        padding: 35px;
        padding-right: 0;
        position: relative;
        z-index: 0;
    }

    .team-item:after,
    .team-item:before {
        content: "";
        position: absolute;
        -webkit-box-shadow: 0 5px 30px 0 rgba(39, 39, 39, 0.15);
        box-shadow: 0 5px 30px 0 rgba(39, 39, 39, 0.15);
        border-radius: 10px;
        z-index: -1;
    }

    .team-item:before {
        height: 100%;
        background-color: #fff;
        left: 0;
        top: 0;
        right: 30px;
        -webkit-transition: all 0.3s ease;
        transition: all 0.3s ease;
    }

    .team-item:after {
        height: 6px;
        width: calc(100% - 30px);
        background-color: #F05C4D;
        left: 0;
        bottom: 0;
        -webkit-transition: all 0.3s linear;
        transition: all 0.3s linear;
    }

    .team-item:hover:after {
        height: 100%;
    }

    .team-item .img-holder {
        -ms-flex-negative: 0;
        flex-shrink: 0;
        -webkit-box-shadow: 0 0 20px 0 rgba(51, 51, 51, 0.2);
        box-shadow: 0 0 20px 0 rgba(51, 51, 51, 0.2);
        border-radius: 10px;
        width: calc(100% - 70px);
        margin-left: 70px;
        overflow: hidden;
    }

    .team-item .img-holder img {
        border-radius: 10px;
        width: 100%;
        -webkit-transform: scale(1.1);
        transform: scale(1.1);
        -webkit-transition: all 0.6s ease;
        transition: all 0.6s ease;
    }

    .team-item:hover .img-holder img {
        -webkit-transform: scale(1);
        transform: scale(1);
    }

    .team-item .socials {
        position: absolute;
    }

    .team-item .socials a {
        display: block;
        margin-right: 0;
        margin-bottom: 15px;
        -webkit-box-shadow: 0 3px 2px 0 rgba(0, 0, 0, 0.12);
        box-shadow: 0 3px 2px 0 rgba(0, 0, 0, 0.12);
    }

    .team-item .socials a:last-of-type {
        margin-bottom: 0;
    }

    .team-item .team-content {
        margin-right: 70px;
        text-align: center;
    }

    .team-item .team-content h5 {
        color: #101f41;
        -webkit-transition: all 0.4s ease;
        transition: all 0.4s ease;
    }

    .team-item .team-content p {
        color: #F05C4D;
        -webkit-transition: all 0.4s ease;
        transition: all 0.4s ease;
        font-weight: 600;
        font-size: 14px;
    }

    .para {
        color: #000 !important;
        -webkit-transition: all 0.4s ease;
        transition: all 0.4s ease;
        font-weight: 300 !important;
        font-size: 14px !important;
        text-align: justify;
    }

    .team-item:hover .team-content h5,
    .team-item:hover .team-content p {
        color: #fff;
        -webkit-transition: all 0.3s ease;
    }

    transition: all 0.3s ease;

    .d-inline-block {
        display: inline-block !important;
    }

    .socials a {
        width: 35px;
        height: 35px;
        background-color: #F05C4D;
        border-radius: 50%;
        -webkit-box-shadow: 0 3px 2px 0 #516cd9;
        box-shadow: 0 3px 2px 0 #516cd9;
        text-align: center;
        color: #fff;
        padding-top: 10px;
        font-size: 16px;
        margin-right: 10px;
        -webkit-transition: all 0.3s ease;
        transition: all 0.3s ease;
    }

    .mb-2,
    .my-2 {
        margin-bottom: .5rem !important;
    }

    h5 {
        font-size: 30px;
    }

    .mt-30 {
        margin-top: 30px;
    }

    .mb-30 {
        margin-bottom: 30px;
    }
</style>

<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"
    integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />
<div class="page-wrapper">

    <section class="about_breadcumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcumb_title">
                        <h2>About Us</h2>
                        <h4>We deliver what we commit and we commit what we can deliver</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about_sec1">
        <div class="container">
            <div class="about_sec_upper">
                <h1 data-aos="fade-up" data-aos-duration="2000" >About</h1>
                <h2 data-aos="fade-up" data-aos-duration="2000" ><span style="color:#F05C4D;">Rowdy</span><span style="color:black;"> Meals <span style="color:#F05C4D;"></h2>
                <p data-aos="fade-up" data-aos-duration="2000">
                    Rowdy Meals is driven by true friends who keep the pace with changing times and the needs of our
                    customers.</p>
            </div>
        </div>
    </section>


    <section class="about_sec2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="about_sec2_bg" data-aos="zoom-in" data-aos-duration="2000"></div>
                </div>
                <div class="col-md-6">
                    <div class="about_secLefts">
                        <h4 data-aos="fade-up" data-aos-duration="2000"> All About The <span style="color:#F05C4D;">Rowdy</span>  Meals</h4>
                        <p data-aos="fade-up" data-aos-duration="2000">Teamwork makes the dream work.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about_secMain_contetn" data-aos="fade-up" data-aos-duration="2000">
                        <p>
                            As we are delivering food, we do not measure success by the financial statements alone.
                            Along with the objective of creating value, Rowdy Meals has always endeavoured to make a
                            difference in the lives of people by giving them fresh food.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="Why_logoic">
        <div class="why_logic_inner">
            <div class="why_logic_wrap">
                <div class="why_logic_grid">
                    <div class="why_logic_bgs">

                    </div>
                </div>
                <div class="why_logic_grid">
                    <div class="why_logic_content" data-aos="fade-up" data-aos-duration="2000">
                        <h4>Why you need <span style="color:#F05C4D;">Rowdy</span>  Meals services?</h4>
                        <p>As our slogan means we provide food fastly,rowdly and tastly! So, Rowdy Meals will be the
                            last research for all your problems of food cravings. </p>
                        <div class="why_container">
                            <div class="why_grids">
                                <div class="why_grids_inner" data-aos="fade-up" data-aos-duration="2000">
                                    <h5>Experience</h5>
                                    <p>We have a number of the most effective minds of the business operating with us.
                                        Our information and knowledge are what offer us the sting over competitors.</p>
                                </div>
                            </div>
                            <div class="why_grids">
                                <div class="why_grids_inner" data-aos="fade-up" data-aos-duration="2000">
                                    <h5>Profound Research</h5>
                                    <p>We believe that comprehensive information concerning advanced technologies is imperative for effective app maintenance and support services.

</p> </div>
                            </div>
                            <div class="why_grids">
                                <div class="why_grids_inner" data-aos="fade-up" data-aos-duration="2000">
                                    <h5>Cost Effective</h5>
                                    <p>The price of our dishes are same as on restaurant menu . We only take delivery fees. NO hidden charges !</p>
                                </div>
                            </div>
                            <div class="why_grids">
                                <div class="why_grids_inner" data-aos="fade-up" data-aos-duration="2000">
                                    <h5>Reactiveness</h5>
                                    <p>Our team is often one step ahead. We tend to proactively determine the problems and bugs before they become puzzle.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title title-left text-center text-lg-left">
                    <h3 class="top-sep">Meet Our Team</h3>
                    <p>Meet our team members </p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-6 mb-30">
                <div class="team-item">
                    <div class="mb-30 position-relative d-flex align-items-center">
                        <span class="socials d-inline-block">

                            <a href="https://www.linkedin.com/in/mehul-tyagi-3513331a6" class="zmdi zmdi-linkedin"></a>
                            <a href="https://instagram.com/mehultyagi_007" class="zmdi zmdi-instagram"></a>
                        </span>
                        <span class="img-holder d-inline-block">
                            <img src="images/img/jjj35jkj.jpg" alt="Team">
                        </span>
                    </div>
                    <div class="team-content">
                        <h5 class="mb-2">Mehul Tyagi</h5>
                        <p class="text-uppercase mb-0">Founder and M.D.</p>
                        <p class="para mt-2" >
                        <span style="font-size:25px; color:#F05C4D"> &#8220;    </span>
                        A 20 year old Innovator, Compassionate and Ambitious Entrepreneur Founder
                            and Managing Director of Rowdy Meals. He is futuristic, creative thinker and adventurous guy
                            who is ready anytime to learn and try new things. His personality usually depicts his
                            ability of leardership , active listening, communication and to motivate his staff.
                            Experienced in all aspects of business formation, operation, finance, and management.
                            Visionary product developer with deep education in web technologies. Effective communicator
                            and motivator who identifies and leverages assets in teammates to reach organizational
                            goals. Relentless optimist who believes there is no failure, only feedback.
                            <span style="font-size:25px; color:#F05C4D"> &#8221;    </span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-6 mb-30">
                <div class="team-item">
                    <div class="mb-30 position-relative d-flex align-items-center">
                        <span class="socials d-inline-block">

                            <a href="https://www.linkedin.com/in/anshul-prajapati-6ba1001a1"
                                class="zmdi zmdi-linkedin"></a>
                            <a href="https://instagram.com/anshulprajapati5052?igshid=1agrfoi18a08p"
                                class="zmdi zmdi-instagram"></a>
                        </span>
                        <span class="img-holder d-inline-block">
                            <img src="images/img/IMG_20210131_094451_467.jpg" alt="Team">
                        </span>
                    </div>
                    <div class="team-content">
                        <h5 class="mb-2">Anshul Prajapati</h5>
                        <p class="text-uppercase mb-0">Co-Founder</p>
                        <p class="para mt-2" style="margin-bottom:4.3rem">
                        <span style="font-size:25px; color:#F05C4D"> &#8220;    </span>
                        Co-founder of Rowdy Meals , A remote thinker who believes in smart work and
                            interested in finding new ideas to solve real-time problems whatever he do, he do with all
                            heart. He love's to learn things very deeply , A good communicator and able to teach things
                            to others very efficiently.It is not necessary that we always win a business that is why he
                            also make backup plans, the only failure in a nushell is that we get the experience.
                            <span style="font-size:25px; color:#F05C4D"> &#8221;    </span>
                        </p>
                    </div>
                </div>
            </div>
            </div>
<div class="row  justify-content-center">
            <div class="col-md-12 col-lg-6 mb-30">
                <div class="team-item">
                    <div class="mb-30 position-relative d-flex align-items-center">
                        <span class="socials d-inline-block">

                            <a href="https://www.linkedin.com/in/adityanamansingh" class="zmdi zmdi-linkedin"></a>
                            <a href="https://instagram.com/namantastic" class="zmdi zmdi-instagram"></a>
                        </span>
                        <span class="img-holder d-inline-block">
                            <img src="images/img/aditya.jpeg" alt="Team">
                        </span>
                    </div>
                    <div class="team-content">
                        <h5 class="mb-2">Aditya Naman Singh</h5>
                        <p class="text-uppercase mb-0">CEO</p>
                        <p class="para mt-2">
                        <span style="font-size:25px; color:#F05C4D"> &#8220;    </span>
                            Adventurous, Passionate and Ambitious.
                            The three words that describes him well.
                            A happy go lucky personality who believes in no limitations on what you can be, have or do.
                            He love's learning new things every day, so he have a huge set of skills.
                            Skilled in Sales, C++,HTML,CSS, jQuery, MySQL,Server Integration, Business Development,
                            Strategic Planning, and Customer Relationship Management (CRM) and Many more .
                            He vibe's with people who support growth and development not only in terms of work but also
                            knowledge and positive energy. 
                            <a href="https://cryptina.in">CRYPTINA INDIA </a> is his
                            efforts to bringing you a table full of positivity, growth and development, be it your work
                            or your life.
                            The only thing that keeps me going is to not give up trying to do what you really want to
                            do, because where there is hard work, love and inspiration, nothing can go wrong.
                            <span style="font-size:25px; color:#F05C4D"> &#8221;    </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php include('inc/footer.php')?>