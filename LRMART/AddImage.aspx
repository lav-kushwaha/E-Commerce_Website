<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AddImage.aspx.cs" Inherits="LRMART.AddImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  align="center">
        <table cellpadding="2">
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Upload Image" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="42px" Width="340px" CssClass="offset-sm-0" />
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Button ID="addimg" runat="server" Text="Add" BackColor="Green" ForeColor="Black"  Width="120px" Height="37px" Font-Bold="True" Font-Names="Arial" OnClick="addimg_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <hr />
    <br />
    <div class="container mb-4" align="center">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="2" CellSpacing="2" GridLines="None" Height="201px" ShowHeader="False" AutoGenerateColumns="False">
            <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>    
                            </td>
                            <td>
                                <asp:Image ID="Image1" Height="150px" Width="180px" ImageUrl='<%# Eval("Image_name") %>' runat="server" />      
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
                </Columns>
        </asp:GridView>
        </div>
     <br />
    <hr />
    <br />

</asp:Content>
