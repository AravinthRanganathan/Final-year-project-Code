<%@page import="ActionPage.DBConnection"%>
<%@page import="java.sql.*" %>
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
                                        <li><a href="admin_home.jsp">Admin Home</a></li>
                                        <li><a href="gettweet.jsp">Get Tweets</a></li>
                                        <li><a href="pre.jsp">Pre-processing</a></li>
                                        <li><a href="detect.jsp">Detection</a></li>
                                        <li><a href="index.jsp">Logout</a></li>
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
                            <h2 style="color: white; font-size: 30px"><br>Tweet's get from TWITTER</h2>
                        </div><!-- End of head title -->
                        <style>
                            #customers {
                                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                                border-collapse: collapse;
                                width:100%;
                            }

                            #customers td, #customers th {
                                border: 1px solid #ddd;
                                padding: 8px;
                            }

                            #customers tr:nth-child(even){background-color: #f2f2f2;}

                            #customers tr:hover {background-color: #ddd;}

                            #customers th {
                                padding-top: 12px;
                                padding-bottom: 12px;
                                text-align: left;
                                background-color: #46b8da;
                                color: white;
                            }
                        </style>
                        <div>


                            <center><table id="customers">
                                    <tr>
                                        <th><center>User ID</center></th>
                                    <th><center>Photos</center></th>
                                    <th><center>User Name</center></th>
                                    <th><center>Tweets</center></th>
                                    <th><center>ReTweet</center></th>

                                    </tr>

                                    <%
                                        Connection con = DBConnection.getConnection();
                                        Statement st = con.createStatement();
                                        String sql = "select * from tweets ORDER BY id DESC";
                                        ResultSet rs = st.executeQuery(sql);
                                        while (rs.next()) {


                                    %>
                                    <tr>
                                        <td><%=rs.getString("idd")%></td>
                                        <td><img src="<%=rs.getString("imageurl")%>" width="100" height="100"/></td>
                                        <td><%=rs.getString("name")%></td>
                                        <td><textarea cols="40" style="height: 100px"><%=rs.getString("tweet")%></textarea></td>
                                        <td><%=rs.getString("retweet")%></td>

                                    </tr>
                                    <%                                            }

                                    %>



                                </table>
                            </center>
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
