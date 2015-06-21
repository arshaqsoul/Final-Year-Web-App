<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="cruxServicesWeb.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/Signupstyle.css" rel="stylesheet" />
    <style>
        body {
            background-color: #F5F5F1;
        }
    </style>
</head>
<body>
    <div class="navbar" style="height: 20px; background-color: rgba(255, 255, 255, 0.9)">
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
                            </ul>
                        </div>
                        <div class="collapse navbar-collapse navbar-right">
                            <ul class="nav navbar-nav">
                                <li>
                                    <asp:HyperLink ID="signUp" runat="server" href="Signup.aspx" Font-Underline="false">Sign Up</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="logIn" runat="server" href="Login.aspx" Font-Underline="false">Log In</asp:HyperLink></li>
                                <li>
                                    <asp:LinkButton ID="profileLink" runat="server" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" Visible="false">
                                        <li class="dropdown">
                                        <asp:ImageButton ID="ImageButton1" runat="server" width="40px" Height="40px" style="margin-top:-10px; margin-bottom:-15px"/>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </li>
                                    </asp:LinkButton>
                                </li>
                            </ul>
                        </div>
            </div>
        </div>
    </div>
    <section id="pricing-table">
            <div class="container">
                <div class="row">
                    <div class="pricing">
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="pricing-table">
                                <div class="pricing-header">
                                    <p class="pricing-title">Individual Pro</p>
                                    <p class="pricing-rate"><sup>Crux</sup> SP <span>A/C</span></p>
                                    <a href="Registration/SPReg.aspx" class="btn btn-custom">Sign up as an Individual</a>
                                </div>

                                <div class="pricing-list">
                                    <ul>
                                        <li><i class="fa fa-info"></i>I provide services on my own!</li>
                                        <li><i class="fa fa-envelope"></i>1,000 requests</li>
                                        <li><i class="fa fa-signal"></i><span>limited</span> features</li>
                                        <li><i class="fa fa-user"></i><span>limited</span> Hires</li>
                                        <li><i class="fa fa-smile-o"></i>5% Commission Quotes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="pricing-table">
                                <div class="pricing-header">
                                    <p class="pricing-title">Business Org</p>
                                    <p class="pricing-rate"><sup>Crux</sup> BSP <span>A/C</span></p>
                                    <a href="Registration/Registration-Business.aspx" class="btn btn-custom">Sign up as a Business</a>
                                </div>

                                <div class="pricing-list">
                                    <ul>
                                        <li><i class="fa fa-info"></i>We are a business providing services!</li>
                                        <li><i class="fa fa-envelope"></i>10,000 requests</li>
                                        <li><i class="fa fa-signal"></i><span>unlimited</span> features</li>
                                        <li><i class="fa fa-user"></i><span>unlimited</span> employee</li>
                                        <li><i class="fa fa-smile-o"></i>first 10 hires free</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="pricing-table">
                                <div class="pricing-header">
                                    <p class="pricing-title">Service Requestor</p>
                                    <p class="pricing-rate"><sup>Crux</sup> SR <span>A/C</span></p>
                                    <a href="Registration/Requestor_reg.aspx" class="btn btn-custom">Sign up as a Requestor</a>
                                </div>

                                <div class="pricing-list">
                                    <ul>
                                        <li><i class="fa fa-info"></i>I want to find the right Pro!</li>
                                        <li><i class="fa fa-envelope"></i>10,0000 requests</li>
                                        <li><i class="fa fa-signal"></i><span>unlimited</span> features</li>
                                        <li><i class="fa fa-user"></i><span>unlimited</span> notification</li>
                                        <li><i class="fa fa-smile-o"></i>totally free</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<div class="container">
    <div class="row" style="text-align:center">
        <p>Already have an account? <span><a href="@Url.Action("Login","Account")">Log in</a></span></p>
    </div>
</div>
<footer>
            <hr />
            <div class="container">
                <div class="col-md-6">
                    <img src="../Content/Images/Logo/logo.fw.png" />
                    <p>@2014 cruxServices, Inc.</p>
                    <i class="fa fa-twitter-square fa-2x"></i>
                    <i class="fa fa-google-plus-square fa-2x"></i>
                    <i class="fa fa-facebook-square fa-2x"></i>
                    <i class="fa fa-linkedin-square fa-2x"></i>
                    <i class="fa fa-reddit-square fa-2x"></i>
                </div>
                <div class="col-md-6">
                    <span>Bla</span>
                </div>
            </div>
        </footer>
</body>
</html>
