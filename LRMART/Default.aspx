<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LRMART.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 430px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Carousel Image Slider Start From Here---%>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" align="center">
            <div class="carousel-item active">
                <img src="Images/sales.jpg" class="auto-style2  w-100" alt="lav">
            </div>
            <div class="carousel-item">
                <img src="Images/lapslide.jpg" class="auto-style2 w-100" alt="raziullah">
            </div>
            <div class="carousel-item">
                <img src="Images/electronics.jpg" class="auto-style2 w-100" alt="Lrmart">
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
                <p><a class="btn btn-primary" href="#" role="button">View More &raquo;</a></p>
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
</asp:Content>
