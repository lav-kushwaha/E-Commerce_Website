<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="LRMART.Dashboard" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>DashBoard</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 68px;
            height: 47px;
        }

        a:hover{
            background-color:black;
            
        }
        #btnCart{
            margin-right:6px;
        }

        .auto-style2 {
            width: 58px;
            height: 47px;
            
        }
         .auto-style3 {
            
            height: 430px;
            
        }

    </style>
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
                    <img alt="" class="auto-style2" src="Images/hpp.jpg"/><br /><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Yellow"></asp:Label>



                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active h6" aria-current="page" href="UserHome.aspx" style="color:#FFFF00">Home</a>
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
                                    <li><a class="dropdown-item" href="#">Womenswear</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
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
                <%--Carousel Image Slider Start From Here---%>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" align="center">
            <div class="carousel-item active">
                <img src="Images/sales.jpg" class="auto-style3 w-100" alt="lav">
            </div>
            <div class="carousel-item">
                <img src="Images/lapslide.jpg" class="auto-style3 w-100" alt="raziullah">
            </div>
            <div class="carousel-item">
                <img src="Images/electronics.jpg" class="auto-style3 w-100" alt="Lrmart">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <%--CarouselImage Slider End Here---%>
    <hr />
   <%-- View more code start from here--%>
    <div class="container-fluid my-1">
             <div class="row mx-4">
            <div class="col-lg-4" >
                <img class="img-circle" src="Images/category-1.jpg" alt="footwear" width="400" height="300"/>
                            <h2 ">Footwears</h2>
                <p>If you are looking for stylish men's shoes online, The numerous trendy types and footwear concepts available can make every outing comfortable and fun.</p>
                <p><a class="btn btn-primary" href="#" role="button">View More &raquo;</a></p>
            </div>
                  <div class="col-lg-4">
                <img class="img-circle" src="Images/clothes.jpg" alt="clothes" width="400" height="300"/>
                            <h2>Clothes</h2>
                <p>Shop new season clothing for men and women online at low prices in india LRMART.in</p>
                <p><a class="btn btn-primary" href="Products.aspx" role="button">View More &raquo;</a></p>
            </div>
                  <div class="col-lg-4">
                <img class="img-circle" src="Images/lap2.jpg" alt="laptop" width="400" height="300"/>
                            <h2>Laptops</h2>
                <p>Best laptops for students for coding and Web Developments.</p>
                <p><a class="btn btn-primary" href="#" role="button">View More &raquo;</a></p>
            </div>
            </div>
    </div>
     <%-- View more code end here--%>


           </div>

            
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
</body>
</html>