<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="LRMART.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            margin:auto;
            border:3px solid black;
            text-align:center;
        }
        .auto-style2 {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table cellpadding="3" cellspacing="4" class="auto-style1">
            <tr>
                <td>ENTER EMAIL TO RESET YOUR PASSWORD</td>
            </tr>
            <tr>
                <td align="center" class="auto-style2">
                    <asp:TextBox ID="emailtb" placeholder="ENTER EMAIL" CssClass="form-control" runat="server" Width="219px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="Forgetsendbtn" runat="server" OnClick="Forgetsendbtn_Click" Text="Send" />
                </td>
            </tr>
        </table>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
