<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AddBrands.aspx.cs" Inherits="LRMART.AddBrands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mx-5" align="center">
        <table cellpadding="3" cellspacing="3" cssclass="table table-responsive" style="background-color: Transparent;">
            <tr>
                <td align="center" class="auto-style7" style="width: 525px">
                    <h1 class="auto-style8">
                        <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Add Brands" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                    </h1>
                </td>

            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 525px">
                    <asp:Label ID="Label1" runat="server" Text="Brand ID" Font-Bold="True" Font-Names="calmbaria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 525px">
                    <asp:TextBox ID="Brandidtb" runat="server" placeholder="Id Autoincrement" CssClass="form-control" ForeColor="Black" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 525px">
                    <asp:Label ID="Label2" runat="server" Text="Brand Name" Font-Bold="True" Font-Names="calmbaria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 525px">
                    <asp:TextBox ID="brandTb" runat="server" placeholder="Enter Brandname" CssClass="form-control" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="center" style="width: 525px">

                    <asp:Button ID="Button1" runat="server" Text="Insert" BackColor="Green" ForeColor="Black" OnClick="Button1_Click" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" />
                    &nbsp;
                        <asp:Button ID="UpdateButton" runat="server" Text="Update" BackColor="Yellow" ForeColor="Black" Width="97px" Height="39px" Font-Bold="True" Font-Names="Arial" OnClick="UpdateButton_Click" />
                    &nbsp;
                        <asp:Button ID="DeleteButton" runat="server" Text="Delete" BackColor="Red" ForeColor="Black" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" OnClick="DeleteButton_Click" />
                    &nbsp;
                        <asp:Button ID="ResetButton" runat="server" Text="Reset" BackColor="blue" ForeColor="Black" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" OnClick="Button4_Click" />
                    &nbsp;




                </td>
            </tr>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="brandTb" ErrorMessage="Please Enter Brand Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            &nbsp;</td>
          
               
        </table>

    </div>
    <br />
    <hr />
    <br />

    <div class="container mb-4">
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" Style="margin-right: 0px">
            <Columns>
                <asp:CommandField HeaderText="SELECT" ShowSelectButton="True" />
                <asp:TemplateField HeaderText="BRAND ID">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Brand_id")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BRAND NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </div>
    <br />
    <hr />
    <br />
</asp:Content>
