<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="QuanLyCuaHangDienThoai.site1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Verdana, sans-serif;
        }

        .mySlides {
            display: none;
        }

        img {
            vertical-align: middle;
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            
        }

        .active {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px
            }
        }

    </style>

    <!-- Slideshow container -->
    <div class="hero">
        <div class="">
            <div class="row">

                <div class="col-3">
                    left side
                </div>
                <div class="col-6">
                    <div class="slideshow-container">
                        <div class="mySlides fade">
                            <div class="numbertext">1 / 3</div>
                            <a href="#">
                                <img src="images/slides/img1.png" style="width: 100%">
                            </a>
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">2 / 3</div>                                 
                             <a href="#">
                                <img src="images/slides/img2.png" style="width: 100%">
                            </a>
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">3 / 3</div>
                             <a href="#">
                                <img src="images/slides/img3.png" style="width: 100%">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    right side
                </div>
                
            </div>
            <br>
            <div style="text-align: center ; " >
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
        </div>
    </div>

    <div class="content-container">
        <section class="content">
            <h1>Title 1</h1>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aut
          provident laboriosam tenetur corporis autem temporibus quod, fugiat a,
            </p>
        </section>
        <section class="content">
            <h1>Title 2</h1>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aut
          provident laboriosam tenetur corporis autem temporibus quod, fugiat a,
            </p>
        </section>
        <section class="content">
            <h1>Title 3</h1>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aut
          provident laboriosam tenetur corporis autem temporibus quod, fugiat a,
            </p>
        </section>
        <section class="content">
            <h1>Title 4444</h1>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aut
          provident laboriosam tenetur corporis autem temporibus quod, fugiat a,
            </p>
        </section>
    </div>

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 3000); // Change image every 3 seconds
        }
    </script>

</asp:Content>
