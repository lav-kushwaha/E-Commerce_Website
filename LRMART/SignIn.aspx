<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="LRMART.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <title>Sign In</title>
    <style type="text/css">
        .auto-style1 {
           /* border:1px solid black;*/
            border-radius:1rem;
            margin :auto;
            width:452px;
            height: 324px;
        }
        .auto-style3 {
            width: 54px;
            height: 38px;
        }
        .auto-style4 {
            width: 210px;
            height: 51px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style7 {
            height: 43px;
            width: 492px;
        }
        .auto-style8 {
            width: 279px;
            height: 30px;
        }
        .auto-style9 {
            width: 492px;
        }
        .auto-style10 {
            width: 492px;
            height: 53px;
        }
        .auto-style11 {
            width: 214px;
            height: 67px;
        }
        .auto-style12 {
            width: 492px;
            height: 28px;
        }
        </style>
</head>
<body class="my-5"  style="background-image: url('Images/loginbg.jpg')" >
    <form id="form1" runat="server">
         <div align="Center">
            <table cellpadding="2" class="auto-style11">
                <tr>
                    <td class="auto-style6" ><h1 class="auto-style4">
                        <img alt="lrmart" class="auto-style3" src="Logo/logo.jpg" /><b> 
                        <asp:Label ID="Label3" runat="server" CssClass="bg-warning" Font-Bold="True" Font-Names="Georgia" Font-Size="XX-Large" Text="MART"></asp:Label>
                        </b></h1></td>
                </tr>
            </table>
        </div>
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1" style="background-color: Transparent">
                <tr>
                    <td align="center" class="auto-style7"><h2 class="auto-style8">Login</h2></td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="UserTb" runat="server" placeholder="Enter Username" CssClass="form-control" Height="35px" Width="500px" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial Narrow"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="PassTb" runat="server" placeholder="Enter Password" CssClass="form-control" Height="35px" Width="500px" TextMode="Password" BackColor="Transparent" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style12">
                        <asp:Button ID="LoginBtn" runat="server" CssClass="bg-warning" Text="Login" Height="35px" Width="110px" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" OnClick="LoginBtn_Click"/>
                    <br />
                        <input type="checkbox" onchange="document.getElementById('PassTb').type=this.checked? 'text':'password'"/>Show Password
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style10">
                        <a href="ForgetPassword.aspx"> <B>Forget Password ?</B></a>
                </tr>
            </table>
             <div align="center">
            <h6><b>New To LR MART ?</b></h6>
            <asp:Button ID="Button2"  runat="server" Text="Create Your LR MART Account" PostBackUrl="~/SignUp.aspx" Height="29px" Width="364px" />
        </div>
        </div>
    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
