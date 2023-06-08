<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LRMART.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title>Registration Form</title>
    <style type="text/css">
        .auto-style1 {
           /* border : 1px solid black;*/
            margin: auto;
            width: 344px;
            height: 387px;
        }

        .auto-style4 {
            height: 28px;
            width: 510px;
        }

        .auto-style6 {
            height: 31px;
        }

        .auto-style7 {
            width: 67px;
            height: 55px;
        }

        .auto-style8 {
            height: 54px;
            width: 241px;
        }

        .auto-style9 {
            height: 43px;
            width: 510px;
        }

        .auto-style10 {
            width: 510px;
        }

        .auto-style11 {
            height: 31px;
            width: 510px;
        }

        .auto-style12 {
            margin: auto;
            width: 510px;
        }
        Button:hover{
            background-color:chartreuse;
        }

      
        .auto-style13 {
            height: 67px;
        }

      
    </style>
   
</head>
<body style="background-image: url('Images/loginbg.jpg')">
    <form id="form1" runat="server">
        <div align="Center" class="auto-style13">
            <table cellpadding="2" class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        <h1 class="auto-style8">
                            <img alt="lrmart" class="auto-style7" src="Logo/logo.jpg" /><b>
                                <asp:Label ID="Label8" runat="server" CssClass="bg-warning" Font-Bold="True" Font-Names="Georgia" Font-Size="XX-Large" Text="MART"></asp:Label>
                            </b></h1>
                    </td>
                </tr>
            </table>
        </div>
            <div>
                <%--<table cellpadding="2" class="auto-style1">--%>
                <table cellpadding="3" cellspacing="3" class="auto-style1 my-2" style="background-color: Transparent">
                    <tr>
                        <td align="center" class="auto-style10" style="background-color: Transparent">
                            <h4><b>Registration Form</b></h4>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color: Transparent">
                            <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" style="background-color: Transparent">
                            <asp:TextBox ID="nametb" runat="server" placeholder="First and last name" Height="35px" Width="400px" CssClass="form-control" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: Transparent">
                            <asp:Label ID="Label2" runat="server" Text="Email" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="background-color: Transparent">
                            <asp:TextBox ID="emailtb" runat="server" Height="35px" Width="400px" placeholder="Enter email" CssClass="form-control" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color: Transparent">
                            <asp:Label ID="Label3" runat="server" Text="Mobile No" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" style="background-color: Transparent">
                            <asp:TextBox ID="mobiletb" runat="server" Height="35px" Width="400px" placeholder="Enter mobile number" CssClass="form-control" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color: Transparent">
                            <asp:Label ID="Label5" runat="server" Text="Username" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color:Transparent">
                            <asp:TextBox ID="usertb" runat="server" Height="35px" Width="400px" placeholder="Enter username" CssClass="form-control" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: Transparent">
                            <asp:Label ID="Label6" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color: Transparent">
                            <asp:TextBox ID="passtb" runat="server" OnTextChanged="TextBox6_TextChanged" Height="35px" Width="400px" placeholder="Enter password" CssClass="form-control" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color: Transparent">
                            <asp:Label ID="Label7" runat="server" Text="Confirm Password" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10" style="background-color: Transparent">
                            <asp:TextBox ID="confirmpastb" runat="server" Height="35px" Width="400px" placeholder="Enter confirm password" CssClass="form-control" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12" align="center" style="background-color: Transparent">
                            <asp:Button ID="SignUpBtn" runat="server" CssClass="bg-warning" Text="Signup" Height="35px" Width="110px" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" OnClick="SignUpBtn_Click" />
                            <br />
                           <b>Already Have An Account?</b> 
                        <a href="SignIn.aspx"><b>SignIn</b></a></td>
                    </tr>
                </table>
            </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
