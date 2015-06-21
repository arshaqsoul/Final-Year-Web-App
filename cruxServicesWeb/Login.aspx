<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cruxServicesWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LoginPage/loginstyle.css" rel="stylesheet" />
    <link href="Profiles/assets/css/style-responsive.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-fixed-top" style="background-color: rgba(255, 255, 255, 1)">
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
    <div id="loginBody">
	  	<div class="container">
	  	
		      <div class="form-login">
		        <h2 class="form-login-heading">sign in now</h2>
		        <div class="login-wrap">
                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control" placeholder="UserName"></asp:TextBox>
		            <br>
                    <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a> Forgot Password?</a>
		
		                </span>
		            </label>
		            <asp:Button CssClass="btn btn-theme btn-block fa fa-lock" runat="server" Text="LOGIN" id="BtnLogin" OnClick="BtnLogin_Click"></asp:Button>
                    <asp:Label ID="LblLog" runat="server" Text="" CssClass="form-control"></asp:Label>
		            <hr>
		            
		            <div class="socialLogin centered">
		            <p>or you can sign in via your social network</p>
		                <button class="btn btn-facebook" type="submit" style="background-color:#34495E; color:white"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-twitter" type="submit" style="background-color:#34495E; color:white"><i class="fa fa-twitter"></i> Twitter</button>
		            </div>
		            <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="Signup.aspx">
		                    Create an account
		                </a>
		            </div>
		
		        </div>
		
		
		      </div>	  	
	  	
	  	</div>
	  </div>
</form>
</body>
</html>
