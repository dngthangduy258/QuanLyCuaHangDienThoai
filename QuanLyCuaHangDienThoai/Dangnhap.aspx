<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="QuanLyCuaHangDienThoai.Test" %>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>New Form</title>
    <link href="styledangnhap.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
    <nav class="nav">
        <div class="container">
            <h1 class="logo">
                <a href="#">Logo</a>
            </h1>
            <ul>
                <li>
                    <div id="searchBox">
                        <input type="text" id="input" placeholder="Search" />
                        <button id="searchBtn">Tìm kiếm</button>
                    </div>
                </li>
                <li><a href="Trangchu.aspx">Trang chủ</a></li>
                <li><a href="SanPham.aspx">Sản phẩm</a></li>
                <li><a href="#">Giỏ hàng</a></li>
                <li><a href="Dangnhap.aspx">Đăng nhập</a></li>
            </ul>
        </div>
    </nav>

    <main>
        <div class="signup">
            <span>Bạn đã đăng ký?</span>
            <button type="button" class="sign-up-btn button1">Đăng Ký</button>
        </div>
        <div class="login">
            <span>Bạn đã có tài khoản?</span>
            <button class="button1" type="button">Đăng Nhập</button>
        </div>

        <div class="back-layer">
            <div class="login-form active form" runat="server">
                <h2 class="login-label">Đăng Nhập</h2>
                <asp:TextBox ID="lemail" CssClass="input1" type="email" runat="server" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="lpassword" CssClass="input1" type="password" runat="server" placeholder="Password"></asp:TextBox>
                <asp:Button  ID="Button1" CssClass="button1" runat="server" Text="Đăng Nhập" OnClick="Button1_Click" />
            </div>

            <div class="signup-form form" runat="server">
                <h2>Đăng Ký</h2>
                <asp:TextBox ID="fname" CssClass="input1" type="text" runat="server" placeholder="First Name"></asp:TextBox>
                <asp:TextBox ID="lname" CssClass="input1" type="text" runat="server" placeholder="last Name"></asp:TextBox>
                <asp:TextBox ID="semail" CssClass="input1" type="email" runat="server" placeholder="Email"></asp:TextBox>
                <asp:TextBox ID="spassword" CssClass="input1" type="password" runat="server" placeholder="Password"></asp:TextBox>

                <asp:Button  ID="Button2" CssClass="button1" runat="server" Text="Đăng Ký" OnClick="Button2_Click" />

            </div>
        </div>
    </main>
        </form>
    <script>
        const loginForm = document.querySelector(".login-form");
        const signupForm = document.querySelector(".signup-form");
        const loginBtn = document.querySelector(".login button");
        const signupBtn = document.querySelector(".signup button");
        const backLayer = document.querySelector(".back-layer");

        signupBtn.addEventListener("click", () => {
            loginForm.classList.remove("active");
            signupForm.classList.add("active");
            backLayer.style.clipPath = "inset(0 0 0 50%)";
        });

        loginBtn.addEventListener("click", () => {
            signupForm.classList.remove("active");
            loginForm.classList.add("active");
            backLayer.style.clipPath = "";
        });

    </script>
</body>
</html>
