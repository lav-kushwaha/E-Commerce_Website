<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="LRMART.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Horizontal mx-5" align="center">
        <h1>
            <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Add Products" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
        </h1>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name" Font-Bold="True" Font-Names="calmbaria" Font-Overline="False" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:TextBox ID="pname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:TextBox ID="pprice" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text=" Selling Price" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:TextBox ID="psprice" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand Name" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlbrand" CssClass="col-md-2 control-label" runat="server" Width="122px" OnSelectedIndexChanged="ddlbrand_SelectedIndexChanged"></asp:DropDownList>

            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlcategory" CssClass="col-md-2 control-label" runat="server" Width="124px" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>

            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text=" Sub Category" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlsubcategory" CssClass="col-md-2 control-label" runat="server" Width="127px" AutoPostBack="True" OnSelectedIndexChanged="ddlsubcategory_SelectedIndexChanged"></asp:DropDownList>

            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label18" runat="server" CssClass="col-md-2 control-label" Text="Gender" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlgender" CssClass="col-md-2 control-label" runat="server" Width="129px" AutoPostBack="True" OnSelectedIndexChanged="ddlgender_SelectedIndexChanged"></asp:DropDownList>

            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Size" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:CheckBoxList ID="cblSize" CssClass="form-control" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Quantity" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Description" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label9" runat="server" TextMode="MultiLine" CssClass="col-md-2 control-label" Text="Product Details" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:TextBox ID="txtproductdetails" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label10" runat="server" TextMode="MultiLine" CssClass="col-md-2 control-label" Text="Material And Care" Font-Bold="True" Font-Names="Cambria" Font-Size="X-Large" ForeColor="White"></asp:Label>
            <div class="col-md-3">

                <asp:TextBox ID="txtmaterialandcare" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>

            </div>
        <br />
        <asp:Image ID="Image2" runat="server" Height="147px" Width="206px" />
        <br />
            <div class="form-group">
                <div class="col-md-2 ">
                    <asp:Label ID="Label11" runat="server" Text="Upload Image" Font-Bold="True" Font-Names="Cambria" ForeColor="White"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="202px" />
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col-md-6 ">
                    <asp:Button ID="BtnAdd1" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="BtnAdd1_Click" Font-Bold="True" ForeColor="Black" Height="41px" />&#160;
                    <asp:Button ID="updatebtn" CssClass="btn btn-primary" runat="server" Text="Update Product"  Font-Bold="True" ForeColor="Black" Height="41px" OnClick="updatebtn_Click" />&#160;
                    <asp:Button ID="deletebtn" CssClass="btn btn-danger" runat="server" Text="Delete Product"  Font-Bold="True" ForeColor="Black" Height="41px" />&#160;
                    <asp:Button ID="clearbtn" CssClass="btn btn-warning" runat="server" Text="Clear Product" Font-Bold="True" ForeColor="Black" Height="41px" OnClick="clearbtn_Click1"   />
                </div>
            </div>
       
    </div>
    <br />
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="2" HorizontalAlign="Center" Width="500px" Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                <asp:TemplateField HeaderText="PID">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("PID")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("PName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("PPrice")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="SellPrice">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("PSelPrice")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BrandID">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("PBrandID")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CategoryID">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("PCategoryID")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SubCatID">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("PSubCatID")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("PGender")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:Label ID="Label111" runat="server" Text='<%#Eval("PQuantity")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("PDescription")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductDetails">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("PProductDetails")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MaterialCare">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%#Eval("PMaterialCare")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="image_path">
                    <ItemTemplate>
                        <asp:Image ID="Image1" ImageUrl='<%#Eval("image_path")%>' runat="server" Width="100" Height="100" />
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
            <br />
    <hr />
    <br />
</asp:Content>
