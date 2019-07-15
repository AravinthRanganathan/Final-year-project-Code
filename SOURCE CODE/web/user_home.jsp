<%@page import="ActionPage.DBConnection"%>
<%@page import="java.sql.*"%>
<%
    String email = (String) session.getAttribute("ssemail");
    String name = null, id = null, country = null;

    int prank = 0;
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from reg where email='" + email + "'");
        if (rs.next()) {
            name = rs.getString("name");
            id = rs.getString("id");
            country = rs.getString("country");

        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
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
                                        <li><a href="user_home.jsp">User Home</a></li>
                                        <li><a href="compose.jsp">New Tweet's</a></li>
                                        <li><a href="follow.jsp">Followers</a></li>
                                        <li><a href="following.jsp">Following</a></li>
                                        <li><a href="profile.jsp">My Profile</a></li>
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


                        <div class="single_home_slider">
                            <div class="home-overlay"></div>
                            <img width="200" height="700" src="images/User Home page.jpg">
                            <!--                            <div class="main_home wow fadeInUp" data-wow-duration="700ms"> 
                                                            
                                                            <h2>we are clemo.</h2>
                                                            <div class="separator"></div>
                                                            <img width="200" height="700">
                                                            <p class="subtitle">professionals <br />
                                                                <img width="200" height="700">
                                                                in the creative industries</p>
                                                            <div class="home_btn">
                                                                <a href="" class="btn">Learn More</a>
                                                            </div>
                                                        </div>-->
                        </div><!-- End of single_home_slider -->

                        <div class="single_home_slider">
                            <div class="home-overlay"></div>
                            <img width="200" height="700" src="images/User Home page.jpg">
                            <!--                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                            <h2>we are clemo.</h2>
                                                            <div class="separator"></div>
                                                            <p class="subtitle">professionals <br />
                                                                in the creative industries</p>
                                                            <div class="home_btn">
                                                                <a href="" class="btn">Learn More</a>
                                                            </div>
                                                        </div>-->
                        </div><!-- End of single_home_slider -->

                        <div class="single_home_slider">
                            <div class="home-overlay"></div>
                            <img width="200" height="700" src="images/User Home page.jpg">
                            <!--                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                            <h2>we are clemo.</h2>
                                                            <div class="separator"></div>
                                                            <p class="subtitle">professionals <br />
                                                                in the creative industries</p>
                                                            <div class="home_btn">
                                                                <a href="" class="btn">Learn More</a>
                                                            </div>
                                                        </div>-->
                        </div><!-- End of single_home_slider -->

                    </div>
                </div>
            </div>
        </div>
    </section><!-- End of Home Section -->

    <div class="content-wrapper">
        <!------------------------------------------------------ Content Header (Page header) ------------------------>
        <div style="width:100%;" align="center" class="container">
            <div style="float:left; width:40%; background-color: #ccc; " >
                <div style="background-color: #fff">
                    <h3 class="service3"></h3>

                    <font style="font-family: initial; color:#00e765"><strong><font size="5"><br>All Friends</font></strong></font><br><br>

                    <%

                        int fid = 0;

                        Connection con2 = null;
                        Statement st2 = null;
                        ResultSet rs2 = null;

                        String sql = "select * from reg where email!='" + email + "'";
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic", "root", "root");
                            st2 = con2.createStatement();
                            rs2 = st2.executeQuery(sql);
                            while (rs2.next()) {
                                fid = rs2.getInt("id");
                                String fname = rs2.getString("name");
                                String rid = id + "," + name + "," + Integer.toString(fid) + "," + fname;
                                Connection con3 = null;
                                Statement st3 = null;
                                ResultSet rs3 = null;

                                String sql3 = "select * from follow where uid='" + id + "' and fid='" + fid + "'";
                                try//try2
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic", "root", "root");;
                                    st3 = con3.createStatement();
                                    rs3 = st3.executeQuery(sql3);

                                    if (rs3.next()) {%>
                    <p><font style="font-family: cursive; font-size: 16px; color: black"><%=fname%></p>
                    <img style="border-radius: 50%;" src="view2.jsp?id=<%=fid%>" width="120" height="120" ><br>
                    <font style="color: #00e765" size="3"><strong><%=rs3.getString("status")%></strong></font>
                    <%} else {%>
                    <p><font style="font-family: cursive; font-size: 16px; color: black"><%=fname%></font></p>
                    <img style="border-radius: 50%;" src="view2.jsp?id=<%=fid%>" alt="" width="120" height="120" /> <br>
                    <a href="request.jsp?id=<%=rid%>"><font style="color: #F00"  size="3"><strong>Follow</strong></font></a>

                    <%}

                                } //end try2
                                catch (Exception e3) {
                                    System.out.println(e3);
                                }

                            }

                        } catch (Exception ex) {
                            System.out.println(ex);
                        } finally {
                            con2.close();
                            st2.close();
                        }

                    %>

                </div>
            </div>
            <div  style="float:left; width:60%; background-color: #ccc; margin-left: 0px">
                <center>
                    <div style="background-color:  white">
                        <font style="font-family: initial; color: #00e765"><strong><font size="5"><br>Public Tweets</font></strong></font><br>
                        <table align="center" height="174">


                            <%                                                //while(rs2.next()){
                                //fid=rs2.getInt("fid");
                                //fname=rs2.getString("fname");
                                //System.out.println("friend id"+fid);
                                Connection con1 = null;
                                Statement st1 = null;
                                ResultSet rs1 = null;
                                String statusb = "Allow";
                                String setting = "public";
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic", "root", "root");
                                    st1 = con1.createStatement();
                                    String sql3 = "SELECT * FROM tweet ORDER BY `tweet`.`tid` DESC";

                                    rs1 = st1.executeQuery(sql3);
                                    while (rs1.next()) {
                                        //rs.getString
                            %>

                            <tr>
                                <td>
                                    &nbsp;<img src="viewimag.jsp?id=<%=rs1.getInt("uid")%>" alt="" width="50" height="50" />&nbsp;&nbsp; 
                                    <font style="color: #000"><%=rs1.getString("username")%><font>&nbsp;&nbsp; <font style="color: #49e3ce">@<%=rs1.getString("username")%></font>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Message: </strong><p><textarea readonly="" style="width: 400px; height: 90px; border-color: white; color: black"><%=rs1.getString("msg")%></textarea></p>
                                </td>
                            </tr>
                            <tr>
                                <td> 
                                    <img src="viewimages.jsp?id=<%=rs1.getInt("tid")%>" alt="" width="400" height="300" />
                            <br><font style="color: #C76C0C"><center>----------------------------------------------------------------</center></font>
                            </td>
                            </tr>

                            <%
                                    }
                                } catch (Exception e3) {
                                    System.out.println(e3);
                                }

                            %>
                        </table>
                        <div class="btn_more"><a href="#"></a></div>
                    </div>
                </center>
            </div>
        </div>
    </div>       


    <!-- Service Section -->


    <!-- Team Section -->

    <!-- Clients Section -->

    <!-- Contact Section -->

    <!-- footer Section -->
    <footer id="footer" class="footer">
        <div class="container">
            <div class="main_footer">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="copyright_text text-center">
                            <!--<p class=" wow fadeInRight" data-wow-duration="1s">Made with <i class="fa fa-heart"></i> by <a target="_blank" href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All Rights Reserved</p>-->
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
