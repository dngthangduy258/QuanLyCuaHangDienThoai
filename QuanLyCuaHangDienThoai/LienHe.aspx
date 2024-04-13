<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="QuanLyCuaHangDienThoai.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="style/shop-homepage.css" rel="stylesheet" />
    <link href="style/my.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <div class="container" style="display:block">
     
            <div class="panel panel-default ">            
                <div class="panel-heading" style="background-color:#8E8D8D; color:white;" >
                    <h2 style="margin-top:0px; margin-bottom:0px;">Liên hệ</h2>
                </div>

                <div class="panel-body">
                    <!-- item -->
                    <h3><span class="glyphicon glyphicon-align-left"></span> Thông tin liên hệ</h3>
                    
                    <div class="break"></div>
                    <h4><span class= "glyphicon glyphicon-home "></span> Địa chỉ : </h4>
                    <p>292 Lý Chính Thắng, Phường 9, Quận 3, Thành phố Hồ Chí Minh, Việt Nam</p>

                    <h4><span class="glyphicon glyphicon-envelope"></span> Email : </h4>
                    <p type="email">dngthanhduy258@gmail.com</p>

                    <h4><span class="glyphicon glyphicon-phone-alt"></span> Điện thoại : </h4>
                    <p>0344311448</p>



                    <br><br>
                    <h3><span class="glyphicon glyphicon-globe"></span> Bản đồ</h3>
                    <div class="break"></div><br>
                    <iframe src="https://maps.google.com/maps?q=292%20l%C3%BD%20ch%C3%ADnh%20th%E1%BA%AFng&amp;t=&amp;z=16&amp;ie=UTF8&amp;iwloc=&amp;output=embed" width="800" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                      
                </div>
            </div>
 
        </div>
        <script src="/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/js/bootstrap.js"></script>
    <script src="/js/my.js"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
</asp:Content>
