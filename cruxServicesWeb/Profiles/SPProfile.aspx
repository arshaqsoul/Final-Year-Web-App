<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPProfile.aspx.cs" Inherits="cruxServicesWeb.Profiles.SPProfile" MaintainScrollPositionOnPostback="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Provider Profile</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />
    <link href="historyTimeline/css/hTimelinestyle.css" rel="stylesheet" />
    <link href="assets/js/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="../Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <link href="../Content/QuotationPage/SimplifiedQuotationStyle.css" rel="stylesheet" />
     <script type="text/javascript">
         function openHireAccept() {
             $('#myHireAccept').modal({ show: true });
         }
    </script>
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
                                <span class="badge bg-theme">1</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 1 pending tasks</p>
                                </li>
                                <li>
                                    <asp:Repeater ID="PendingProbNotityRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-12">
                                            <a href="SPProfile.aspx#pendingHire">
                                                <div class="task-info">
                                                    <div class="desc"><%# Eval("srUsrName")%> needs your help. </div>
                                                    <div class="desc"><%# Eval("itemName")%> needs attention.</div>
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
                    </ul>
                    <!--  notification end -->
                </div>
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                        <li><asp:Button ID="BtnLogOut" runat="server" Text="Logout" CssClass="logout" OnClick="BtnLogOut_Click"/></li>
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
                            <a href="SPProfile.aspx">
                                <asp:Image ID="ProIcon" CssClass="img-circle" Width="60" runat="server" /></a>
                        </p>
                        <h5 class="centered">
                            <asp:Label ID="NamePro" runat="server"></asp:Label></h5>

                        <li class="mt">
                            <a href="SPProfile.aspx" class="active">
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
                                <li><a href="SPProfile.aspx#changeInfo">Change Information</a></li>
                                <li><a href="SPProfile.aspx#mngPortfolio">Manage Portfolio</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-cogs"></i>
                                <span>Quotation Requests</span>
                            </a>
                            <ul class="sub">
                                <li><a href="SPProfile.aspx#pendingQuotes">Pending Quotations</a></li>
                                <li><a href="SPProfile.aspx#quotesStatus">Status of Sent Quotations</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-desktop"></i>
                                <span>Recent Activity</span>
                            </a>
                            <ul class="sub">
                                <li><a href="SPProfile.aspx#pendingHire">Pending Hires</a></li>
                                <li><a href="SPProfile.aspx#inProgressHire">In Progress Hires</a></li>
                                <li><a href="SPProfile.aspx#completedHire">Completed Hires</a></li>
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
                            <div class="row mtbox">
                                <div class="col-md-2 col-sm-2 col-md-offset-5 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-star"></span>
                                        <p>Overall Rating</p>
                                        <h3><asp:Label ID="LblBay" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Calculated Using Our Proprietary Rating Algorithm</p>
                                </div>
                            </div>
                            <div class="row mtbox">
                                <div class="col-md-2 col-sm-2 col-md-offset-1 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-clock-o"></span>
                                        <p>Timeliness</p>
                                        <h3><asp:Label ID="LblTime" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes Your Speed of Service</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-money"></span>
                                        <p>Cost Effectiveness</p>
                                        <h3><asp:Label ID="LblCost" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes Your Cost Savings Services</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-trophy"></span>
                                        <p>Quality of Work</p>
                                        <h3><asp:Label ID="LblQOW" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes Your Overall Service Quality</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-wrench"></span>
                                        <p>Reliability of Finish</p>
                                        <h3><asp:Label ID="LblROF" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes How Well Your Service's Finish is</p>
                                </div>
                                <div class="col-md-2 col-sm-2 box0">
                                    <div class="box1">
                                        <span class="fa fa-5x fa-unlock"></span>
                                        <p>Problem Resolution</p>
                                        <h3><asp:Label ID="LblPR" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                    <p>Denotes How Well You Tackle a Given Problem</p>
                                </div>

                            </div>
                            <!-- /row mt -->

                            <div class="col-md-4 mb">
                                <!-- WHITE PANEL - TOP USER -->
                                <div class="white-panel pn">
                                    <div class="white-header">
                                        <h5>Hire Statistics</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h3>Completed</h3>
                                            <i class="fa fa-5x fa-check"></i>
                                            <h2>5</h2>
                                        </div>
                                        <div class="col-md-6">
                                            <h3>Pending</h3>
                                            <i class="fa fa-5x fa-spinner"></i>
                                            <h2>0</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /col-md-4 -->
                            <div class="col-md-4 mb">
                                <div class="darkblue-panel pn">
                                    <div class="darkblue-header">
                                        <h5>Most Recent Hire</h5>
                                    </div>
                                    <div class="row">
                                        <h3>Requestor UserName</h3>
                                    </div>
                                    <div class="row">
                                        <h1>JohnMc</h1>
                                    </div>
                                    <footer>
                                        <h5>Fixed A Tap</h5>
                                    </footer>
                                </div>
                            </div>
                            <!-- /col-md-4 -->
                            <div class="col-md-4 mb">
                                <!-- WHITE PANEL - TOP USER -->
                                <div class="white-panel pn">
                                    <div class="white-header">
                                        <h5>Your Service Charge</h5>
                                    </div>
                                    <div class="row" style="margin-top: -20px">
                                        <div class="col-md-5">
                                            <h3>Rate/Hour</h3>
                                        </div>
                                        <div class="col-md-5 col-md-offset-2">
                                            <h3>Rate/Day</h3>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3">
                                            <p style="color: #1ABC9C; font-size: 50px; font-weight: 700; margin-top: -5px">Rs.</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-5" style="margin-top: -20px">
                                            <h3>
                                                <asp:Label ID="LblHours" runat="server"></asp:Label></h3>
                                        </div>
                                        <div class="col-md-5 col-md-offset-2" style="margin-top: -20px">
                                            <h3>
                                                <asp:Label ID="LblDay" runat="server"></asp:Label></h3>
                                        </div>
                                    </div>
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
                                            Personal Information
                                        </h4>
                                        <div class="form-horizontal">
                                            <p class="centered">
                                                <asp:Image ID="ProIcon1" CssClass="img-circle" Width="60" runat="server" />
                                            </p>
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="control-label"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtFName" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtLName" runat="server" CssClass="form-control"></asp:TextBox>
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
                                                    <asp:Label ID="Label8" runat="server" Text="mobile Number"></asp:Label>
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
                                            Market Yourself
                                        </h4>
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label12" runat="server" Text="Describe Yourself As A Pro" CssClass="control-label"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="ProDes" runat="server" CssClass="form-control" TextMode="MultiLine" Height="70px"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="showback">
                                        <h4>
                                            <i class="fa fa-angle-right"></i>
                                            Service Information
                                        </h4>
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label9" runat="server" Text="Core Speciality" CssClass="control-label"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:TextBox ID="TxtSpecialty" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <asp:Label ID="Label10" runat="server" Text="Service Tags"></asp:Label>
                                                </div>
                                                <div class="col-md-8">
                                                    <label class="label label-info">Fix Taps</label>
                                                    <label class="label label-info">Fix Pipes</label>
                                                    <label class="label label-info">Unclog Sink</label>
                                                    <label class="label label-info">Repair Leaks</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-3">
                                                    <asp:Label ID="Label11" runat="server" Text="Pricing"></asp:Label>
                                                </div>
                                                <div class="col-md-4">
                                                    Rs.<asp:TextBox ID="TxtPriceHr" runat="server" CssClass="form-control"></asp:TextBox>/Hour
                                                </div>
                                                <div class="col-md-4">
                                                    Rs.<asp:TextBox ID="TxtPriceDay" runat="server" CssClass="form-control"></asp:TextBox>/Day
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
                                        <asp:Button ID="BtnUpdate" runat="server" Text="Update All" CssClass="form-control btn btn-success" OnClick="BtnUpdate_Click"/>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div id="mngPortfolio" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Manage Portfolio</h3>
                            <hr />
                             <asp:ListView ID="PortFolioLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You Have No Portfolio files to show..</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-md-3 col-sm-3" style="margin:2px">
                                <div class=" photo-wrapper">
                                    <div class="photo">
                                        <asp:ImageButton ID="ImageButton1" CssClass="img img-responsive" runat="server" ImageUrl='<%#"../"+Eval("fileURL") %>'/>
                                    </div>
                                </div>
                            </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="pendingQuotes" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Pending Quotation Requests</h3>
                            <asp:ListView ID="QuoteProbLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have not been requested for quotes yet</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="showback" style="padding:20px">
                                                <h4 style="text-align:center"><%# Eval("srUsrName")%> Needs A Quote</h4>
                                            <div class="row" style="text-align:center">
                                                <h5>The Problem (<%# Eval("toStartDate")%>)</h5>
                                                <p>The Item Name is <%# Eval("itemName")%></p>
                                                <p>The Problem is: <%# Eval("itemProb")%></p>
                                                <p>It is in the <%# Eval("whichPartofTheHouse")%></p>
                                                <p><%# Eval("quoteRequirement")%></p>
                                                <p><%# Eval("srUsrName")%> wants it completed before <%# Eval("toCompleteDate")%></p>
                                                <p>Hope This Helps
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"../"+Eval("probFileUrl")%>' /></p>
                                                <p>Anyways, this is the description. <%# Eval("probDescription")%> </p>
                                            </div>
                                             <div class="">
                                <asp:Button ID="quoteBtn" runat="server" class="btn btn-default" Text="Create Quote" CommandName="Quote" CommandArgument='<%# Eval("srUsrName").ToString()+ "," +Eval("hID") %>'></asp:Button>
                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="quotesStatus" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Status Of Sent Quotations</h3>
                            <asp:ListView ID="SentQuoteLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have not sent any quotes recently..</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="showback" style="padding:20px">
                                                <h4 style="text-align:center">You Sent a Quote to <%# Eval("srUsrName")%></h4>
                                            <div class="row" style="text-align:center">
                                                <h5>You Quoted Rs.(<%# Eval("quoteValue")%>)</h5>
                                                <p>You Stated:<%# Eval("quoteDesc")%></p>
                                                <p>Please await respone from <%# Eval("srUsrName")%></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="pendingHire" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Pending Hires</h3>
                            <asp:ListView ID="pendingHireLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have not been consulted yet..</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="showback" style="padding:20px">
                                                <h4 style="text-align:center"><%# Eval("srUsrName")%> Wants Your Help</h4>
                                            <div class="row" style="text-align:center">
                                                <h5>The Problem (<%# Eval("toStartDate")%>)</h5>
                                                <p>The Item Name is <%# Eval("itemName")%></p>
                                                <p>The Problem is: <%# Eval("itemProb")%></p>
                                                <p>It is in the <%# Eval("whichPartofTheHouse")%></p>
                                                <p><%# Eval("quoteRequirement")%></p>
                                                <p><%# Eval("srUsrName")%> wants it completed before <%# Eval("toCompleteDate")%></p>
                                                <p>Hope This Helps
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"../"+Eval("probFileUrl")%>' /></p>
                                                <p>Anyways, this is the description. <%# Eval("probDescription")%> </p>
                                            </div>
                                            <div class="row" style="text-align:center">
                                                <asp:Button ID="BtnAccept" runat="server" Text="Accept Hire" style="background-color:#1ABC9C; color:white" CssClass="btn btn-lg" CommandName="Hire" CommandArgument='<%# Eval("toStartDate").ToString()+ "," +Eval("toCompleteDate").ToString()+ "," +Eval("quoteRequirement").ToString()+ "," +Eval("srUsrName").ToString()+ "," +Eval("hID") %>'/>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                        <div class="col-md-12 col-sm-12">
                            <h4>Pending Hires After Accepted Quotation</h4>
                            <asp:ListView ID="accquoteLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have no accepted quotations yet..</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="showback" style="padding:20px">
                                                <h4 style="text-align:center"><%# Eval("srUsrName")%> Accepted Your Quote</h4>
                                            <div class="row" style="text-align:center">
                                                <h5>The Problem (<%# Eval("toStartDate")%>)</h5>
                                                <p>The Item Name is <%# Eval("itemName")%></p>
                                                <p>The Problem is: <%# Eval("itemProb")%></p>
                                                <p>It is in the <%# Eval("whichPartofTheHouse")%></p>
                                                <p><%# Eval("quoteRequirement")%></p>
                                                <p><%# Eval("srUsrName")%> wants it completed before <%# Eval("toCompleteDate")%></p>
                                                <p>Hope This Helps
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"../"+Eval("probFileUrl")%>' /></p>
                                                <p>Anyways, this is the description. <%# Eval("probDescription")%> </p>
                                            </div>
                                            <div class="row" style="text-align:center">
                                                <asp:Button ID="BtnAccept" runat="server" Text="Accept Hire" style="background-color:#1ABC9C; color:white" CssClass="btn btn-lg" CommandName="Hire" CommandArgument='<%# Eval("toStartDate").ToString()+ "," +Eval("toCompleteDate").ToString()+ "," +Eval("quoteRequirement").ToString()+ "," +Eval("srUsrName").ToString()+ "," +Eval("hID") %>'/>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="inProgressHire" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">In Progress Hires</h3>
                            <asp:ListView ID="InprogHireLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have no hire in progress..</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="showback" style="padding:20px">
                                                <h4 style="text-align:center"><%# Eval("srUsrName")%>'s Hire is in progress</h4>
                                            <div class="row" style="text-align:center">
                                                <p><%# Eval("srUsrName")%> wants it completed before <%# Eval("toCompleteDate")%></p>
                                                <p>You stated visits from <%# Eval("unStartDate")%> to <%# Eval("unEndDate")%> to finish the job</p>
                                                <p>Please await contact from ><%# Eval("srUsrName")%> to your mobile or telephone line</p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="completedHire" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Completed Hires</h3>
                            <asp:ListView ID="CompletedHireLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You Do not have any completed hires with pending feedback</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <section id="cd-timeline" class="cd-container">
                                        <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture">
                                                <img src="img/cd-icon-picture.svg" alt="Picture">
                                            </div>
                                            <!-- cd-timeline-img -->
                                            <div class="cd-timeline-content">
                                                <h2>You helped <%# Eval("srUsrName")%></h2>
                                                <p>The consultation was regarding <%# Eval("itemName")%>. The Problem: <%# Eval("itemProb")%>.It was described as:<%# Eval("probDescription")%></p>
                                                <span class="cd-date"><%# Eval("toCompleteDate")%></span>
                                            </div>
                                            <!-- cd-timeline-content -->
                                        </div>
                                        <!-- cd-timeline-block -->
                                    </section>
                                    <!-- cd-timeline -->
                                </ItemTemplate>
                            </asp:ListView>
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

        <!--/Quotation Modal-->
        <div class="container" style="background-color: white">
            <!-- quoteModal -->
            <!-- hireAccept -->
            <div class="modal fade" id="myHireAccept" tabindex="-1" role="dialog" aria-labelledby="myPortModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width:500px; height:400px">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1ABC9C">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Hire Acceptance</h4>
                        </div>
                        <div class="modal-body" style="text-align:center">
                            <div class="row">
                                <div class="col-md-12" style="text-align:center">
                                    <asp:Label ID="TxthID" runat="server" Font-Size="1px"></asp:Label>
                                    <h3>Please Select A Visit Date</h3>
                                    <div class="col-md-12">
                                        <p>The requestor <span><asp:Label ID="LblsrName" runat="server"></asp:Label></span> starting from <br />
                                            <span><asp:Label ID="LblsDate" runat="server"></asp:Label></span> needs the problem completed by <br />
                                            <span><asp:Label ID="LbleDate" runat="server"></asp:Label></span>
                                        </p>
                                    </div>
                                    <div class="col-md-12">
                                        <p>Select a date to visit the Requestor</p>
                                        <p><i>The Sooner the better</i></p>
                                         <div class="form-group">
                                                <div class="col-md-6">
                                                    <label>Start Date</label>
                                                    <asp:TextBox ID="TxtStartDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                        <div class="form-group">
                                                <div class="col-md-6">
                                                    <label>End Date</label>
                                                    <asp:TextBox ID="TxtEndDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                        <asp:Label ID="LblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="BtnConfirm" CssClass="btn btn-default" style="background-color: #34495E; color: white" runat="server" Text="Confirm" OnClick="BtnConfirm_Click"/>
                            <asp:Button ID="BtnClose" CssClass="btn btn-default" data-dismiss="modal" runat="server" Text="Close"/>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script src="../Content/QuotationPage/Quotationscript.js"></script>
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
