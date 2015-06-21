
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="cruxServicesWeb.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback Form</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <link href="Content/star-rating.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/star-rating.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
     <script type="text/javascript">
         function openMessage() {
             $('#myHireAccept').modal({ show: true });
         }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="modal fade" id="myHireAccept" tabindex="-1" role="dialog" aria-labelledby="my" aria-hidden="true">
                <div class="modal-dialog" style="width:500px; height:400px">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: #1ABC9C">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="" style="color: white; font-weight: 200; font-size: 20px; text-align: center">Feedback Submitted Successfully</h4>
                        </div>
                        <div class="modal-body" style="text-align:center">
                            <div class="row">
                                <div class="col-md-12" style="text-align:center">
                                    <h3>Thank Your For Your Valuable Feedback</h3>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="BtnClose" CssClass="btn btn-default" runat="server" Text="OK" OnClick="BtnClose_Click"/>
                        </div>
                    </div>
                </div>
            </div>
     <div class="navbar" style="background-color: rgba(255, 255, 255, 1)">
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
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><a href="Default.aspx#howitworks">How it Works</a></li>
                        <li><a href="Default.aspx#fservices">Services</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <header class="row" style="background-color:#34495E; color:white; text-align:center; margin-top:-22px">
        <div class="container">
            <p style="font-weight:700; font-size:70px">Feedback</p>
            <h2>Service Appraisal</h2>
        <p>
            Please rate <asp:Label ID="Label1" runat="server" Text="" Font-Size="X-Large"></asp:Label>  based on the following criteria. Honestly!
        </p>
        </div>
    </header>
    
    <div class="col-sm-10 col-sm-offset-1" style="margin-top:60px">
        <div class="form-group">
            <div class="col-sm-6"> 
                <label>Timeliness</label>   
                <asp:TextBox ID="input1" runat="server" class="rating form-control"  data-min="0" data-max="5" data-step="1" style="display: none;"></asp:TextBox>
            </div>
            <div class="col-sm-6 alert alert-info" style="background-color:#1ABC9C; color:white">Rate the service provider in terms of the time taken to finish the job and his productivity</div>
        </div>
        <hr class="col-sm-12" />
    </div>
    <div class="col-sm-10 col-sm-offset-1">
        <div class="form-group">
            <div class="col-sm-6">
                <label>Cost Effectiveness</label>
                <asp:TextBox ID="input2" runat="server" class="rating form-control"  data-min="0" data-max="5" data-step="1" style="display: none;"></asp:TextBox>
            </div>
            <div class="col-sm-6 alert alert-danger" style="background-color:#34495E; color:white">Rate the service provider in terms of budget management. Consider any saving made or any additional costs incurred during the job</div>
        </div>
        <hr class="col-sm-12" />
    </div>
    <div class="col-sm-10 col-sm-offset-1">
        <div class="form-group">
            <div class="col-sm-6">
                <label>Quality of Work</label>
                <asp:TextBox ID="input3" runat="server" class="rating form-control"  data-min="0" data-max="5" data-step="1" style="display: none;"></asp:TextBox>
            </div>
            <div class="col-sm-6 alert alert-info" style="background-color:#1ABC9C; color:white">Recap on the quality of work based on cleanliness, perfection, laziness, etc.</div>
        </div>
        <hr class="col-sm-12" />
    </div>
    <div class="col-sm-10 col-sm-offset-1">
        <div class="form-group">
            <div class="col-sm-6">
                <label>Reliability of Finish</label>
                <asp:TextBox ID="input4" runat="server" class="rating form-control"  data-min="0" data-max="5" data-step="1" style="display: none;"></asp:TextBox>
            </div>
            <div class="col-sm-6 alert alert-danger" style="background-color:#34495E; color:white">Rate the finish by determining the durability and reliability of the job done. Consider any need for repair again in future</div>
        </div>
        <hr class="col-sm-12" />
    </div>
    <div class="col-sm-10 col-sm-offset-1">
        <div class="form-group">
            <div class="col-sm-6">
                <label>Problem Resolution</label>
                <asp:TextBox ID="input5" runat="server" class="rating form-control"  data-min="0" data-max="5" data-step="1" style="display: none;"></asp:TextBox>
            </div>
            <div class="col-sm-6 alert alert-info" style="background-color:#1ABC9C; color:white">Measure the problem solving skills of the service provider. Take into account the service providers experience and any ideas put forward by the him</div>
        </div>
        <hr class="col-sm-12" />
    </div>

    <div class="col-sm-8 col-sm-offset-2" style="text-align:center">
        <label>Ultimate Service Description</label>
        <div class="form-group">
            <asp:TextBox ID="Txtcmmt" runat="server" class="form-control" TextMode="MultiLine" placeholder="Please describe any additional information about the service, it may be good or bad comments, suggestions, etc." Height="200px"></asp:TextBox>
            </div>
        <hr class="col-sm-12" />
    </div>
    <div class="col-sm-8 col-sm-offset-2" style="text-align:center">
        <asp:Button ID="BtnSubmit" runat="server" Text="Confirm Appraisal" CssClass="btn btn-lg" style="background-color:#1abc9c; color:white" OnClick="BtnSubmit_Click"/>
        <hr class="col-sm-12" />
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
        </form>
</body>
</html>
