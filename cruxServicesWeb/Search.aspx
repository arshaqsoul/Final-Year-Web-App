<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="cruxServicesWeb.Search" MaintainScrollPositionOnPostback="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Service Provider</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <link href="content/searchandfilterpage/css/reset.css" rel="stylesheet" />
    <link href="content/searchandfilterpage/css/style.css" rel="stylesheet" />
    <link href="Content/animate.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Content/SearchAndFilterPage/js/jquery.mixitup.min.js"></script>
    <script src="Content/SearchAndFilterPage/js/main.js"></script>
    <script src="Content/SearchAndFilterPage/js/modernizr.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false">
 </script> 

   <script type="text/javascript">
       $(document).ready(function () {
           var map;
           var elevator;
           var myOptions = {
               zoom: 11,
               center: new google.maps.LatLng(6.9215305, 79.8563022),
               mapTypeId: 'roadmap'
           };
           map = new google.maps.Map($('#map_canvas')[0], myOptions);

           var addresses = [<%=HiddenField1.Value%>];

           for (var x = 0; x < addresses.length; x++) {
               $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address=' + addresses[x] + '&sensor=false', null, function (data) {
                   var p = data.results[0].geometry.location
                   var latlng = new google.maps.LatLng(p.lat, p.lng);
                   new google.maps.Marker({
                       position: latlng,
                       map: map
                   });

               });
           }

       });
    </script>
    <style type="text/css">
        #map_canvas{
        width:auto; 
        height:700px;
        }
    </style>
    <style type="text/css">
        .ratingStar {
            position: relative; 
   width:50px;
   height:50px /* for IE 6 */
        }
        .ratingText {
            position: absolute; 
        }
    </style>
    <script type="text/javascript">
        function openMessage() {
            $('#myMessage').modal({ show: true });
        }
    </script>
    <script type="text/javascript">
        function openModal() {
            $('#myProbModal').modal({ show: true });
        }
    </script>
    <script type="text/javascript">
        function openModalPhone() {
            $('#myPhone').modal({ show: true });
        }
    </script>
    <script type="text/javascript">
        function openModalSign() {
            $('#myLogSignPop').modal({ show: true });
        }
    </script>
    <script type="text/javascript">
        function openModal1() {
            $('#myPortfolioModal').modal({ show: true });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <!--/.fluid-container-->
        <div class="container" style="background-color: white">
            <!-- probModal -->
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="modal fade" id="myProbModal" tabindex="-1" role="dialog" aria-labelledby="mymodallabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 800px">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #34495E">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Issue Explanation Form</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12">
                                <div class="row" style="text-align: center">
                                    <div class="col-md-4 col-md-offset-4">
                                        <asp:Image ID="Image1" runat="server" CssClass="thumbnail col-md-3" Width="50px" Height="50px" Style="margin-left: 5px" />
                                        <asp:Image ID="Image2" runat="server" CssClass="thumbnail col-md-3" Width="50px" Height="50px" Style="margin-left: 5px" />
                                        <asp:Image ID="Image3" runat="server" CssClass="thumbnail col-md-3" Width="50px" Height="50px" Style="margin-left: 5px" />
                                        <asp:Image ID="Image4" runat="server" CssClass="thumbnail col-md-3" Width="50px" Height="50px" Style="margin-left: 5px" />
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                <p style="text-align:center; margin-bottom:2px">Please fill in the following fields so that you could express your problem as clearly as possible to the selected service provider/s</p>
                                </div>
                            </div>
                            <div class="form-horizontal">
                            <div class="form-group">
                                <div class="col-md-6" style="margin-bottom: 2px; text-align: center"">
                                    <p>The Item Name:</p>
                                    <asp:TextBox ID="TxtItem" runat="server" Height="30px" CssClass="form-control" placeholder="Ex: Tap, Sink, TV or etc." ValidationGroup="Problem" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter an Item" ControlToValidate="TxtItem" ValidationGroup="Problem" EnableClientScript="true"></asp:RequiredFieldValidator>--%>
                                </div>
                                <div class="col-md-6" style="margin-bottom: 2px; text-align: center"">
                                    <p>Whats Wrong With It:</p>
                                    <asp:TextBox ID="TxtItemProb" runat="server" placeholder="Ex: Leaking, not switching on, etc." Height="30px" CssClass="form-control" ValidationGroup="Problem"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the type of problem" ControlToValidate="TxtItemProb" ValidationGroup="Problem"></asp:RequiredFieldValidator>--%>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6" style="margin-bottom: 2px; text-align: center"">
                                    <label>Problem Elaboration:</label>
                                    <asp:TextBox ID="TxtProbDes" runat="server" placeholder="Describe the problem clearly" Height="80px" TextMode="MultiLine" CssClass="form-control" ValidationGroup="Problem"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Give Decription to your prolem" ControlToValidate="TxtProbDes" ValidationGroup="Problem"></asp:RequiredFieldValidator>--%>
                                </div>
                                <div class="col-md-6" style="margin-bottom: 2px; text-align: center"">
                                    <label>The Location:</label>
                                    <asp:TextBox ID="TxtWhichPart" runat="server" placeholder="Ex: Bathroon, Kitchen, Living Room, etc." Height="30px" TextMode="SingleLine" CssClass="form-control" ValidationGroup="Problem"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="State where the item is at in the house" ControlToValidate="TxtWhichPart" ValidationGroup="Problem"></asp:RequiredFieldValidator>--%>
                                </div>
                                <div class="col-md-6" style="margin-bottom: 2px; text-align: center"">
                                    <label>The Duration:</label>
                                    <asp:TextBox ID="TxtDur" runat="server" placeholder="Existence Of Problem in Days" Height="30px" TextMode="Number" CssClass="form-control" ValidationGroup="Problem"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter duration of problem existence" ControlToValidate="TxtDur" ValidationGroup="Problem"></asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6" style="margin-bottom: 2px; text-align: center">
                                    <label>Any Pictures?</label>
                                    <asp:FileUpload ID="ProbfileUp" runat="server" CssClass="form-control" />
                                    <label>Add pictures to provide a rich understanding</label>
                                </div>
                                <div class="col-md-6" style="margin-bottom: 5px; text-align: center">
                                    <div class="col-md-6">
                                        <label>Start Date</label>
                                        <asp:TextBox ID="TxtStartDate" runat="server" placeholder="StartDate" TextMode="Date"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select a start date" ControlToValidate="TxtStartDate" ValidationGroup="Problem"></asp:RequiredFieldValidator>--%>

                                    </div>
                                    <div class="col-md-6">
                                        <label>End Date</label>
                                        <asp:TextBox ID="TxtEndDate" runat="server" class="form-control" placeholder="EndDate" TextMode="Date"></asp:TextBox>
                                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select an end date" ControlToValidate="TxtEndDate" ValidationGroup="Problem"></asp:RequiredFieldValidator>--%>
                                    </div>
                                    <label>Specifies when you want the problem fixed</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-2" style="text-align: center">
                                    <label>Need A Quote?</label>
                                    <asp:CheckBox ID="QouteReq" runat="server" Text="Need Quote" CssClass="form-control" />
                                    <label>Note: Check it, if a quote is required for your problem</label><br />
                                    <asp:Label ID="LblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                                </div>
                            </div>
                                </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="BtnProbClose" runat="server" CssClass="btn btn-default" data-dismiss="modal" Text="Close" />
                            <asp:Button ID="BtnSendProb" runat="server" Text="Send Problem" CssClass="btn" Style="background-color: #1ABC9C; color: white" Width="120px" ValidationGroup="Problem" CausesValidation="true" OnClick="BtnSendProb_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- PhoneNumberModal -->
            <div class="modal fade" id="myPhone" tabindex="-1" role="dialog" aria-labelledby="myPortModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 300px; height: 200px">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1ABC9C">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Enter Mobile Number</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12" style="text-align: center">
                                    <h4>Please Enter a Valid Contact Number or <asp:HyperLink ID="HyperLink1" runat="server" href="Signup.aspx" ForeColor="Turquoise">Signup</asp:HyperLink></h4>
                                    <p><asp:TextBox ID="TxtMobile" runat="server" CssClass="form-control" TextMode="Number" Width="200px" placeholder="10 Digit Contact Number" MaxLength="10"></asp:TextBox></p>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="BtnPhoneConfirm" CssClass="btn btn-default" data-dismiss="modal" Style="background-color: #34495E; color: white" runat="server" Text="Confirm" data-toggle="modal" data-target="#myProbModal" OnClientClick="return false;" />
                            <asp:Button ID="BtnPhoneCancel" CssClass="btn btn-default" data-dismiss="modal" Style="background-color: #34495E; color: white" runat="server" Text="Cancel" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- LoginOrSignUpModal -->
            <div class="modal fade" id="myLogSignPop" tabindex="-1" role="dialog" aria-labelledby="myPortModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 400px; height: 400px">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1ABC9C">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Log in Or Sign up</h4>
                        </div>
                        <div class="modal-body" style="text-align: center">
                            <div class="row">
                                <div class="col-md-12" style="text-align: center">
                                    <h3>You Cannot Recieve Quotes, Please Login or Sign Up First</h3>
                                    <div class="col-md-6">
                                        <asp:Button ID="BtnLogIn" runat="server" Text="Log In" CssClass="form-control" Style="background-color: #34495E; color: white" OnClick="BtnLogIn_Click"/>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Button ID="BtnSignUp" runat="server" Text="Sign Up" CssClass="form-control" Style="background-color: #1ABC9C; color: white" OnClick="BtnSignUp_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="BtnLogPopClose" CssClass="btn btn-default" data-dismiss="modal" Style="background-color: #34495E; color: white" runat="server" Text="Cancel" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- PortfolioModal -->
            <div class="modal fade" id="myPortfolioModal" tabindex="-1" role="dialog" aria-labelledby="myPortModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1ABC9C">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myPortModalLabel" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Selected Pro's Portfolio</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12"  style="text-align: center">
                                <div class="row">
                                <asp:Image ID="ProImg" runat="server" CssClass="thumbnail" Width="80px" Height="80px"/>
                                    </div>
                            </div>
                            <div class="col-md-12">
                        <asp:ListView ID="ProDesLV" runat="server">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-md-12" style="text-align: center">
                                        <h3>Experience Description</h3>
                                        <div class="alert alert-info">
                                        <asp:Label ID="LblDesc" runat="server" Text='<%# Eval("spDescription") %>'></asp:Label>
                                            </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                                </div>
                            <div class="col-md-12" style="text-align: center; margin-bottom:10px">
                                <h3>Portfolio Files</h3>
                        <asp:ListView ID="PortfolioListView" runat="server" >
                            <EmptyDataTemplate>
                                <table runat="server" style="margin-top:10px">
                                    <tr>
                                        <td>He Has no Portfolio to show</td>
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
                                <div class="col-md-6" style="margin-top:2px">
                                    <asp:Image ID="PortFolioPic" runat="server" CssClass="img-responsive" Width="300px" Height="150" ImageUrl='<%# Eval("fileURL") %>' />
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                                </div>
                             <div class="col-md-12" style="text-align: center">
                                 <h3>Comments</h3>
                        <asp:ListView ID="ProCommentLV" runat="server" >
                            <EmptyDataTemplate>
                                <table runat="server" style="margin-top:10px">
                                    <tr>
                                        <td>He Has not been provided with any comments yet</td>
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
                                <div class="col-md-12 alert  alert-success" style="margin-top:2px">
                                    <%# Eval("comment") %>'
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                                </div>
                            </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: #34495E; color: white">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- MessageModal -->
            <div class="modal fade" id="myMessage" tabindex="-1" role="dialog" aria-labelledby="myPortModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width: 300px; height: 200px">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1ABC9C">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Your Issue was sent Successfully</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12" style="text-align: center">
                                    <h4>Thank You</h4>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button3" CssClass="btn btn-default" data-dismiss="modal" Style="background-color: #34495E; color: white" runat="server" Text="OK" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                            <li>
                               <%-- <asp:LinkButton ID="profileLink" runat="server" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" Visible="false">
                                    <li class="dropdown">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Width="40px" Height="40px" Style="margin-top: -10px; margin-bottom: -15px" />
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </li>
                                </asp:LinkButton>--%>
                            </li>
                            <li><asp:ImageButton ID="ImageButton1" runat="server" width="40px" Height="40px" style="margin-top:5px; margin-bottom:-15px" Visible="false"/></li>
                            <li><asp:Button ID="LblGoToPro" runat="server" Text="View Profile" OnClick="LblGoToPro_Click" Visible="false" CssClass="btn btn-default" style="margin-top:7px; margin-left:5px" BackColor="Turquoise" ForeColor="white"></asp:Button></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <header class="cd-header" style="margin-top: -22px">
            <div class="container">
                <div id="SearchForm" class="form-inline" role="form" method="post" runat="server">
                    <div class="col-md-12 col-sm-12 col-xs-12" style="text-align: center">
                        <div class="row" style="padding-top: 50px; padding-bottom: 50px; text-align: center; color: white">
                            <h2 style="margin-bottom: 20px;">Find a Service Provider</h2>
                            <span>I need a</span>
                            <div class="form-group">
                                <asp:TextBox ID="TxtCatSearch" runat="server" class="form-control" placeholder="Ex: Plumber, Carpenter, etc" ValidationGroup="Search"></asp:TextBox>
                            </div>
                            <span>in</span>
                            <div class="form-group">
                                <asp:TextBox ID="TxtLocSearch" runat="server" class="form-control" placeholder="Ex: Dehiwala, Nugegoda, etc" ValidationGroup="Search"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Search" class="btn" Style="background-color: #1ABC9C" ValidationGroup="Search" CausesValidation="false" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <main class="cd-main-content">
	<div class="cd-tab-filter-wrapper">
		<div class="cd-tab-filter">
			<ul class="cd-filters">
                <li class="placeholder"></li>
                <li class="filter">
                    <span>
                            <asp:ImageButton id="img1" runat="server" CssClass="img-circle img-responsive" style="float: left; height: 35px; width: 35px; border: 1px solid; margin-right: 4px; margin-left: 15px; margin-top:8px" OnClick="img1_Click" CausesValidation="false"/>
                        </span>
                </li>
                <li class="filter">
                    <span>
                            <asp:ImageButton id="img2" runat="server" CssClass="img-circle img-responsive" style="float: left; height: 35px; width: 35px; border: 1px solid; margin-right: 4px;" OnClick="img2_Click" CausesValidation="false"/>
                        </span>
                </li>
                <li class="filter">
                    <span>
                            <asp:ImageButton id="img3" runat="server" CssClass="img-circle img-responsive" style="float: left; height: 35px; width: 35px; border: 1px solid; margin-right: 4px;" OnClick="img3_Click" CausesValidation="false"/>
                        </span>
                </li>
                <li class="filter">
                    <span>
                            <asp:ImageButton id="img4" runat="server" CssClass="img-circle img-responsive" style="float: left; height: 35px; width: 35px; border: 1px solid; margin-right: 4px;" OnClick="img4_Click" CausesValidation="false"/>
                        </span>
                </li>
                <li class="filter">
                    <span>
                             <asp:Button ID="BtnListPros" runat="server" CssClass="btn btn-sm" style="background-color:#1ABC9C; color:white; margin-top:-28px" Text="Consult" Enabled="false" OnClick="BtnListPros_Click" CausesValidation="false"/>
                        </span>
                </li>
				<%--<li class="placeholder"> 
					<a data-type="all" href="#0">All</a> <!-- selected option on mobile -->
				</li> 
				<li class="filter"><a class="selected" href="#0" data-type="all">All</a></li>
				<li class="filter" data-filter=".color-1"><a href="#0" data-type=".color-1">Hire Now</a></li>
				<li class="filter" data-filter=".color-2"><a href="#0" data-type=".color-2">Available Later</a></li>--%>
			</ul> <!-- cd-filters -->
		</div> <!-- cd-tab-filter -->
	</div> <!-- cd-tab-filter-wrapper -->

	<section class="cd-gallery">
        <div class="note" style="margin:5px 2px 5px 2px; width:19%; float:right; background-color:white; text-align:center">
            <div id="map_canvas" ></div>
        </div>
    <asp:ListView ID="SearchResults" runat="server">
        <EmptyDataTemplate>
                     <table runat="server" style="">
                         <tr>
                             <td>Sorry!! We Could not Find Any Matching Service Providers. Please Try Refining Your Search Again</td>
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
                     <div class="col-md-3" style="background-color:white; margin:8px; padding:5px">
            <div class="row">
                <div class="col-md-4 col-sm-4" style="text-align:center">
                        <div style="width:100%; height:100px"><asp:Image ID="spProPicLabel" runat="server" ImageUrl='<%# Eval("spProPic") %>' /></div>
                    <asp:Label ID="spUsrNameLabel" runat="server" Text='<%# Eval("spUsrName") %>' style="color:#1ABC9C"/>
                </div>
                <div class="col-md-8 col-sm-8" style="text-align:center">
                    <p><span style="color:#1ABC9C; font-weight:900; padding:2px">Crux</span><span style="color:#34495E; font-weight:900">Score</span><label class="label" style="margin:5px; background-color:#1ABC9C"><%# Eval("spBaynesianRating")%></label></p>
                        <p><span style="color:#9a9a9a; font-weight:900">Points</span></p>
                    <p>Rs.<asp:Label ID="Label1" runat="server" Text='<%# Eval("spChargeHourly") %>' />/Hour & Rs.<asp:Label ID="spChargeDailyLabel" runat="server" Text='<%# Eval("spChargeDaily") %>' />/Day</p>
                    <p><asp:Label ID="spStatusLabel" runat="server" Text='<%# Eval("spStatus") %>' /></p>
                    <p><asp:Label ID="bUsrNameLabel" runat="server" Text='<%# Eval("bUsrName") %>' /></p>
                </div>
            </div>
            <hr />
            <div class="row" style="text-align:center">
                <p><asp:Label ID="spFirstNameLabel" runat="server" Text='<%# Eval("spFirstName") %>' /> <asp:Label ID="spLastNameLabel" runat="server" Text='<%# Eval("spLastName") %>' /></p>
                    <p><asp:Label ID="spLocationLabel" runat="server" Text='<%# Eval("spLocation") %>' /></p>
                    <p><asp:Label ID="spSpecialtyLabel" runat="server" Text='<%# Eval("spSpecialty") %>' /></p>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-6" style="text-align:center">
                        <asp:Button CssClass="btn btn-xs" runat="server" ID="btnAddToList" Text="+" ForeColor="Gray" CommandArgument='<%# Eval("spProPic").ToString()+ "," +Eval("spUsrName") %>' OnClick="btnAddToList_Click" CommandName="AddToList"/>
                    <asp:Button ID="BtnProb" runat="server" CssClass="btn btn-sm" style="background-color:#34495E; color:white" Text="Hire Now!" CommandArgument='<%# Eval("spProPic").ToString()+ "," +Eval("spUsrName") %>' CommandName="Problem"/>
                    
                </div>
                <div class="col-md-6" style="text-align:center">
                        <asp:Button ID="BtnPort" runat="server" CssClass="btn btn-sm" style="background-color:#1ABC9C; color:white" Text="View PortFolio" OnClick="BtnPort_Click" CommandArgument='<%# Eval("spProPic").ToString()+ "," +Eval("spUsrName") %>' CommandName="PortFolio"/>
                </div>
            </div>
            
        </div>
                 </ItemTemplate>
    </asp:ListView>
		<%--<ul>
			<li>
                
                <div class="col-md-4" style="background-color:white; height:300px"></div>
                <div class="col-md-4" style="background-color:white; height:300px"></div>
                <div class="col-md-4" style="background-color:white; height:300px"></div>

			</li>
			<li>
                <div class="col-md-4" style="background-color:white; height:300px"></div>
                <div class="col-md-4" style="background-color:white; height:300px"></div>
                <div class="col-md-4" style="background-color:white; height:300px"></div>
			</li>
			<li><!-- ... --></li>
			<li class="gap"></li>
            </ul>
		<div class="cd-fail-message">No results found</div>--%>
	</section> <!-- cd-gallery -->
 <div class="cd-filter">
		<div style="padding-left:25px; padding-top:70px; padding-right:25px">
            <div class="cd-filter-block">
				<h4>Categories</h4>
				<div class="cd-filter-content cd-filters list">
					<!-- filter content -->
                    <select class="filter" name="selectThis" id="selectThis">
								<option value="">Choose an option</option>
								<option value=".option1">Plumbing</option>
								<option value=".option2">Carpentry</option>
								<option value=".option3">Gardening</option>
								<option value=".option4">Electrical</option>
							</select>
				</div> <!-- cd-filter-content -->
			</div> <!-- cd-filter-block -->
            <div class="cd-filter-block">
				<h4>Rating</h4>
				<div class="cd-filter-content cd-filters list">
					<!-- filter content -->
                    <div class="glyphicon glyphicon-star-empty"></div>
                    <div class="glyphicon glyphicon-star-empty"></div>
                    <div class="glyphicon glyphicon-star-empty"></div>
                    <div class="glyphicon glyphicon-star-empty"></div>
                    <div class="glyphicon glyphicon-star-empty"></div>
				</div> <!-- cd-filter-content -->
			</div> <!-- cd-filter-block -->
            <div class="cd-filter-block" runat="server">
				<h4>Price Filter</h4>
                <ul class="cd-filter-content cd-filters list">
                    <h5 style="color: #9a9a9a; font-weight: 700; font-size: 1.3rem; margin-bottom:15px">Hourly Price</h5>
                        <div class="form-inline">
                            <div class="form-group">
                                <asp:TextBox ID="TxtMinHrPrice" runat="server" CssClass="form-control" Width="75px" placeholder="Rs.min" TextMode="Number" ValidationGroup="filterhr"></asp:TextBox><span>To</span>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtMaxHrPrice" runat="server" CssClass="form-control" Width="75px" placeholder="Rs.max" TextMode="Number" ValidationGroup="filterhr"></asp:TextBox>
                            </div>
                               <span> <asp:Button ID="BtnHrFilter" runat="server" Text=">" CssClass="form-control" Width="40px" OnClick="BtnHrFilter_Click" ValidationGroup="filterhr"></asp:Button></span>
                        </div>
                    <h5 style="color: #9a9a9a; font-weight: 700; font-size: 1.3rem; margin-bottom:15px; margin-top:15px">Daily Price</h5>
                        <div class="form-inline">
                            <div class="form-group">
                                <asp:TextBox ID="TxtMinDayPrice" runat="server" CssClass="form-control" Width="75px" placeholder="Rs.min" TextMode="Number" ValidationGroup="filterday"></asp:TextBox><span>To</span>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="TxtMaxDayPrice" runat="server" CssClass="form-control" Width="75px" placeholder="Rs.max" TextMode="Number" ValidationGroup="filterday"></asp:TextBox>
                            </div>
                               <span> <asp:Button ID="BtnDayFilter" runat="server" Text=">" CssClass="form-control" Width="40px" OnClick="BtnDayFilter_Click" ValidationGroup="filterday"></asp:Button></span>
                        </div>
				</ul>
				
			</div><!-- cd-filter-block -->
		</div>
                <a href="#0" class="cd-close">Close</a>
                </div>
            <a href="#0" class="cd-filter-trigger">Filters</a>
</main>
        <!-- cd-main-content -->
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
    </form>
</body>
</html>
