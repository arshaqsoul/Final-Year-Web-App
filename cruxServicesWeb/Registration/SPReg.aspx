<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPReg.aspx.cs" Inherits="cruxServicesWeb.SPReg" MaintainScrollPositionOnPostback="True"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration-Service Provider</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <link href="../Content/fileinput.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/fileinput.min.js"></script>
    
</head>
<body>
    
    <div class="navbar" style="background-color: rgba(255, 255, 255, 0.9)">
        <div class="container-fluid">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="../Default.aspx" class="navbar-brand">
                        <img src="../Content/LandingPage/img/logogreen.fw.png" style="margin-top: -7px;" />
                    </a>
                </div>
               <div class="collapse navbar-collapse navbar-left">
                            <ul class="nav navbar-nav">
                                <li><a href="../Default.aspx#intro">Intro</a></li>
                                <li><a href="../Default.aspx#hwitwrks">How It Works</a></li>
                                <li><a href="../Default.aspx#services">Featured Services</a></li>
                            </ul>
                        </div>
                        <div class="collapse navbar-collapse navbar-right">
                            <ul class="nav navbar-nav">
                                <li>
                                    <asp:HyperLink ID="signUp" runat="server" href="../Signup.aspx" Font-Underline="false">Sign Up</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="logIn" runat="server" href="../Login.aspx" Font-Underline="false">Log In</asp:HyperLink></li>
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
    <header class="row" style="background-color: #34495E; color: white; text-align: center; margin-top:-22px">
        <div class="container">
            <p style="font-weight: 700; font-size: 70px">SP</p>
            <h2>Individual Service Provider Registration</h2>
            <p>
                This registration, on completion will enable all features available for an Individual Service Provider.
        The registration form will cover your Log in credentials, Personal Information, Contact Information, Capable Services and Portfolio Uploads
            </p>
        </div>
    </header>
    <div class="container" style="margin-top: 60px;">
        <div class="col-sm-10">
            <form class="form-horizontal" role="form" id="form1" runat="server">
                <!-- login info-->
                <div class="row col-sm-12">
                    <h3>Log In Information</h3>
                    <p>The username and password provided will be used in future authentication and authorization processes</p>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">UserName *</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtUsrNme" runat="server" class="form-control" placeholder="yourUserName"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter A UserName of Your Choice" ControlToValidate="TxtUsrNme" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Password *</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtPass" runat="server" class="form-control" placeholder="yourPassword" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter A Password" ControlToValidate="TxtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Confirm Password *</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtConfirmPass" runat="server" class="form-control" placeholder="yourConfirmedPassword" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The Password Entered Do Not Match" ControlToCompare="TxtPass" ControlToValidate="TxtConfirmPass" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <hr />
                <!-- personal info-->
                <div class="row col-sm-12">
                    <h3>Personal Information</h3>
                    <p>The information provided here will be used to create the profile and also help a requestor identify you</p>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">First Name *</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtFname" runat="server" class="form-control" placeholder="yourFirstName"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your First Name" ControlToValidate="TxtFname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Last Name</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtLname" runat="server" class="form-control" placeholder="yourLastName"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Date of Birth *</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtDOB" runat="server" class="form-control" placeholder="yourDOB" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Your Date Of Birth" ControlToValidate="TxtDOB" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Address *</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtAddress" runat="server" class="form-control" placeholder="yourAddress" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Your Address" ControlToValidate="TxtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Profile Picture</label>
                    <div class="col-sm-6">
                        <asp:FileUpload ID="ProPicFileUp" runat="server" class="form-control" />
                    </div>
                </div>
                <hr />
                <!-- contact info-->
                <div class="row col-sm-12">
                    <h3>Contact Information</h3>
                    <p>This information is very impoartant. Contact information will help a service requestor to get in touch with you, when in need</p>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Telephone Number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="TxtTele" runat="server" class="form-control" placeholder="yourTelephone" TextMode="Number" MaxLength="10"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter a Your Telephone Number which has to be 10 Digits" ControlToValidate="TxtTele" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Your Telephone Number" ControlToValidate="TxtTele" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Mobile Number *</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="TxtMobi" runat="server" class="form-control" placeholder="yourMobile" TextMode="Number" MaxLength="10"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Your Mobile Number which has to be 10 Digits" ControlToValidate="TxtMobi" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Your Mobile Number" ControlToValidate="TxtMobi" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <hr />
                <!--Services-->
                <div class="row col-sm-12">
                    <h3>Favorable Service</h3>
                    <p>This section will define your scope of work at cruxServices, based on the specialty selected at your preferred proce</p>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Core Specialty</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="categoryList" runat="server" CssClass="form-control" AppendDataBoundItems="true" OnSelectedIndexChanged="categoryList_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Text="Please Select an item" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Sub Services</label>
                    <div class="col-sm-9 col-md-9">
                        <asp:CheckBoxList ID="tagList" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5"></asp:CheckBoxList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Standard Service Charge</label>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <div class="input-group-addon">Rs.</div>
                            <asp:TextBox ID="TxtHrPrice" runat="server" class="form-control" placeholder="hourlyRate" TextMode="Number"></asp:TextBox>
                            <div class="input-group-addon">/hour</div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <div class="input-group-addon">Rs.</div>
                            <asp:TextBox ID="TxtDayPrice" runat="server" class="form-control" placeholder="dailyRate" TextMode="Number"></asp:TextBox>
                            <div class="input-group-addon">/day</div>
                        </div>
                    </div>
                </div>
                <!--Portfolio-->
                <div class="row col-sm-12">
                    <h3>Background Information</h3>
                    <p>Uploading past jobs is not compulsory. However, if available it will increase the chances of getting hired. You can add or remove any work using your profile once registered.</p>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Describe You as a Pro</label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TxtDesc" runat="server" TextMode="MultiLine" class="form-control" Rows="3" placeholder="yourDescription"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Describe Yourself as a Pro" ForeColor="Red" ControlToValidate="TxtDesc"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3">Upload Files</label>
                    <div class="col-sm-6">
                        <asp:FileUpload ID="portUpload" runat="server" type="file" class="file" data-preview-file-type="any" multiple="true" />
                    </div>
                </div>
                <hr />
                <!--Done-->
                <div class="form-group">
                    <div class="checkbox" style="margin-left: 15px">
                        <label>
                            <asp:CheckBox ID="ChkAgree" runat="server" class="form-control" Text="I have read and agree to the terms of services" />
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4">
                        <asp:Button ID="BtnReg" runat="server" Text="Register" class="btn btn-default btn-lg" OnClick="BtnReg_Click" />
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-2" style="margin-top: 20px">
            <p><b>Please Note:</b> Fill in all the following required fields to complete and successfully register as an Individual Service Provider on cruxServices</p>
        </div>
    </div>

    <footer>
        <hr />
        <div class="container">
            <div class="col-md-6">
                <img src="~/Content/Images/Logo/logo.fw.png" />
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
