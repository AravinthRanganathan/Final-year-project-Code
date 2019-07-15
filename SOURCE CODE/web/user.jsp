
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Road Traffic Speed Prediction</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">


    <link rel="stylesheet" href="assets/css/fonticons.css">
    <link rel="stylesheet" href="assets/css/slider-pro.css">
    <link rel="stylesheet" href="assets/css/stylesheet.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">


    <!--For Plugins external css-->
    <link rel="stylesheet" href="assets/css/plugins.css" />

    <!--Theme custom css -->
    <link rel="stylesheet" href="assets/css/style.css">

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <div class='preloader'><div class='loaded'>&nbsp;</div></div>
    <header id="main_menu" class="header navbar-fixed-top">            
        <div class="main_menu_bg">
            <div class="container">
                <div class="row">
                    <div class="nave_menu">
                        <nav class="navbar navbar-default" id="navmenu">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span> 
                                    </button>
                                    <a class="navbar-brand" href="#">
                                        <img width="144" height="40" src="images/Twitter logo1.png"/>
                                    </a>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="user.jsp">User Login</a></li>
                                        <li><a href="admin.jsp">Admin Login</a></li>
                                        <li><a href="register.jsp">Register</a></li>

                                    </ul>    
                                </div>

                            </div>
                        </nav>
                    </div>	
                </div>

            </div>

        </div>
    </header> <!--End of header -->




    <!-- Home Section -->
    <section id="home" class="home">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 ">
                    <div class="main_home_slider text-center">


                        <br>


                    </div>
                </div>
            </div>
        </div>
    </section><!-- End of Home Section -->


    <!-- Work Section -->


    <!-- Team Section -->

    <!-- Clients Section -->

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="main_contact sections">
                        <div class="head_title text-center whitetext">
                            <h2 style="color: white; font-size: 32px"><br>USER LOGIN</h2>
                        </div><!-- End of head title -->
                        <div class="row">
                            <div class="contact_contant">
                                <div class="col-sm-6 col-xs-12">
                                    <!--<div class="single_message_right_info whitetext">-->
                                    <ul>
                                        <br><img width="400" height="300" src="images/user login page.jpg">
                                    </ul>
                                </div>
                            </div><!-- End of col-sm-6 -->
                            <style>
                                input[type=text], select, input[type=email], input[type=password], input[type=date] {
                                    width: 65%;
                                    padding: 12px 20px;
                                    margin: 8px 0;
                                    height: 46px;
                                    font-size: 14px;
                                    display: inline-block;
                                    border: 1px solid #ccc;
                                    border-radius: 4px;
                                    box-sizing: border-box;
                                }

                                input[type=submit] {
                                    width: 65%;
                                    background-color: #66afe9;
                                    color: white;

                                    padding: 14px 20px;
                                    margin: 8px 0;
                                    border: none;
                                    border-radius: 4px;
                                    cursor: pointer;
                                }

                                input[type=submit]:hover {
                                    background-color: deeppink;
                                }
                                /*
                                                                    div {
                                                                        border-radius: 5px;
                                                                        background-color: #f2f2f2;
                                                                        padding: 20px;
                                                                    }*/
                            </style>
                            <div class="col-sm-6 col-xs-12">
                                <div class="single_contant_left margin-top-60">
                                    <!--<form action="#" id="formid">-->
                                    <!--<div class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">-->

                                    <div><br>
                                        <form action="user_log.jsp" method="get">
                                            <table>
                                                <tr>
                                                    <td><label for="fname">Admin ID : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                                    <td><input type="text" style="width: 240px" id="fname" name="name" placeholder="Your name.."></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="password">Password : </label></td>
                                                    <td><input type="password" style="width: 240px" id="fname" name="pass" placeholder="Your name.."></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="register.jsp">Create Account!!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
                                                    <td><input style="width: 240px" type="submit" value="Submit"> </td>
                                                </tr>


                                            </table>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End of messsage contant-->
                    </div>
                </div>
            </div><!-- End of col-sm-12 -->
        </div><!-- End of row -->
    </div><!-- End of Contaier -->
</section><!-- End of portfolio Section --> 



<!-- footer Section -->
<footer id="footer" class="footer">
    <div class="container">
        <div class="main_footer">
            <div class="row">
                <div class="col-sm-12">
                    <div class="copyright_text text-center">
                        <!--All Rights Reserved <p class=" wow fadeInRight" data-wow-duration="1s">Made with <i class="fa fa-heart"></i> by <a target="_blank" href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All Rights Reserved</p>-->
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End of container -->
</footer><!-- End of footer -->



<!-- START SCROLL TO TOP  -->

<div class="scrollup">
    <a href="#"><i class="fa fa-chevron-up"></i></a>
</div>

<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>

<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/masonry/masonry.min.js"></script>
<script type="text/javascript">
    $('.mixcontent').masonry();
</script>

<script src="assets/js/jquery.sliderPro.min.js"></script>
<script type="text/javascript">
    $(document).ready(function ($) {
        $('#example3').sliderPro({
            width: 960,
            height: 200,
            fade: true,
            arrows: false,
            buttons: true,
            fullScreen: false,
            shuffle: true,
            smallSize: 500,
            mediumSize: 1000,
            largeSize: 3000,
            thumbnailArrows: true,
            autoplay: false,
            thumbnailsContainerSize: 960

        });
    });
</script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>
