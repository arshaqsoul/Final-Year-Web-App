<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestorProfile.aspx.cs" Inherits="cruxServicesWeb.Profiles.RequestorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Requestor Profile</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="historyTimeline/css/hTimelinestyle.css" rel="stylesheet" />
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
                    <ul class="nav top-menu">=
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
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-star"></i>
                                <span class="badge bg-theme">1</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 1 pending tasks</p>
                                </li>
                                <li>
                                    <asp:Repeater ID="myRateRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-12">
                                                <a href="RequestorProfile.aspx#feedback">
                                                    <div class="task-info">
                                                        <div class="desc">Please Rate <%# Eval("spUsrName")%> for his services</div>
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
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-check"></i>
                                <span class="badge bg-theme">1</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 1 pending tasks</p>
                                </li>
                                <li>
                                    <asp:Repeater ID="myVisitRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-12">
                                                <a href="RequestorProfile.aspx#inprogress">
                                                    <div class="task-info">
                                                        <div class="desc"><%# Eval("spUsrName")%> will be visiting you</div>
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
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                                <i class="fa fa-money"></i>
                                <span class="badge bg-theme">1</span>
                            </a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <div class="notify-arrow notify-arrow-green"></div>
                                <li>
                                    <p class="green">You have 1 pending tasks</p>
                                </li>
                                <li>
                                    <asp:Repeater ID="myQuoteRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-12">
                                                <a href="RequestorProfile.aspx#pendingQuotes">
                                                    <div class="task-info">
                                                        <div class="desc"><%# Eval("spUsrName")%> Sent You A Quote</div>
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
                            <a href="RequestorProfile.aspx">
                                <asp:Image ID="ProIcon" CssClass="img-circle" Width="60" runat="server" /></a>
                        </p>
                        <h5 class="centered">
                            <asp:Label ID="NamePro" runat="server"></asp:Label></h5>
                        </h5>

                    <li class="mt">
                        <a href="RequestorProfile.aspx" class="active">
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
                                <li><a href="RequestorProfile.aspx#changeInfo">Change Information</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-cogs"></i>
                                <span>Hire Requests</span>
                            </a>
                            <ul class="sub">
                                <li><a href="RequestorProfile.aspx#pendingHire">Pending Hires</a></li>
                                <li><a href="RequestorProfile.aspx#inprogress">Hires In Progress</a></li>
                                <li><a href="RequestorProfile.aspx#feedback">Provide Feedback</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;">
                                <i class="fa fa-cogs"></i>
                                <span>Quotations</span>
                            </a>
                            <ul class="sub">
                                <li><a href="RequestorProfile.aspx#pendingQuotes">Recieved Quotations</a></li>
                                <li><a href="RequestorProfile.aspx#quoteStat">Accepted/Rejected Quotes</a></li>
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
                            <div class="col-md-4 mb">
                                <div class="darkblue-panel pn"  style="padding:40px">
                                    <asp:Button ID="Button1" runat="server" Text="Search for Service Providers" CssClass="form-control btn btn-success" Height="160px" OnClick="Button1_Click"/>
                                </div>
                            </div>
                            <!-- /col-md-4 -->
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
                                            Update
                                        </h4>
                                        <asp:Button ID="BtnUpdate" runat="server" Text="Update All" CssClass="form-control btn btn-success" OnClick="BtnUpdate_Click"/>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div id="pendingHire" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Pending Hires</h3>
                            <asp:ListView ID="pendingHireLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have not consulted any service provider with a problem yet...</td>
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
                                        <div class="showback" style="padding: 20px">
                                            <h4 style="text-align: center">You Requested <%# Eval("spUsrName")%> for help</h4>
                                            <div class="row" style="text-align: center">
                                                <h5>The Problem</h5>
                                                <p>Your Item Name is <%# Eval("itemName")%></p>
                                                <p>The Problem is: <%# Eval("itemProb")%></p>
                                                <p>It is in the <%# Eval("whichPartofTheHouse")%></p>
                                                <p><%# Eval("quoteRequirement")%></p>
                                                <p>You want <%# Eval("spUsrName")%> to fix it by <%# Eval("toCompleteDate")%></p>
                                                <p>The description you gave. <%# Eval("probDescription")%> </p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="inprogress" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">On Going Visits</h3>
                            <asp:ListView ID="inProgressLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You do not have any pro visiting you yet...</td>
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
                                        <div class="showback" style="padding: 20px">
                                            <h4 style="text-align: center"><%# Eval("spUsrName")%> will be visiting you</h4>
                                            <h4  style="text-align: center">You Can call Him on <%# Eval("spMobile")%> or <%# Eval("spTelephone")%></h4>
                                            <div class="row" style="text-align: center">
                                                <h5>Visit Date</h5>
                                                <p>The visit starts on the <%# Eval("unStartDate")%></p>
                                                <p>finishes on the <%# Eval("unEndDate")%></p>
                                                <p><%# Eval("spUsrName")%> will try to solve your problem with in these dates</p>
                                                <p>Please await contact from the service provider</p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="feedback" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Give Feedback</h3>
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
                                    <div class="col-md-4">
                                        <div class="darkblue-panel">
                                            <div class="darkblue-header">
                                                <h5>You Requested <%# Eval("spUsrName")%> for help</h5>
                                            </div>
                                            <div class="row" style="padding-left:15px; padding-right:15px">
                                                <p style="color:white">The consultation was regarding <%# Eval("itemName")%> that was <%# Eval("itemProb")%>. You described this as <%# Eval("probDescription")%></p>
                                            </div>
                                            <div class="row" style="padding-left:15px; padding-right:15px; padding-bottom:15px">
                                                <h5>Please provide feedback</h5>
                                                <p style="color:white">This will be used to evaluate the service provider and update his rating</p>
                                                <asp:Button ID="BtnFeedback" runat="server" Text="Provide Feedback" CssClass="btn btn-default" CommandName="Feedback" CommandArgument='<%# Eval("hID").ToString()+ "," +Eval("spUsrName")%>' style="background-color: #1ABC9C" ForeColor="White" />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="pendingQuotes" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Recieved Quotations</h3>
                            <asp:ListView ID="SentQuoteLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You have not received any quotes recently..</td>
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
                                                <h4 style="text-align:center"><%# Eval("spUsrName")%> Sent You A Quote</h4>
                                            <div class="row" style="text-align:center">
                                                <h5><%# Eval("spUsrName")%> Quoted Rs.(<%# Eval("quoteValue")%>)</h5>
                                                <p>Stating:<%# Eval("quoteDesc")%></p>
                                                <p>Please await respone from <%# Eval("spUsrName")%></p>
                                            </div>
                                            <div class="">
                                <asp:Button ID="quoteBtn" runat="server" class="btn btn-default" Text="ViewQuote" CommandName="Quote" CommandArgument='<%# Eval("spUsrName").ToString()+ "," +Eval("hID").ToString()+ "," +Eval("quoteID").ToString()+ "," +Eval("pID") %>'></asp:Button>
                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <div id="quoteStat" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Quotation Status</h3>
                            <h4>Accepted Quotes</h4>
                            <asp:ListView ID="QuoteAccLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You haven't Accepted any quotes yet..</td>
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
                                                <h4 style="text-align:center">You Accepted <%# Eval("spUsrName")%>'s Quote</h4>
                                            <div class="row" style="text-align:center">
                                                <h5><%# Eval("spUsrName")%> Quoted Rs.(<%# Eval("quoteValue")%>)</h5>
                                                <p>Stating:<%# Eval("quoteDesc")%></p>
                                                <p>You can contact <%# Eval("spUsrName")%> on <%# Eval("spMobile")%> and/or <%# Eval("spTelephone")%></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                         </div>
                    </div>
                    <div id="completedHire" class="row">
                        <div class="col-md-12 col-sm-12">
                            <h3 style="margin-top: 75px">Hire History</h3>
                            <asp:ListView ID="HireHistoryLV" runat="server">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>You Do not have any completed hire history..</td>
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
                                                <h2>You Requested <%# Eval("spUsrName")%> for help</h2>
                                                <p>The consultation was regarding <%# Eval("itemName")%> that was <%# Eval("itemProb")%>. You described this as <%# Eval("probDescription")%></p>
                                                <span class="cd-date"><%# Eval("toStartDate")%></span>
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
