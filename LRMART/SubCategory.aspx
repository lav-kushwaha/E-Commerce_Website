<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="LRMART.SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<div class="mx-5" >--%>
    <div cssclass="table table-responsive" align="center">
        <table cellpadding="3" cellspacing="3" class="auto-style1" style="background-color: Transparent; width: 514px;">
            <tr>
                <td align="center" class="auto-style7">
                    <h2 class="auto-style8">
                        <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Add Subcategory" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                    </h2>
                </td>
            </tr>
            <%--MainCategoryid--%>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label2" runat="server" Text="Main Category ID" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="height: 78px">
                    <asp:DropDownList ID="ddlMainCategoryid" runat="server" CssClass="table table-responsive">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlMainCategoryid" Display="Dynamic" ErrorMessage="Please Enter MainCategoryid" ForeColor="Red" SetFocusOnError="True" InitialValue="Select MainCategory ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%--maincategoryname--%>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="Sub Category Name" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="height: 78px">
                    <asp:TextBox ID="subcategorytb" runat="server" placeholder="Enter SubCategory" CssClass="form-control" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="subcategorytb" Display="Dynamic" ErrorMessage="Please Enter SubCategory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <td align="center" class="auto-style12" style="height: 43px">
                <asp:Button ID="subcategorybtn" runat="server" Text="Add SubCategory" BackColor="Green" ForeColor="Black" OnClick="subcategorybtn_Click" Width="173px" Height="37px" Font-Bold="True" Font-Names="Arial" />
                &nbsp;
                        <asp:Button ID="UpdateButton" runat="server" Text="Update" BackColor="Yellow" ForeColor="Black" Width="97px" Height="39px" Font-Bold="True" Font-Names="Arial"  />
                &nbsp;
                        <asp:Button ID="DeleteButton" runat="server" Text="Delete" BackColor="Red" ForeColor="Black" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial"  />
                &nbsp;
                        <asp:Button ID="ResetButton" runat="server" Text="Reset" BackColor="blue" ForeColor="Black" Width="97px" Height="37px" Font-Bold="True" Font-Names="Arial" OnClick="ResetButton_Click"  />
                &nbsp;
                    
            </td>

        </table>

    </div>
    <br />
    <hr />
    <br />
    <div class="container mb-4">
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="2" Style="margin-right: 0px" AutoGenerateColumns="False" >
            <Columns>
                <asp:TemplateField HeaderText="SUBCATEGORY ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("SubCategoryId")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SUBCATEGORY NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("SubCategoryName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MAINCATEGORY NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label>
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
    <hr />
    <br />
</asp:Content>
