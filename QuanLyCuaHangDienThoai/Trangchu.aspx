<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="QuanLyCuaHangDienThoai.site1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /** brand **/
        .brand {
            padding-top: px;
            border-top: #db0000 solid 6px;
        }

        .brand-bg {
            background: #ebebeb;
            padding: 20px 0px;
            font-family: Myriad Pro;
        }

        .margin {
            margin-bottom: 30px;
        }


        .brand-bg .brand_box {
            background: #fff;
            text-align: center;
            padding: 80px 0px 30px 0px;
        }

            .brand-bg .brand_box > img {
                height: 200px;
                width: auto;
            }

            .brand-bg .brand_box h3 {
                font-size: 27px;
                font-weight: bold;
                color: #131313;
                padding: 17px 0px 0px 0px;
            }

        .red {
            color: #ff0000;
        }

        .brand-bg .brand_box span {
            display: block;
            color: gray;
            font-size: 16px;
            line-height: 16px;
            padding-bottom: 3px;
        }

        .brand-bg .brand_box i {
            padding: 0px 2px;
        }

        .read-more {
            font-family: poppins;
            max-width: 212px;
            margin: 0 auto;
            margin-top: 0px;
            display: block;
            background: #000;
            color: #fff !important;
            padding: 12px 0px;
            width: 100%;
            font-size: 17px;
            text-align: center;
            border-radius: 32px;
            margin-top: 40px
        }

            .read-more:hover {
                background: #ff0000;
            }

        /** end brand **/
    </style>

    <!-- Slideshow container -->
    <section class="wrapper" style="height: 500px; background-image: url('../images/background/tgdd-1920x500.png')"></section>

    <%--<div class="content-container">
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
    </div>--%>
    <div class="brand rounded">
        <div class="brand-bg rounded">
            <div class="container mt-3">
                <div class="row text-bg-info rounded-3">
                    
                        <div class="h3 text-bg-info text-light text-center p-3">
                            IPHONE
                        </div>
                        <asp:Repeater runat="server" DataSourceID="dsIphone">
                            <ItemTemplate>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin rounded-3">
                                    <div class="brand_box rounded-3">
                                        <img src="images/dienthoai/<%#Eval("AnhBia") %>" alt="img" />
                                        <h3><strong class="red"><%#Eval("Gia") %></strong>$</h3>
                                        <span><%#Eval("TenDienThoai") %></span>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i><br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                  
                </div>
            </div>
        </div>
        <div class="brand-bg rounded">
            <div class="container mt-3">
                <div class="row text-bg-info rounded-3">
                    
                        <div class="h3 text-bg-info text-light text-center p-3">
                            NOKIA
                        </div>
                        <asp:Repeater runat="server" DataSourceID="dsNokia">
                            <ItemTemplate>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                    <div class="brand_box">
                                        <img src="images/dienthoai/<%#Eval("AnhBia") %>" alt="img" />
                                        <h3><strong class="red"><%#Eval("Gia") %></strong>$</h3>
                                        <span><%#Eval("TenDienThoai") %></span>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i><br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                  
                </div>
            </div>
        </div>
         <div class="brand-bg rounded">
            <div class="container mt-3">
                <div class="row text-bg-info rounded-3">
                    
                        <div class="h3 text-bg-info text-light text-center p-3">
                            SAMSSUNG
                        </div>
                        <asp:Repeater runat="server" DataSourceID="dsSamSung">
                            <ItemTemplate>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                    <div class="brand_box">
                                        <img src="images/dienthoai/<%#Eval("AnhBia") %>" alt="img" />
                                        <h3><strong class="red"><%#Eval("Gia") %></strong>$</h3>
                                        <span><%#Eval("TenDienThoai") %></span>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i>
                                        <i>
                                            <img src="images/star.png" /></i><br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                  
                </div>
            </div>
        </div>

    </div>
    <div class="brand">
        
    </div>
    <asp:SqlDataSource ID="dsIphone" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT TOP 3 DienThoai.*,HinhAnh.*, Hang.* FROM [DienThoai] INNER JOIN HinhAnh ON DienThoai.IDHinhAnh = HinhAnh.ID INNER JOIN Hang ON DienThoai.IDHang = Hang.ID WHERE (Hang.Ten IN (@TenHang))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Iphone" Name="TenHang" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="dsNokia" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT TOP 3 DienThoai.*,HinhAnh.*, Hang.* FROM [DienThoai] INNER JOIN HinhAnh ON DienThoai.IDHinhAnh = HinhAnh.ID INNER JOIN Hang ON DienThoai.IDHang = Hang.ID WHERE (Hang.Ten IN (@TenHang))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Nokia" Name="TenHang" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSamSung" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT TOP 3 DienThoai.*,HinhAnh.*, Hang.* FROM [DienThoai] INNER JOIN HinhAnh ON DienThoai.IDHinhAnh = HinhAnh.ID INNER JOIN Hang ON DienThoai.IDHang = Hang.ID WHERE (Hang.Ten IN (@TenHang))">
        <SelectParameters>
            <asp:Parameter DefaultValue="SamSung" Name="TenHang" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
