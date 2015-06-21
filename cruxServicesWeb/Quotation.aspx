<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quotation.aspx.cs" Inherits="cruxServicesWeb.Quotation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/LoginPage/quotestyle.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .form-control {
            padding: 1px,0;
            height: 23px;
            font-size: 11px;
            margin-bottom: -5px;
            margin-top: -5px;
        }
        h4 {
            color:white;
            margin-top:-10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-login">
            <h2 class="form-login-heading">Crux Quote</h2>
            <div class="login-wrap">
                <div class="row">
                    <div class="col-md-6" style="text-align: left">
                        <h4><asp:Label ID="LblReq" runat="server" Text=""></asp:Label></h4>
                        <h4><asp:Label ID="LblPro" runat="server" Text=""></asp:Label></h4>
                    </div>
                    <div class="col-md-6" style="text-align: right">
                        <h4><asp:Label ID="LblDate" runat="server" Text=""></asp:Label></h4>
                        <h4>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-condensed" style="margin-bottom: -5px">
                            <tr style="background-color:#34495E; color:white;">
                                <th class="col-md-7">Material Description</th>
                                <th class="col-md-2">U Price-Rs.</th>
                                <th class="col-md-1">Qty</th>
                                <th class="col-md-2">T Price-Rs.</th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ" runat="server" CssClass="form-control" OnTextChanged="TxtQ_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ1" runat="server" CssClass="form-control" OnTextChanged="TxtQ1_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP1" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ2" runat="server" CssClass="form-control" OnTextChanged="TxtQ2_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP2" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ3" runat="server" CssClass="form-control" OnTextChanged="TxtQ3_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP3" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ4" runat="server" CssClass="form-control" OnTextChanged="TxtQ4_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP4" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM5" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP5" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ5" runat="server" CssClass="form-control" OnTextChanged="TxtQ5_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP5" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM6" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP6" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ6" runat="server" CssClass="form-control" OnTextChanged="TxtQ6_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP6" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM7" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP7" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ7" runat="server" CssClass="form-control" OnTextChanged="TxtQ7_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP7" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM8" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP8" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ8" runat="server" CssClass="form-control" OnTextChanged="TxtQ8_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP8" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TxtM9" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtUP9" runat="server" CssClass="form-control"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtQ9" runat="server" CssClass="form-control" OnTextChanged="TxtQ9_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="TxtTP9" runat="server" CssClass="form-control"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>
                                    <asp:Button ID="BntCalc" runat="server" Text="Get Total" CssClass="form-control" OnClick="Button1_Click1" /></td>
                                <td>
                                    <asp:TextBox ID="TxtTotal" runat="server" CssClass="form-control" OnTextChanged="TxtTotal_TextChanged" AutoPostBack="true"></asp:TextBox></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h4>Additional Notes</h4>
                        <asp:TextBox ID="TxtQuoteDesc" runat="server" CssClass="form-control" placeholder="enter your terms" TextMode="MultiLine" Height="60px"></asp:TextBox>
                        <asp:Label ID="LblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-inline" style="margin-top:20px">
                            <div class="form-group" style="float:right">
                                <asp:Button ID="BtnRst" runat="server" Text="Reset" CssClass="btn btn-default form-control" style="height:34px"/>
                                <asp:Button ID="BtnSnd" runat="server" Text="Send" CssClass="btn btn-default form-control" style="height:34px; background-color:#34495E; color:white" OnClick="BtnSnd_Click"/>
                                <asp:Button ID="BtnCcl" runat="server" Text="Cancel" CssClass="btn btn-default form-control" style="height:34px; background-color:#1ABC9C; color:white" OnClick="BtnCcl_Click"/>
                            </div>
                            <div class="form-group" style="float:left">
                                <asp:Button ID="BtnAccept" runat="server" Text="Accept" CssClass="btn btn-default form-control" style="height:34px; background-color:#1ABC9C; color:white" OnClick="BtnAccept_Click"/>
                                <asp:Button ID="BtnReject" runat="server" Text="Reject" CssClass="btn btn-default form-control" style="height:34px; background-color:#34495E; color:white" OnClick="BtnReject_Click"/>
                                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default form-control" style="height:34px" OnClick="BtnCancel_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
