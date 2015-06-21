<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusinessProfile.aspx.cs" Inherits="cruxServicesWeb.Profiles.BusinessProfile" MaintainScrollPositionOnPostback="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile-Business</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />
    <link href="assets/js/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="../Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <link href="../Content/QuotationPage/SimplifiedQuotationStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section id="container">
            <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
            <!--header start-->
            <header class="header black-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>
                <!--logo start-->
                <a href="../Default.aspx" class="logo">
                    <img src="../Content/LandingPage/img/logogreen.fw.png" style="margin-top: -7px;" /></a>

                <!--logo end-->
                <div class="nav notify-row" id="top_menu">
                    <!--  notification start -->
                    <ul class="nav top-menu">
                        <!-- settings start -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-theme">4</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 4 pending tasks</p>
                                </li>
                                <li>
                                    <asp:Repeater ID="myProbNotityRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-12">
                                                <a href="RequestorProfile.aspx#pendingHire">
                                                    <div class="task-info">
                                                        <div class="desc">You Sent <%# Eval("spUsrName")%> a Request</div>
                                                        <div class="desc">Stating that <%# Eval("itemName")%> needs attention.</div>
                                                        <div class="perecnt">Hire Status: <%# Eval("hStatus")%></div>
                                                        <div class="perecnt"><%# Eval("quoteRequirement")%></div>
                                                    </div>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </li>
                                <li class="external">
                                    <a href="#">See All Tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- settings end -->
                        <!-- inbox dropdown start-->
                        <li id="header_inbox_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-theme">5</span>
                            </a>
                            <ul class="dropdown-menu extended inbox">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 5 new messages</p>
                                </li>

                                <li>
                                    <a href="index.html#">See all messages</a>
                                </li>
                            </ul>
                        </li>
                        <!-- inbox dropdown end -->
                    </ul>
                    <!--  notification end -->
                </div>
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                        <li>
                            <asp:Button ID="BtnLogOut" runat="server" Text="Logout" CssClass="logout" OnClick="BtnLogOut_Click" /></li>
                    </ul>
                </div>
            </header>
            <!--header end-->

            <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">

                        <p class="centered">
                            <a href="RequestorProfile.aspx">
                                <asp:Image ID="ProIcon" CssClass="img-circle" Width="60" runat="server" /></a>
                        </p>
                        <h5 class="centered">
                            <asp:Label ID="NamePro" runat="server"></asp:Label></h5>
                        </h5>

                    <li class="mt">
                        <a href="BusinessrProfile.aspx" class="active">
                            <i class="fa fa-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-book"></i>
                                <span>Manage Information</span>
                            </a>
                            <ul class="sub">
                                <li><a href="BusinessProfile.aspx#changeInfo">Change Information</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-cogs"></i>
                                <span>Manage Employees</span>
                            </a>
                            <ul class="sub">
                                <li><a href="BusinessProfile.aspx#employeeList">List of Employees</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-desktop"></i>
                                <span>History</span>
                            </a>
                            <ul class="sub">
                                <li><a href="RequestorProfile.aspx#completedHire">Hire History</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--sidebar end-->

            <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
            <!--main content start-->
            <section id="main-content">
                <section class="wrapper site-min-height">
                    <div id="dashboard" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3>Dash</h3>
                            <hr />
                            <!-- /row mt -->
                            <div class="row mtbox">
                                <div class="col-md-2 col-sm-2 col-md-offset-5 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-star"></span>
                                        <p>Overall Average Rating</p>
                                        <h3>
                                            <asp:Label ID="LblBay" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Calculated Using Our Proprietary Rating Algorithm</p>
                                </div>
                            </div>
                            <div class="row mtbox">
                                <div class="col-md-2 col-sm-2 col-md-offset-1 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-clock-o"></span>
                                        <p>Timeliness</p>
                                        <h3>
                                            <asp:Label ID="LblTime" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes Your Business's Speed of Service</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-money"></span>
                                        <p>Cost Effectiveness</p>
                                        <h3>
                                            <asp:Label ID="LblCost" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes Your Business's Cost Savings Services</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-trophy"></span>
                                        <p>Quality of Work</p>
                                        <h3>
                                            <asp:Label ID="LblQOW" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes Your Business's Overall Service Quality</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-wrench"></span>
                                        <p>Reliability of Finish</p>
                                        <h3>
                                            <asp:Label ID="LblROF" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes How Well Your Business's Service Finish is</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-unlock"></span>
                                        <p>Problem Resolution</p>
                                        <h3>
                                            <asp:Label ID="LblPR" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes How Well Your Business Pros Tackle a Given Problem</p>
                                </div>

                            </div>
                            <div class="col-md-4 mb">
                                <!-- WHITE PANEL - TOP USER -->
                                <div class="white-panel pn">
                                    <div class="white-header">
                                        <h5>Business Hire Statistics</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h3>Completed</h3>
                                            <i class="fa fa-5x fa-check"></i>
                                            <h2>4</h2>
                                        </div>
                                        <div class="col-md-6">
                                            <h3>Pending</h3>
                                            <i class="fa fa-5x fa-spinner"></i>
                                            <h2>1</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /col-md-4 -->
                            <div class="col-md-4 mb">
                                <div class="darkblue-panel pn">
                                    <div class="darkblue-header">
                                        <h5>Most Productive Pro</h5>
                                    </div>
                                    <div class="row">
                                        <h3>Pro UserName</h3>
                                    </div>
                                    <div class="row">
                                        <h1>Peter</h1>
                                    </div>
                                    <footer>
                                        <h5>3 jobs complete</h5>
                                    </footer>
                                </div>
                            </div>
                            <!-- /col-md-4 -->
                        </div>
                    </div>
                    <div id="changeInfo" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Change Personal Information</h3>
                            <hr />
                            <div id="formPInfo" runat="server">
                                <div class="col-md-6 col-sm-6">
                                    <div class="showback">
                                        <h4>
                                            <i class="fa fa-angle-right"></i>
                                            Business Information
                                        </h4>
                                        <div class="form-horizontal">
                                            <p class="centered">
                                                <asp:Image ID="ProIcon1" CssClass="img-circle" Width="60" runat="server" />
                                            </p>
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label1" runat="server" Text="Business Name" CssClass="control-label"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtFName" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtAdd" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="showback">
                                        <h4>
                                            <i class="fa fa-angle-right"></i>
                                            Contact Information
                                        </h4>
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label7" runat="server" Text="Tele Number" CssClass="control-label"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtTele" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label8" runat="server" Text="Mobile Number"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="showback">
                                        <h4>
                                            <i class="fa fa-angle-right"></i>
                                            Update
                                        </h4>
                                        <asp:Button ID="BtnUpdate" runat="server" Text="Update All" CssClass="form-control btn btn-success" OnClick="BtnUpdate_Click" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="showback">
                                        <h4>
                                            <i class="fa fa-angle-right"></i>
                                            Business Experience
                                        </h4>
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label12" runat="server" Text="The Firm's Description" CssClass="control-label"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="ProDes" runat="server" CssClass="form-control" TextMode="MultiLine" Height="70px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="employeeList" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">List of Employees</h3>
                            <div class="col-md-12 col-sm-12">
                                <div class="showback">
                                    <h4>
                                        <i class="fa fa-angle-right"></i>
                                        List
                                    </h4>
                                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="spUsrName" DataSourceID="emplistSource" InsertItemPosition="LastItem">

                                        <EditItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Image ID="spProPicLabel" runat="server" ImageUrl='<%#"../"+Eval("spProPic") %>' Width="40px" Height="40px" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spFirstNameLabel" runat="server" Text='<%# Eval("spFirstName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spLastNameLabel" runat="server" Text='<%# Eval("spLastName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spSpecialtyLabel" runat="server" Text='<%# Eval("spSpecialty") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="spTelephoneTextBox" runat="server" Text='<%# Bind("spTelephone") %>' TextMode="Number" MaxLength="10" CssClass="form-control" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="spMobileTextBox" runat="server" Text='<%# Bind("spMobile") %>' TextMode="Number" MaxLength="10" CssClass="form-control" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spBaynesianRatingLabel" runat="server" Text='<%# Eval("spBaynesianRating") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="spDescriptionTextBox" runat="server" Text='<%# Bind("spDescription") %>' TextMode="MultiLine" Rows="2" CssClass="form-control" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="spChargeHourlyTextBox" runat="server" Text='<%# Bind("spChargeHourly") %>' TextMode="Number" MaxLength="10" CssClass="form-control" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="spChargeDailyTextBox" runat="server" Text='<%# Bind("spChargeDaily") %>' TextMode="Number" MaxLength="10" CssClass="form-control" />
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="spStatusTextBox" runat="server" Text='<%# Bind("spStatus") %>' CssClass="form-control">
                                                        <asp:ListItem>Available</asp:ListItem>
                                                        <asp:ListItem>Deactivate</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                                </td>
                                            </tr>
                                        </EditItemTemplate>
                                        <EmptyDataTemplate>
                                            <table runat="server" style="">
                                                <tr>
                                                    <td>No data was returned.</td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <ItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Image ID="spProPicLabel" runat="server" ImageUrl='<%#"../"+Eval("spProPic") %>' Width="40px" Height="40px" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spFirstNameLabel" runat="server" Text='<%# Eval("spFirstName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spLastNameLabel" runat="server" Text='<%# Eval("spLastName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spSpecialtyLabel" runat="server" Text='<%# Eval("spSpecialty") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spTelephoneLabel" runat="server" Text='<%# Eval("spTelephone") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spMobileLabel" runat="server" Text='<%# Eval("spMobile") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spBaynesianRatingLabel" runat="server" Text='<%# Eval("spBaynesianRating") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spDescriptionTextBox" runat="server" Text='<%# Eval("spDescription") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spChargeHourlyLabel" runat="server" Text='<%# Eval("spChargeHourly") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spChargeDailyLabel" runat="server" Text='<%# Eval("spChargeDaily") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="spStatusLabel" runat="server" Text='<%# Eval("spStatus") %>' />
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="ViewProfile" runat="server" Text="View Profile" PostBackUrl='<%# string.Format("SPProfile.aspx?spUsrName={0}", Eval("spUsrName")) %>' />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <table runat="server">
                                                <tr runat="server" style="margin-bottom: 10px">
                                                    <td runat="server" style="">
                                                        <asp:DataPager ID="DataPager1" runat="server">
                                                            <Fields>
                                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" ButtonCssClass="btn btn-default" />
                                                            </Fields>
                                                        </asp:DataPager>
                                                    </td>
                                                </tr>
                                                <tr runat="server">
                                                    <td runat="server">
                                                        <table id="itemPlaceholderContainer" runat="server" border="0" style="" class="table table-responsive table-bordered col-md-12">
                                                            <tr runat="server">
                                                                <th runat="server" style="width: 40px">Pic</th>
                                                                <th runat="server">FName</th>
                                                                <th runat="server">LName</th>
                                                                <th runat="server">Specialty</th>
                                                                <th runat="server">Tele</th>
                                                                <th runat="server">Mobile</th>
                                                                <th runat="server">Rating</th>
                                                                <th runat="server">Description</th>
                                                                <th runat="server">Hourly Price</th>
                                                                <th runat="server">Daily Price</th>
                                                                <th runat="server">Status</th>
                                                                <th runat="server">Edit</th>
                                                            </tr>
                                                            <tr runat="server" id="itemPlaceholder">
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </LayoutTemplate>
                                        <InsertItemTemplate>
                                            <table class="col-md-12 ">
                                                <tr>
                                                    <h4>
                                                        <i class="fa fa-angle-right"></i>
                                                        Insert New Business Service Provider
                                                    </h4>
                                                </tr>
                                            </table>
                                            <table class="col-md-6 table-bordered">
                                                <tr>
                                                    <td>
                                                        <h5>Login Info</h5>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 15px">
                                                        <label>User Name</label>
                                                        <asp:TextBox ID="spUsrNameTextBox" runat="server" Text='<%# Bind("spUsrName") %>' CssClass="form-control" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Business User Name</label>
                                                        <asp:TextBox ID="bUsrNameTextBox" runat="server" Text='<%# Bind("bUsrName") %>' CssClass="form-control" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Password</label>
                                                        <asp:TextBox ID="spPassTextBox" runat="server" Text='<%# Bind("spPass") %>' CssClass="form-control" TextMode="Password" />
                                                    </td>
                                                </tr>
                                            </table>
                                                <table class="col-md-6 table-bordered">
                                                <tr>
                                                    <td>
                                                        <h5>Experience Info</h5>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 15px">
                                                        <label>Specialty</label>
                                                        <asp:TextBox ID="spSpecialtyTextBox" runat="server" Text='<%# Bind("spSpecialty") %>' CssClass="form-control" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Description</label>
                                                        <asp:TextBox ID="spDescriptionTextBox" runat="server" Text='<%# Bind("spDescription") %>' CssClass="form-control" TextMode="MultiLine"/>
                                                    </td>
                                                </tr>
                                            </table>
                                            <table class="col-md-6 table-bordered">
                                                <tr>
                                                    <td>
                                                        <h5>Personal Info</h5>
                                                    </td>
                                                </tr>
                                                <tr>

                                                    <td style="padding: 15px">
                                                        <label>First Name</label>
                                                        <asp:TextBox ID="spFirstNameTextBox" runat="server" Text='<%# Bind("spFirstName") %>' CssClass="form-control" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Last Name</label>
                                                        <asp:TextBox ID="spLastNameTextBox" runat="server" Text='<%# Bind("spLastName") %>' CssClass="form-control" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Location</label>
                                                        <asp:TextBox ID="spLocationTextBox" runat="server" Text='<%# Bind("spLocation") %>' CssClass="form-control" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 15px">
                                                        <label>DOB</label>
                                                        <asp:TextBox ID="spDOBTextBox" runat="server" Text='<%# Bind("spDOB") %>' CssClass="form-control" TextMode="Date" />
                                                    </td>
                                                </tr>
                                                </table>
                                            <table class="col-md-6 table-bordered">
                                                <tr>
                                                    <td>
                                                        <h5>Contact Info</h5>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 15px">
                                                        <label>Telephone</label>
                                                        <asp:TextBox ID="spTelephoneTextBox" runat="server" Text='<%# Bind("spTelephone") %>' CssClass="form-control" TextMode="Number" MaxLength="10" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Mobile</label>
                                                        <asp:TextBox ID="spMobileTextBox" runat="server" Text='<%# Bind("spMobile") %>' CssClass="form-control" TextMode="Number" MaxLength="10" />
                                                    </td>
                                                </tr>
                                                </table>
                                            <table class="col-md-6 table-bordered">
                                                <tr>
                                                    <td>
                                                        <h5>Pricing Info</h5>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 15px">
                                                        <label>Hourly Price</label>
                                                        <asp:TextBox ID="spChargeHourlyTextBox" runat="server" Text='<%# Bind("spChargeHourly") %>' CssClass="form-control" TextMode="Number" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Daily Price</label>
                                                        <asp:TextBox ID="spChargeDailyTextBox" runat="server" Text='<%# Bind("spChargeDaily") %>' CssClass="form-control" TextMode="Number" />
                                                    </td>
                                                    <td style="padding: 15px">
                                                        <label>Status</label>
                                                        <asp:TextBox ID="spStatusTextBox" runat="server" Text='<%# Bind("spStatus") %>' CssClass="form-control" />
                                                    </td>
                                                </tr>
                                            </table>
                                             <table class="col-md-6 table-bordered">
                                                 <tr>
                                                    <td style="padding: 15px">
                                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
                                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-default" />
                                                    </td>
                                                </tr>
                                                 </table>
                                        </InsertItemTemplate>
                                    </asp:ListView>
                                    <asp:SqlDataSource ID="emplistSource" runat="server" ConnectionString="<%$ ConnectionStrings:cruxDB %>" DeleteCommand="DELETE FROM [ServiceProvider] WHERE [spUsrName] = @spUsrName" InsertCommand="INSERT INTO [ServiceProvider] ([spUsrName], [bUsrName], [spPass], [spFirstName], [spLastName], [spLocation], [spSpecialty], [spDOB], [spTelephone], [spMobile], [spDescription], [spBaynesianRating], [spChargeHourly], [spChargeDaily], [spProPic], [spStatus]) VALUES (@spUsrName, @bUsrName, @spPass, @spFirstName, @spLastName, @spLocation, @spSpecialty, @spDOB, @spTelephone, @spMobile, @spDescription, @spBaynesianRating, @spChargeHourly, @spChargeDaily, @spProPic, @spStatus)" SelectCommand="SELECT * FROM [ServiceProvider] WHERE ([bUsrName] = @bUsrName)" UpdateCommand="UPDATE [ServiceProvider] SET [spTelephone] = @spTelephone, [spMobile] = @spMobile, [spDescription] = @spDescription, [spChargeHourly] = @spChargeHourly, [spChargeDaily] = @spChargeDaily, [spStatus] = @spStatus WHERE [spUsrName] = @spUsrName">
                                        <DeleteParameters>
                                            <asp:Parameter Name="spUsrName" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="spUsrName" Type="String" />
                                            <asp:Parameter Name="bUsrName" Type="String" />
                                            <asp:Parameter Name="spPass" Type="String" />
                                            <asp:Parameter Name="spFirstName" Type="String" />
                                            <asp:Parameter Name="spLastName" Type="String" />
                                            <asp:Parameter Name="spLocation" Type="String" />
                                            <asp:Parameter Name="spSpecialty" Type="String" />
                                            <asp:Parameter Name="spDOB" Type="DateTime" />
                                            <asp:Parameter Name="spTelephone" Type="String" />
                                            <asp:Parameter Name="spMobile" Type="String" />
                                            <asp:Parameter Name="spDescription" Type="String" />
                                            <asp:Parameter Name="spBaynesianRating" Type="Decimal" />
                                            <asp:Parameter Name="spChargeHourly" Type="Decimal" />
                                            <asp:Parameter Name="spChargeDaily" Type="Decimal" />
                                            <asp:Parameter Name="spProPic" Type="String" />
                                            <asp:Parameter Name="spStatus" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="bUsrName" SessionField="BSP" Type="String" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="spTelephone" Type="String" />
                                            <asp:Parameter Name="spMobile" Type="String" />
                                            <asp:Parameter Name="spDescription" Type="String" />
                                            <asp:Parameter Name="spChargeHourly" Type="Decimal" />
                                            <asp:Parameter Name="spChargeDaily" Type="Decimal" />
                                            <asp:Parameter Name="spStatus" Type="String" />
                                            <asp:Parameter Name="spUsrName" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="completedHire" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Hire History</h3>

                        </div>
                    </div>
                </section>
                <!--/wrapper -->
            </section>
            <!-- /MAIN CONTENT -->

            <!--main content end-->
            <!--footer start-->
            <footer class="site-footer">
                <div class="text-center">
                    2014 - CruxServices
                </div>
            </footer>
            <!--footer end-->
        </section>
        <!--/.fluid-container-->
        <script src="historyTimeline/js/hTimeLinemain.js"></script>
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
        <script src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="assets/js/common-scripts.js"></script>
        <script src="assets/js/fancybox/jquery.fancybox.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
        <script type="text/javascript">
            $(function () {
                //    fancybox
                jQuery(".fancybox").fancybox();
            });

        </script>

    </form>
</body>
</html>
