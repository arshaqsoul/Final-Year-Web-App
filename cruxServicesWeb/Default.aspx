<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cruxServicesWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cruxDefault</title>
    <%--    <link href="Content/LandingPage/css/animate.css" rel="stylesheet" />--%>
    <link href="Content/LandingPage/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LandingPage/css/flexslider.css" rel="stylesheet" />
    <link href="Content/LandingPage/css/queries.css" rel="stylesheet" />
    <link href="Content/LandingPage/css/styles.css" rel="stylesheet" />
    <link href="Content/LandingPage/css/animate.css" rel="stylesheet" />
    <link href="Content/LandingPage/slider/css/bootslider.css" rel="stylesheet" />
    <link href="Content/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/LandingPage/slider/css/bs-theme-minimalistic.css" rel="stylesheet" />
    <link href="Content/LandingPage/slider/css/bs-layout-fixedheight.css" rel="stylesheet" />
    <style>
        .bs-slide {
            height: 550px;
        }

        .heading-center {
            position: absolute;
            width: 100%;
            top: 20%;
        }
    </style>
</head>
<body id="top">
    <form id="form1" runat="server">
        <header id="home">
            <div class="navbar" style="background-color: rgba(255, 255, 255, 0.9)">
                <div class="container-fluid">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="Default.aspx" class="navbar-brand">
                                <img src="Content/LandingPage/img/logogreen.fw.png" style="margin-top: -7px;" />
                            </a>
                        </div>
                        <div class="collapse navbar-collapse navbar-left">
                            <ul class="nav navbar-nav">
                                <li><a href="Default.aspx#intro">Intro</a></li>
                                <li><a href="Default.aspx#hwitwrks">How It Works</a></li>
                                <li><a href="Default.aspx#services">Featured Services</a></li>
                                <li><a href="Default.aspx#contact">Get in Touch</a></li>
                            </ul>
                        </div>
                        <div class="collapse navbar-collapse navbar-right">
                            <ul class="nav navbar-nav">
                                <li>
                                    <asp:HyperLink ID="signUp" runat="server" href="Signup.aspx" Font-Underline="false">Sign Up</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="logIn" runat="server" href="Login.aspx" Font-Underline="false">Log In</asp:HyperLink></li>
                                <li><asp:ImageButton ID="ImageButton1" runat="server" width="40px" Height="40px" style="margin-top:5px; margin-bottom:-15px" Visible="false"/>
                                    <%--<asp:LinkButton ID="profileLink" runat="server" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" Visible="false">
                                        <li class="dropdown">
                                        
                                        <ul class="dropdown-menu" role="menu">
                                            <li>Hi <asp:Label ID="LblHi" runat="server" Text=""></asp:Label></li>
                                            <li><asp:Button ID="LblGoToPro" runat="server" Text="View Profile" OnClick="LblGoToPro_Click"></asp:Button></li>
                                            <li class="divider"></li>
                                        </ul>
                                    </li>
                                    </asp:LinkButton--%>
                                </li>
                                <li><asp:Button ID="LblGoToPro" runat="server" Text="View Profile" OnClick="LblGoToPro_Click" Visible="false" CssClass="btn btn-default" style="margin-top:7px; margin-left:5px" BackColor="Turquoise" ForeColor="white"></asp:Button></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bootslider" id="bootslider" style="margin-top: -22px">
                <!-- Bootslider Loader -->
                <div class="bs-loader">
                    <img src="Content/LandingPage/slider/loader.gif" width="31" height="31" alt="Loading.." id="loader" />
                </div>
                <!-- /Bootslider Loader -->
                <!-- Bootslider Container -->
                <div class="bs-container">
                    <!-- Bootslider Slide -->
                    <div class="bs-slide active" data-animate-in="fadeInDown" data-animate-out="fadeOutDown">
                        <div class="bs-foreground">
                            <div class="text-center heading-center">
                                <h1 class="heading" data-animate-in="fadeInDown" data-animate-out="fadeOutDown" data-delay="800" style="color: black;">painter for a clean finish<span class="text-turquoise">.</span></h1>
                            </div>
                        </div>
                        <div class="bs-background">
                            <img src="Content/LandingPage/img/sld1.fw.png" />
                        </div>
                    </div>
                    <!-- /Bootslider Slide -->

                    <!-- Bootslider Slide -->
                    <div class="bs-slide" data-animate-in="fadeInDown" data-animate-out="fadeOutDown">
                        <div class="bs-foreground">
                            <div class="text-center heading-center">
                                <h1 class="heading" data-animate-in="fadeInDown" data-animate-out="fadeOutDown" data-delay="800" style="color: black;">get you house tiled by experts<span class="text-turquoise">.</span></h1>
                            </div>
                        </div>
                        <div class="bs-background">
                            <img src="Content/LandingPage/img/sld2.fw.png" />
                        </div>
                    </div>
                    <!-- /Bootslider Slide -->
                    <!-- Bootslider Slide -->
                    <div class="bs-slide" data-animate-in="fadeInDown" data-animate-out="fadeOutDown">
                        <div class="bs-foreground">
                            <div class="text-center heading-center">
                                <h1 class="heading" data-animate-in="fadeInDown" data-animate-out="fadeOutDown" data-delay="800" style="color: white;">beautify your garden<span class="text-turquoise">.</span></h1>
                            </div>
                        </div>
                        <div class="bs-background">
                            <img src="Content/LandingPage/img/slider3.fw.png" />
                        </div>
                    </div>
                    <!-- /Bootslider Slide -->
                    <!-- Bootslider Slide -->
                    <div class="bs-slide" data-animate-in="fadeInDown" data-animate-out="fadeOutDown">
                        <div class="bs-foreground">
                            <div class="text-center heading-center">
                                <h1 class="heading" data-animate-in="fadeInDown" data-animate-out="fadeOutDown" data-delay="800" style="color: black;">keep things simple & organized<span class="text-turquoise">.</span></h1>
                            </div>
                        </div>
                        <div class="bs-background">
                            <img src="Content/LandingPage/img/slider4.fw.png" />
                        </div>
                    </div>
                    <!-- /Bootslider Slide -->
                    <!-- Bootslider Slide -->
                    <div class="bs-slide" data-animate-in="fadeInDown" data-animate-out="fadeOutDown">
                        <div class="bs-foreground">
                            <div class="text-center heading-center">
                                <h1 class="heading" data-animate-in="fadeInDown" data-animate-out="fadeOutDown" data-delay="800" style="color: black;">do not worry about leaks<span class="text-turquoise">.</span></h1>
                            </div>
                        </div>
                        <div class="bs-background">
                            <img src="Content/LandingPage/img/slider5.fw.png" />
                        </div>
                    </div>
                    <!-- /Bootslider Slide -->

                </div>
                <!-- /Bootslider Container -->

                <!-- Bootslider Progress -->
                <div class="bs-progress progress">
                    <div class="progress-bar turquoise"></div>
                </div>
                <!-- /Bootslider Progress -->

                <div class="text-center">
                    <div class="bs-controls">
                        <a href="javascript:void(0);" class="bs-prev">&lt;</a>
                        <a href="javascript:void(0);" class="bs-next">&gt;</a>
                    </div>
                </div>
                <!-- /Bootslider Controls -->

                <!-- Bootslider Pagination -->
                <div class="bs-pagination text-center text-alizarin">
                    <ul class="list-inline"></ul>
                </div>
                <!-- /Bootslider Pagination -->
            </div>
            <section class="hero" id="hero">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-left navicon">
                            <a id="nav-toggle" class="nav_slide_button" href="#"><span></span></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 col-md-offset-2 text-center" style="background-color: rgba(255,255,255, 0.93); padding-top: 40px; padding-bottom: 40px; margin-top: 210px; margin-bottom: -20px">
                    <div class="row">
                        <img class="animated fadeInDown" src="Content/LandingPage/img/logogreen.fw.png" style="margin-bottom: 10px" />
                        <h2>Find a Service Provider</h2>
                        <div class="form-inline" role="form" runat="server">
                            <div class="row col-md-12" style="text-align: center">
                                <span style="font-weight: bolder">I need a</span>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtCatSearch" runat="server" class="form-control" placeholder="Ex: Plumber, Carpenter, etc" ValidationGroup="Search"></asp:TextBox>
                                </div>
                                <span style="font-weight: bolder">in</span>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtLocSearch" runat="server" class="form-control" placeholder="Ex: Dehiwala, Nugegoda, etc" ValidationGroup="Search"></asp:TextBox>
                                </div>
                                <asp:Button ID="BtnSearch" runat="server" Text="Search" class="learn-more-btn" OnClick="BtnSearch_Click" ValidationGroup="Search" />
                            </div>
                        </div>
                    </div>
                </div>


            </section>
        </header>
        <section class="intro text-center section-padding" id="intro">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 wp1">
                        <h1 class="arrow">cruxServices</h1>
                        <p>
                            Crux Service, is a marketplace dedicated for Sri Lankans, enabling an online user to find and hire local individuals and/or businesses providing house maintenance services. 
                        This web application, launched during 2014 allows a person in need of a house related service to hire a Pro to get the job done.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section class="features text-center section-padding" id="hwitwrks">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="arrow">How It Works</h1>
                        <div class="features-wrapper">
                            <div class="col-md-4 wp2">
                                <div class="icon">
                                    <i class="fa fa-search shadow"></i>
                                </div>
                                <h2>Search a Pro</h2>
                                <p>
                                    Request a service by searching for service provider, based on service category and location.
                                </p>
                            </div>
                            <div class="col-md-4 wp2 delay-05s">
                                <div class="icon">
                                    <i class="fa fa-refresh shadow"></i>
                                </div>
                                <h2>Get Matched</h2>
                                <p>
                                    The system will find the best match for your search criteria and suggest the service providers who are closest to your location.
                                </p>
                            </div>
                            <div class="col-md-4 wp2 delay-1s">
                                <div class="icon">
                                    <i class="fa fa-check shadow"></i>
                                </div>
                                <h2>Hire</h2>
                                <p>
                                    Select the most appropriate service provider, by filtering out the search results based on price, rating, etc. to get the job done.
                                </p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="swag text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1>I got 99 Problems<span>but <em>house maintenance</em> 'aint one</span></h1>
                        <a href="#portfolio" class="down-arrow-btn"><i class="fa fa-chevron-down"></i></a>
                    </div>
                </div>
            </div>
        </section>
        <section class="portfolio text-center section-padding" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="arrow">Featured Services At CruxServices</h1>
                    </div>
                </div>
                <div class="row">
                    <div id="portfolioSlider">
                        <ul class="slides">
                            <li>
                                <div class="col-md-4 wp4">
                                    <div class="overlay-effect effects clearfix">
                                        <div class="img">
                                            <img src="Content/LandingPage/img/ft1.jpg" />
                                            <div class="overlay">
                                                <a class="expand"><i class="fa fa-flag"></i>
                                                    <br>
                                                    Gardening</a>
                                                <a class="close-overlay hidden">x</a>
                                            </div>
                                        </div>
                                    </div>
                                    <h2>Garden Services</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies nulla non metus pulvinar imperdiet. Praesent non adipiscing libero.</p>
                                </div>
                                <div class="col-md-4 wp4 delay-05s">
                                    <div class="overlay-effect effects clearfix">
                                        <div class="img">
                                            <img src="Content/LandingPage/img/ft2.jpg" />
                                            <div class="overlay">
                                                <a class="expand"><i class="fa fa-flag"></i>
                                                    <br>
                                                    Masonry</a>
                                                <a class="close-overlay hidden">x</a>
                                            </div>
                                        </div>
                                    </div>
                                    <h2>Masonry Services</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies nulla non metus pulvinar imperdiet. Praesent non adipiscing libero.</p>
                                </div>
                                <div class="col-md-4 wp4 delay-1s">
                                    <div class="overlay-effect effects clearfix">
                                        <div class="img">
                                            <img src="Content/LandingPage/img/ft3.jpg" />
                                            <div class="overlay">
                                                <a class="expand"><i class="fa fa-flag"></i>
                                                    <br>
                                                    Plumbing</a>
                                                <a class="close-overlay hidden">x</a>
                                            </div>
                                        </div>
                                    </div>
                                    <h2>Plumbing Services</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies nulla non metus pulvinar imperdiet. Praesent non adipiscing libero.</p>
                                </div>
                            </li>
                            <li>
                                <div class="col-md-4 wp4">
                                    <div class="overlay-effect effects clearfix">
                                        <div class="img">
                                            <img src="Content/LandingPage/img/ft4.jpg" />
                                            <div class="overlay">
                                                <a class="expand"><i class="fa fa-flag"></i>
                                                    <br>
                                                    Mechanical</a>
                                                <a class="close-overlay hidden">x</a>
                                            </div>
                                        </div>
                                    </div>
                                    <h2>Mechanic Services</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies nulla non metus pulvinar imperdiet. Praesent non adipiscing libero.</p>
                                </div>
                                <div class="col-md-4 wp4 delay-05s">
                                    <div class="overlay-effect effects clearfix">
                                        <div class="img">
                                            <img src="Content/LandingPage/img/ft5.jpg" />
                                            <div class="overlay">
                                                <a class="expand"><i class="fa fa-flag"></i>
                                                    <br>
                                                    Carpentry</a>
                                                <a class="close-overlay hidden">x</a>
                                            </div>
                                        </div>
                                    </div>
                                    <h2>Carpentry Services</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies nulla non metus pulvinar imperdiet. Praesent non adipiscing libero.</p>
                                </div>
                                <div class="col-md-4 wp4 delay-1s">
                                    <div class="overlay-effect effects clearfix">
                                        <div class="img">
                                            <img src="Content/LandingPage/img/ft6.jpg" />
                                            <div class="overlay">
                                                <a class="expand"><i class="fa fa-flag"></i>
                                                    <br>
                                                    Interior</a>
                                                <a class="close-overlay hidden">x</a>
                                            </div>
                                        </div>
                                    </div>
                                    <h2>Interior Design Services</h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ultricies nulla non metus pulvinar imperdiet. Praesent non adipiscing libero.</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <div class="ignite-cta text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <a href="Registration/SPReg.aspx" class="ignite-btn">Ignite Your Passion As A Service Provider</a>
                    </div>
                </div>
            </div>
        </div>
        <section class="subscribe text-center">
            <div class="container">
                <h1><i class="fa fa-paper-plane"></i><span>Subscribe to stay in the loop</span></h1>
                <div action="#">
                    <input type="text" name="" value="" placeholder="">
                    <input type="submit" name="" value="Send">
                </div>
            </div>
        </section>
        <section class="dark-bg text-center section-padding contact-wrap" id="contact">
            <a href="#top" class="up-btn"><i class="fa fa-chevron-up"></i></a>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="arrow">Drop us a line</h1>
                    </div>
                </div>
                <div class="row contact-details">
                    <div class="col-md-4">
                        <div class="light-box box-hover">
                            <h2><i class="fa fa-map-marker"></i><span>Address</span></h2>
                            <p>49/9, 1/1, Pallidora Rd. Dehiwala</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="light-box box-hover">
                            <h2><i class="fa fa-mobile"></i><span>Phone</span></h2>
                            <p>+94 771 906 771</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="light-box box-hover">
                            <h2><i class="fa fa-paper-plane"></i><span>Email</span></h2>
                            <p><a href="#">arshaqsoul@gmail.com</a></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="social-buttons">
                            <li><a href="#" class="social-btn"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#" class="social-btn"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="social-btn"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="legals">
                            <li><a href="#">Terms &amp; Conditions</a></li>
                            <li><a href="#">Legals</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 credit">
                        <p>Copyright @2014 cruxServices IT Department</p>
                    </div>
                </div>
            </div>
        </footer>
        <script src="Scripts/jquery-1.10.2.min.js"></script>
        <script src="Content/LandingPage/js/bootstrap.min.js"></script>
        <script src="Content/LandingPage/js/waypoints.min.js"></script>
        <script src="Content/LandingPage/js/scripts.js"></script>
        <script src="Content/LandingPage/js/modernizr.js"></script>
        <script src="Content/LandingPage/js/jquery.flexslider.js"></script>
        <script src="Content/LandingPage/slider/js/bootslider.js"></script>
        <script src="Content/LandingPage/slider/js/fitvids.js"></script>
        <script src="Content/LandingPage/slider/js/mousewheel.js"></script>
        <script src="Content/LandingPage/slider/js/touchSwipe.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var slider = new bootslider('#bootslider');
                slider.init();
            });
        </script>
    </form>
</body>
</html>
