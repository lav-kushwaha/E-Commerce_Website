<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AddSizes.aspx.cs" Inherits="LRMART.AddSizes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" align="center">
        <table cellpadding="3" cellspacing="3" class="auto-style1" cssclass="table table-responsive" style="background-color: Transparent; width: 467px;">
            <tr>
                <td align="center" class="auto-style7" style="width: 647px">
                    <h2 class="auto-style8">
                        <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Add Size" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                    </h2>
                </td>
            </tr>

            <%--sizename--%>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:Label ID="Label1" runat="server" Text="Size Name" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:TextBox ID="sizetb" runat="server" placeholder="Enter Size" CssClass="form-control" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sizetb" Display="Dynamic" ErrorMessage="Please Enter Size" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%--brand--%>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:Label ID="Label3" runat="server" Text="Brand" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:DropDownList ID="ddlbrand" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlbrand" Display="Dynamic" ErrorMessage="Please Enter Brand" ForeColor="Red" SetFocusOnError="True" InitialValue="Select MainCategory ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%--category--%>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:Label ID="Label4" runat="server" Text="Category" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:DropDownList ID="ddlcategory" runat="server" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" CssClass="form-control" AutoPostBack="true">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlcategory" Display="Dynamic" ErrorMessage="Please Enter Category" ForeColor="Red" SetFocusOnError="True" InitialValue="Select MainCategory ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%--sub category--%>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:Label ID="Label5" runat="server" Text="Sub Category" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:DropDownList ID="ddlsubcategory" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlsubcategory" Display="Dynamic" ErrorMessage="Please Enter SubCategory" ForeColor="Red" SetFocusOnError="True" InitialValue="Select MainCategory ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <%--gender--%>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:Label ID="Label6" runat="server" Text="Gender" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" align="center" style="width: 647px">
                    <asp:DropDownList ID="ddlgender" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlgender" Display="Dynamic" ErrorMessage="Please Enter ddlgender" ForeColor="Red" SetFocusOnError="True" InitialValue="Select MainCategory ID"></asp:RequiredFieldValidator>
                </td>
            </tr>


            <tr>
                <td align="center" class="auto-style12" style="width: 647px">

                    <asp:Button ID="sizebtn" runat="server" Text="Add" BackColor="Green" ForeColor="Black" OnClick="sizebtn_Click" Width="120px" Height="37px" Font-Bold="True" Font-Names="Arial" />
                    &nbsp;
                       
                    <br />
                </td>
        </table>

    </div>
    <br />
    <hr />
    <br />
    <div class="container mb-4">
        <asp:GridView ID="GridView1" CssClass="table table-responsive" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="2" Style="margin-right: 0px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="SIZE ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Sizeid")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SIZE NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("SizeName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BRAND NAME">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CATEGORY">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SUBCATEGORY">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("SubCategoryName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="GENDER">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("GenderName")%>'></asp:Label>
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
