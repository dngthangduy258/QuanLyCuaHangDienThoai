<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="QuanLyCuaHangDienThoai.Sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
     

/** brand **/
.brand {
     padding-top: 60px;
     border-top: #db0000 solid 6px;}

.brand-bg {
     background: #ebebeb;
     padding: 90px 0px;
     font-family: Myriad Pro;
}

.margin {
     margin-bottom: 30px;
}


.brand-bg .brand_box {
     background: #fff;
     text-align: center;
     padding: 80px 0px 30px 0px ;
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
     color: #19449b;
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
    <div class="brand_color">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <div class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Sản phẩm</a>
                              <div class="dropdown-menu">
                                  <asp:Repeater id="rptDropHang" DataSourceID="dsHang" runat="server">
                                      <ItemTemplate>
                                          <a class="dropdown-item" href='/Sanpham.aspx?hang=<%#Eval("Ten") %>' value="<%#Eval("Ten") %>"><%#Eval("Ten") %></a>
                                      </ItemTemplate>
                                  </asp:Repeater>
                              </div>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- brand -->
    <div class="brand">
        <div class="container">
        </div>
        <div class="brand-bg">
            <div class="container">
                <div class="row">
                    

                    <asp:Repeater runat="server" DataSourceID="dsDienThoai">
                        <ItemTemplate>
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                                <div class="brand_box">
                                    <img src="images/dienthoai/<%#Eval("AnhBia") %>" alt="img" />
                                    <h3><strong class="red"><%#Eval("Gia") %></strong>$</h3>
                                    <span><%#Eval("TenDienThoai") %></span>                           
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i>
                                    <i><img src="images/star.png"/></i><br />
                                    <button style="background-color:red;border:1px;border-radius:3px;padding:4px 6px;margin-top:5px;color:white;font-weight:bold"> Add to crat</button>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="col-md-12">
                        <a class="read-more">See More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- end brand -->
    <asp:SqlDataSource ID="dsDienThoai" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DienThoai.*,HinhAnh.* FROM DienThoai INNER JOIN HinhAnh ON DienThoai.IDHinhAnh = HinhAnh.ID INNER JOIN Hang ON DienThoai.IDHang = Hang.ID WHERE ([Ten] IN (@Ten,@Ten2,@Ten3,@Ten4,@Ten5,@Ten6,@Ten7))">
        <SelectParameters>
             <asp:QueryStringParameter  DefaultValue="SAMSUNG" Name="Ten" QueryStringField="hang"  Type="String" />
             <asp:QueryStringParameter  DefaultValue="IPHONE" Name="Ten2" QueryStringField="hang"  Type="String" />
             <asp:QueryStringParameter  DefaultValue="NOKIA" Name="Ten3" QueryStringField="hang"  Type="String" />
             <asp:QueryStringParameter  DefaultValue="OPPO" Name="Ten4" QueryStringField="hang"  Type="String" />
             <asp:QueryStringParameter  DefaultValue="REALME" Name="Ten5" QueryStringField="hang"  Type="String" />
             <asp:QueryStringParameter  DefaultValue="VIVO" Name="Ten6" QueryStringField="hang"  Type="String" />
             <asp:QueryStringParameter  DefaultValue="XIAOMI" Name="Ten7" QueryStringField="hang"  Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="dsHang" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [Ten] FROM [Hang]">
        
    </asp:SqlDataSource>
    
</asp:Content>
