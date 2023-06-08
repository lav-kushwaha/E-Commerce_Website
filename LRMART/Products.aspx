<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="LRMART.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
   <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 68px;
            height: 47px;
        }

       /* a:hover{
            background-color:black;
            
        }*/
        .auto-style2 {
            width: 54px;
            height: 43px;
        }
        </style>
    <link href="css/StyleSheet.css" rel="stylesheet" />
     <script type="text/javascript">

         $(document).ready(function myfunction() {
             $("#btnCart").click(function myfunction() {
                 window.location.href = "/Cart.aspx";
             });
         });

     </script>
</head>
<body>
    <form id="form1" runat="server">
       <%--navbar start here--%>
        <div class="">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
                <div class="container-fluid" style="color: #000000">
                    &nbsp;
                <img alt="" class="auto-style1" src="Logo/logo.jpg" />&nbsp; <a class="navbar-brand" href="#"><b style="color: #FFFF00">MART</b></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                     <img alt="" class="auto-style2" src="Images/hpp.jpg" /><br />
               <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active h6" aria-current="page" href="Default.aspx" style="color:#FFFF00">Home</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link active h6" aria-current="page" href="#" style="color:#FFFF00">Contact</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h6" width="30px" href="#" style="color: #FFFF00">About Us</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle h6" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: #FFFF00">Products
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="Products.aspx">View Products</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Menswear</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#"> Womenswear</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"/>
                                 <li><button id="btnCart" class="btn btn-dark" type="button">
                                    Cart<span class="badge" id="pCount" runat="server"></span></button>
                                <asp:Button ID="LogoutBtn" runat="server" Text="Logout" CssClass="btn-dark" Font-Bold="True" ForeColor="Yellow" OnClick="LogoutBtn_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
           <%-- navbar end here--%>
           <div>
           </div>
          <%--  View products code start from here--%>
             <div class="container">
            <h3 align="center">
                <br />
            <asp:Label ID="Label21" runat="server" CssClass="col-md-2 control-label" Text="Welcome To View All Products" Font-Bold="True" Font-Names="Gazpacho Bold" Font-Overline="False" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                 </h3>
            <div class="row" style="padding-top:50px">
                <asp:Repeater ID="rptrProducts" runat="server">
                    <ItemTemplate>      
                <div class="col-sm-3 col-md-3">
                      <a href="ProductView.aspx?id=<%#Eval("PID")%>" style="text-decoration:none;">
                    <div class="thumbnail">
                        <img src="<%#Eval("image_path")%>" productid="<%#Eval("PID")%>" alt="<%#Eval("Name")%>" height="330px" width="300px"> 
                        <div class="caption">
                            <div class="probrand"><%#Eval("Name")%></div>
                             <div class="proName"><%#Eval("PName")%></div>
                            <div class="proPrice"> <span class="proOgPrice">&#x20b9;<%#Eval("PPrice","{0:00,0}")%></span>&#x20b9;<%#Eval("PSelPrice","{0:00,0}")%><span class="proPriceDiscount">(200 off)</span></div>
                            </div>
                        </div>
                          </a>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
               
                </div>
                </div>
            <br />
            <br />
            <hr />

            <%-- footer code start from here--%>
            <footer class="text-center text-lg-dark bg-dark" style="color: #FFFF00">
                <!-- Section: Social media -->
                <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                    <!-- Left -->
                    <div class="me-5 d-none d-lg-block">
                        <span>Get connected with us on social networks:</span>
                    </div>
                    <!-- Left -->
                </section>
   
                <section class="">
                    <div class="container text-center text-md-start mt-5">
                        <!-- Grid row -->
                        <div class="row mt-3">
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                                <!-- Content -->
                                <h6 class="text-uppercase fw-bold mb-4">
                                    <i class="fas fa-gem me-3"></i>Company name
                                </h6>
                                <p>
                                   Hey, This is LR MART Online Shopping Web Application. In This Web Application You Can Buy Electronics Items And Fashion Related Products Like Menswear,Womenswear And Kidswear etc.
                                </p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">Products
                                </h6>
                                <p>
                                    <a href="#!" class="text-reset">Electronics</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Menswear</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Womenswear</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Kidswear</a>
                                </p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">Useful links
                                </h6>
                                <p>
                                    <a href="#!" class="text-reset">Pricing</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Settings</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Orders</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Help</a>
                                </p>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                                <p><i class="fas fa-home me-3"></i>India, Rajkot Gujarat</p>
                                <p>
                                    lkushwaha515@rku.ac.in
                                    rkhan908@rku.ac.in
                                </p>
                                <p><i class="fas fa-phone me-3"></i>+91 8140262574</p>
                                <p><i class="fas fa-print me-3"></i>+91 9327050558</p>
                            </div>
                            <!-- Grid column -->
                        </div>
                        <!-- Grid row -->
                    </div>
                </section>
                <!-- Section: Links  -->

                <!-- Copyright -->
                <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                    © 2022 Copyright:
               <a class="text-reset fw-bold">LRMART.COM</a>
                </div>
                <!-- Copyright -->
            </footer>
            <!-- Footer -->
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body></html>
