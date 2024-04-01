<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Themdienthoai.aspx.cs" Inherits="QuanLyCuaHangDienThoai.Themdienthoai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .input-text, select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            input[type=submit]:hover {
                background-color: #45a049;
            }

        .form-themdienthoai {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .grid-1 {
            display: grid;
            grid-template-columns: 100%;
            gap: 20px;
            background-color: #2196F3;
            padding: 10px;
        }

        .grid-2 {
            display: grid;
            grid-template-columns: 49.5% 49.5%;
            gap: 20px;
            background-color: #2196F3;
            padding: 10px;
        }

        .grid-3 {
            display: grid;
            grid-template-columns: 32.63% 32.63% 32.63%;
            gap: 20px;
            background-color: #2196F3;
            padding: 10px;
        }

        .grid-4 {
            display: grid;
            grid-template-columns: 24.2% 24.2% 24.2% 24.2%;
            gap: 20px;
            background-color: #2196F3;
            padding: 10px;
        }

        .grid-5 {
            display: grid;
            grid-template-columns: 19.15% 19.15% 19.15% 19.15% 19.15%;
            gap: 20px;
            background-color: #2196F3;
            padding: 10px;
        }

        .sel-5, .sel-4, .sel-3, .sel-2, .sel-1 {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid rgba(0, 0, 0, 0.8);
            padding: 20px;
            font-size: 20px;
            text-align: center;
        }
        /*
        .sel-4 {
            width: 24.2%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px;
        }

        .sel-2 {
            width: 49.2%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px;
        }

        .sel-3 {
            width: 32.5%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px;
        }

        .sel-1 {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px;
        }*/

        .fup-5 {
           
        }
    </style>
    <div class="form-themdienthoai" style="">
        <form action="/action_page.php">

            <div class="grid-1">
                <asp:Label ID="Label1" runat="server" Text="Tên điện thoại:"></asp:Label>
                <asp:TextBox CssClass="input-text" ID="txtTen" runat="server" placeholder="Tên điện thoại..."></asp:TextBox>
            </div>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Màn hình:"></asp:Label>
            <br />
            <div class="grid-5">
                <div class="sel-5">
                    <asp:Label ID="Label4" runat="server" Text="Công nghệ:"></asp:Label>
                    <asp:DropDownList ID="ddlManHinh1" runat="server" DataSourceID="dsManHinh" DataTextField="CongNghe" DataValueField="CongNghe" ></asp:DropDownList>
                </div>
                <div class="sel-5">
                    <asp:Label ID="Label5" runat="server" Text="Độ phân giải:"></asp:Label>
                    <asp:DropDownList ID="ddlManHinh2" runat="server" DataSourceID="dsManHinh" DataTextField="DoPhanGiai" DataValueField="DoPhanGiai" ></asp:DropDownList>
                </div>

                <div class="sel-5">
                    <asp:Label ID="Label6" runat="server" Text="Độ rộng màn:"></asp:Label>
                    <asp:DropDownList ID="ddlManHinh3" runat="server" DataSourceID="dsManHinh" DataTextField="DoRongMan" DataValueField="DoRongMan" ></asp:DropDownList>
                </div>

                <div class="sel-5">
                    <asp:Label ID="Label7" runat="server" Text="Độ sáng:"></asp:Label>
                    <asp:DropDownList ID="ddlManHinh4" runat="server" DataSourceID="dsManHinh" DataTextField="DoSang" DataValueField="DoSang"></asp:DropDownList>
                </div>

                <div class="sel-5">
                    <asp:Label ID="Label8" runat="server" Text="Màn cảm ứng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlManHinh5" runat="server" DataSourceID="dsManHinh" DataTextField="ManCamUng" DataValueField="ManCamUng" OnSelectedIndexChanged="ddlManHinh5_SelectedIndexChanged" ></asp:DropDownList>
                </div>
            </div>

            <br />
            <div class="grid-2">
                <div class="sel-2">
                    <asp:Label ID="Label9" runat="server" Text="Hãng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlHang" runat="server" DataSourceID="dsHang" DataTextField="Ten" DataValueField="Ten"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label10" runat="server" Text="Hệ điều hành:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlHeDieuHanh" runat="server" DataSourceID="dsHeDieuHanh" DataTextField="Ten" DataValueField="Ten"></asp:DropDownList>
                </div>
            </div>
            <br />


            <asp:Label ID="Label11" runat="server" Text="Camera Trước"></asp:Label>
            <br />
            <div class="grid-4">
                <div class="sel-4">
                    <asp:Label ID="Label13" runat="server" Text="Độ phân giải:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamFDPG" runat="server" DataSourceID="dsCameraTruoc" DataTextField="DoPhanGiai" DataValueField="DoPhanGiai"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label14" runat="server" Text="Quay phim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamFQuayPhim" runat="server" DataSourceID="dsCameraTruoc" DataTextField="QuayPhim" DataValueField="QuayPhim"></asp:DropDownList>
                </div>

                <div class="sel-4">
                    <asp:Label ID="Label16" runat="server" Text="Chụp ảnh:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamFChupAnh" runat="server" DataSourceID="dsCameraTruoc" DataTextField="ChupAnh" DataValueField="ChupAnh"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label15" runat="server" Text="Flash:"></asp:Label>

                    <asp:CheckBox ID="chkCamFFalsh" runat="server" />
                </div>
            </div>
            <br />

            <asp:Label ID="Label17" runat="server" Text="Camera Sau"></asp:Label>
            <br />
            <div class="grid-4">

                <div class="sel-4">
                    <asp:Label ID="Label19" runat="server" Text="Độ phân giải:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamBDPG" runat="server" DataSourceID="dsCameraSau" DataTextField="DoPhanGiai" DataValueField="DoPhanGiai"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label20" runat="server" Text="Quay phim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamBQuayPhim" runat="server" DataSourceID="dsCameraSau" DataTextField="QuayPhim" DataValueField="QuayPhim"></asp:DropDownList>
                </div>

                <div class="sel-4">
                    <asp:Label ID="Label22" runat="server" Text="Chụp ảnh:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamBChupAnh" runat="server" DataSourceID="dsCameraSau" DataTextField="ChupAnh" DataValueField="ChupAnh"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label21" runat="server" Text="Flash:"></asp:Label>

                    <asp:CheckBox ID="chkCamBFalsh" runat="server" />
                </div>
            </div>
            <br />
            <div class="grid-3">
                <div class="sel-3">
                    <asp:Label ID="Label23" runat="server" Text="Ram:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddRam" runat="server" DataSourceID="dsRam" DataTextField="DungLuong" DataValueField="DungLuong"></asp:DropDownList>
                </div>
                <div class="sel-3">
                    <asp:Label ID="Label24" runat="server" Text="Dung lượng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddDungLuong" runat="server" DataSourceID="dsDungLuong" DataTextField="DungLuong" DataValueField="DungLuong"></asp:DropDownList>
                </div>
                <div class="sel-3">
                    <asp:Label ID="Label25" runat="server" Text="Sạc:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddSac" runat="server" DataSourceID="dsSac" DataTextField="LoaiSac" DataValueField="LoaiSac"></asp:DropDownList>
                </div>
            </div>
            <br />
            <asp:Label ID="Label26" runat="server" Text="Pin:"></asp:Label>
            <br />
            <div class="grid-2">

                <div class="sel-2">
                    <asp:Label ID="Label28" runat="server" Text="Dung lượng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddPinDungLuong" runat="server" DataSourceID="dsPin" DataTextField="DungLuong" DataValueField="DungLuong"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label29" runat="server" Text="Loại Pin:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddPinLoai" runat="server" DataSourceID="dsPin" DataTextField="LoaiPin" DataValueField="LoaiPin"></asp:DropDownList>
                </div>
            </div>
            <br />
            <asp:Label ID="Label27" runat="server" Text="Sim:"></asp:Label>
            <br />
            <div class="grid-2">

                <div class="sel-2">
                    <asp:Label ID="Label30" runat="server" Text="Loại sim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddSimLoai" runat="server" DataSourceID="dsSim" DataTextField="LoaiSim" DataValueField="LoaiSim"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label31" runat="server" Text="Số khe sim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddSimSoKhe" runat="server" DataSourceID="dsSim" DataTextField="SoSim" DataValueField="SoSim"></asp:DropDownList>
                </div>
            </div>
            <br />
            <asp:Label ID="Label32" runat="server" Text="Khuyễn mãi:"></asp:Label>
            <br />
            <div class="grid-2">

                <div class="sel-2">
                    <asp:Label ID="Label33" runat="server" Text="Tên khuyến mãi:"></asp:Label>
                    <asp:DropDownList CssClass="" Width="" ID="ddTenKM" runat="server" DataSourceID="dsKhuyenMai" DataTextField="TenKhuyenMai" DataValueField="TenKhuyenMai"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label34" runat="server" Text="Phần trăm:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddPhanTramKM" runat="server" DataSourceID="dsKhuyenMai" DataTextField="PhanTramGiam" DataValueField="PhanTramGiam"></asp:DropDownList>
                </div>
            </div>
            <br />
            <asp:Label ID="Label35" runat="server" Text="Hình ảnh:"></asp:Label>
            <br />
            <div class="grid-5">

                <div class="sel-1">
                    <asp:Label ID="Label36" runat="server" Text="Ảnh bìa:"></asp:Label>
                    <asp:FileUpload CssClass="" ID="fupAnhBia" runat="server" />
                </div>
                <div class="sel-1">
                    <asp:Label ID="Label37" runat="server" Text="Ảnh 1:"></asp:Label>
                    <asp:FileUpload CssClass="" ID="fupAnh1" runat="server" />
                </div>
                <div class="sel-1">
                    <asp:Label ID="Label38" runat="server" Text="Ảnh 2:"></asp:Label>
                    <asp:FileUpload CssClass="" ID="fupAnh2" runat="server" />
                </div>
                <div class="sel-1">
                    <asp:Label ID="Label39" runat="server" Text="Ảnh 3:"></asp:Label>
                    <asp:FileUpload CssClass="" ID="fupAnh3" runat="server" />
                </div>
                <div class="sel-1">
                    <asp:Label ID="Label40" runat="server" Text="Ảnh 4:"></asp:Label>
                    <asp:FileUpload CssClass="" ID="fupAnh4" runat="server" />
                </div>
            </div>
            <br />
            <div class="grid-1">
                <asp:Label ID="Label2" runat="server" Text="Thông tin:"></asp:Label>
                <asp:TextBox CssClass="input-text" ID="txtThongTin" runat="server" placeholder="Thông tin..."></asp:TextBox>
            </div>



            <asp:Button type="submit" ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
        </form>
    </div>
    <asp:SqlDataSource ID="dsManHinh" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [CongNghe], [DoPhanGiai], [DoRongMan], [DoSang], [ManCamUng] FROM [ManHinh]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHang" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [Ten] FROM [Hang]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHeDieuHanh" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [Ten] FROM [HeDieuHanh]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCameraTruoc" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [DoPhanGiai], [QuayPhim], [Flash], [ChupAnh] FROM [CameraTruoc]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCameraSau" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [DoPhanGiai], [QuayPhim], [Flash], [ChupAnh] FROM [CameraSau]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsRam" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [DungLuong] FROM [Ram]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsDungLuong" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [DungLuong] FROM [DungLuong]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSim" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [LoaiSim], [SoSim] FROM [Sim]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPin" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [DungLuong], [LoaiPin] FROM [Pin]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSac" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [LoaiSac] FROM [Sac]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsKhuyenMai" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [PhanTramGiam], [TenKhuyenMai] FROM [KhuyenMai]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHinhAnh" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT DISTINCT [AnhBia], [AnhBia1], [AnhBia2], [AnhBia3], [AnhBia4] FROM [HinhAnh]">
    </asp:SqlDataSource>
</asp:Content>
