<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="LRMART.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 68px;
            height: 47px;
        }

        a:hover {
            background-color: black;
        }
        .auto-style2 {
            width: 472px;
        }
    </style>
    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
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
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active h6" aria-current="page" href="Default.aspx" style="color: #FFFF00">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active h6" aria-current="page" href="#" style="color: #FFFF00">Contact</a>
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
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#">Menswear</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#"></a>Womenswear</li>
                                </ul>
                            </li>
                            <li class="nav-item" />
                            <li>
                                <button id="btnCart" class="btn btn-dark" type="button" />
                                Cart<span class="badge" id="pCount" runat="server"></span></button>
                                <asp:Button ID="LogoutBtn" runat="server" Text="Logout" CssClass="btn-dark" Font-Bold="True" ForeColor="Yellow" OnClick="LogoutBtn_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <%-- navbar end here--%>
            <div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
            <%-- Cart details code start from here--%>
           
            <table cellpadding="3" cellspacing="3" class="w-100">
                 <asp:Repeater ID="rptrCartProducts" runat="server">
             <ItemTemplate>
                <tr>
                    <td class="auto-style2">
                        <div class="container py-3">
                           
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="card mb-4" style="left: 0px; top: 15px; width: 890px; height: 308px;">
                                        <div class="card-header py-3">
                                            <h4 class="mb-0" >LR MART CART</h4>
                                        </div>
                                        
                                        <div class="card-body">
                                            <!-- Single item -->
                                             
                                            <div class="row">
                                                <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                                    <!-- Image -->
                                                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                                                        <img src="<%#Eval("image_path")%>" 
                                                            class="w-100" height="200px" alt="Blue Jeans Jacket" />
                                                        <a href="ProductView.aspx?id=<%#Eval("PID")%>" style="text-decoration:none;">
                                                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                                                        </a>
                                                    </div>
                                                    <!-- Image -->
                                                </div>

                                                <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                                                    <!-- Data -->
                                                    <p><strong>Product:<%#Eval("PName")%></strong></p>
                                                   <%-- <p>Color: blue</p>--%>
                                                    <p>Size: <%#Eval("SizeName")%></p>
                                                    <strong>Rs.<%#Eval("PSelPrice","{0:00,0}")%></strong><div>
                                                        <br />
                                                        <button type="button" class="btn btn-danger">Remove</button>
                                                    </div>
                                                    <!-- Data -->
                                                </div>


                                            </div>
                                            <!-- Single item -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        </div>
        </td>
              

            <td>
                <div class="container-fluid">
                    <div class="card mb-0">
                        <div class="card-header py-3">
                            <h5 class="mb-0">Summary</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                 <li
                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">Cart Total
                                           <span><%#Eval("PPrice","{0:00,0}")%></span>
                                </li>
                                <li
                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">Cart Discount
                                           <span>-<%#Eval("PSelPrice","{0:00,0}")%></span></li>
                                <hr />
               
                                <li
                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                    <div>
                                        <strong>Total amount</strong>
                                    </div>
                                    <span><strong>Rs.2745</strong></span>
                                </li>
                            </ul>

                            <button type="button" class="btn btn-primary btn-lg btn-block">
                                Buy Now
                            </button>
                        </div>
                    </div>
                </div>
         

            </td>
            </tr>
                  </ItemTemplate>
          </asp:Repeater> 
         <%-- Cart details code end from here--%>
        </table>
                   
        <br />
        <br />
        <%-- footer code start from here--%>
        <footer class="text-center text-lg-dark bg-dark" style="color: #FFFF00">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Get connected with us on social networks:d-none d-lg-block">
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
</body>
</html>

