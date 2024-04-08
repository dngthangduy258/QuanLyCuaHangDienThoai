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
            position: fixed;
            margin: auto;
            text-align:center;
            
        }

        img {
            vertical-align: middle;
            width:100%; height:auto;

        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 100%;
            position: relative;
            margin: auto;
            display: block;
              margin-left: auto;
              margin-right: auto;
              width: 50%;
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

    <div style="">
        <div class=" slideshow-container">
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <a href="#">
                    <img src="images/slides/img1.png">
                </a>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <a href="#">
                    <img src="images/slides/img2.png">
                </a>
            </div>
            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <a href="#">
                    <img src="images/slides/img3.png">
                </a>
            </div>
        </div>
        <br>
        <div style="text-align: center;">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
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
