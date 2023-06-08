<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="LRMART.AddCatagory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Container" align="center">
        <div class="mx-5" align="center">
            <table cellpadding="3" cellspacing="3" cssclass="table table-responsive" style="background-color: Transparent;">
                <tr>
                    <td align="center" class="auto-style7" style="width: 525px">
                        <h1 class="auto-style8">
                            <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Add Category" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" align="center" style="width: 525px">
                        <asp:Label ID="Label1" runat="server" Text="Category ID" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" align="center" style="width: 525px">
                        <asp:TextBox ID="categoryid" runat="server" placeholder="Enter BrandId" CssClass="form-control" ForeColor="Black" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" align="center" style="width: 525px">
                        <asp:Label ID="Label2" runat="server" Text="Category Name" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" align="center" style="width: 525px">
                        <asp:TextBox ID="categorytb" runat="server" placeholder="Enter Brand Name" CssClass="form-control" ForeColor="Black"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="center" style="width: 525px">

                        <asp:Button ID="Button1" runat="server" Text="Insert" BackColor="Green" ForeColor="Black" OnClick="categorybtn_Click" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" />
                        &nbsp;
                        <asp:Button ID="UpdateButton" runat="server" Text="Update" BackColor="Yellow" ForeColor="Black" Width="97px" Height="39px" Font-Bold="True" Font-Names="Arial" OnClick="UpdateButton_Click" />
                        &nbsp;
                        <asp:Button ID="DeleteButton" runat="server" Text="Delete" BackColor="Red" ForeColor="Black" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" OnClick="DeleteButton_Click" />
                        &nbsp;
                        <asp:Button ID="ResetButton" runat="server" Text="Reset" BackColor="blue" ForeColor="Black" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" OnClick=" ResetButton_Click" />
                        &nbsp;




                    </td>
                </tr>

            </table>

        </div>
        <br />
        <hr />
        <br />
        <div class="container mb-4">
            <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="2" Style="margin-right: 0px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField HeaderText="SELECT" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="CATEGORY ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("CategoryId")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CATEGORY NAME">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label>
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
