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

        .sel-5 {
            width: 19.2%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px;
        }

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
        }

        .fup-5 {
            width: 15%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 15px;
        }
    </style>
    <div class="form-themdienthoai">
        <form action="/action_page.php">

            <div class="sel-1">
                <asp:Label ID="Label1" runat="server" Text="Tên điện thoại:"></asp:Label>
                <asp:TextBox CssClass="input-text" ID="txtTen" runat="server" placeholder="Tên điện thoại..."></asp:TextBox>
            </div>
            <br />
            <div class="sel-1">
                <asp:Label ID="Label3" runat="server" Text="Màn hình:"></asp:Label>
                <br />
                <div class="sel-5">
                    <asp:Label ID="Label4" runat="server" Text="Công nghệ:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlManHinh1" runat="server" DataSourceID="dsManHinh" DataTextField="CongNghe" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-5">
                    <asp:Label ID="Label5" runat="server" Text="Độ phân giải:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlManHinh2" runat="server" DataSourceID="dsManHinh" DataTextField="DoPhanGiai" DataValueField="ID"></asp:DropDownList>
                </div>

                <div class="sel-5">
                    <asp:Label ID="Label6" runat="server" Text="Độ rộng màn:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlManHinh3" runat="server" DataSourceID="dsManHinh" DataTextField="DoRongMan" DataValueField="ID"></asp:DropDownList>
                </div>

                <div class="sel-5">
                    <asp:Label ID="Label7" runat="server" Text="Độ sáng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlManHinh4" runat="server" DataSourceID="dsManHinh" DataTextField="DoSang" DataValueField="ID"></asp:DropDownList>
                </div>

                <div class="sel-5">
                    <asp:Label ID="Label8" runat="server" Text="Màn cảm ứng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlManHinh5" runat="server" DataSourceID="dsManHinh" DataTextField="ManCamUng" DataValueField="ID"></asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="sel-1">
                <div class="sel-2">
                    <asp:Label ID="Label9" runat="server" Text="Hãng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlHang" runat="server" DataSourceID="dsHang" DataTextField="Ten" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label10" runat="server" Text="Hệ điều hành:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddlHeDieuHanh" runat="server" DataSourceID="dsHeDieuHanh" DataTextField="Ten" DataValueField="ID"></asp:DropDownList>
                </div>
            </div>
            <br />

            <div class="sel-1">
                <asp:Label ID="Label11" runat="server" Text="Camera Trước"></asp:Label>
                <br />
                <div class="sel-4">
                    <asp:Label ID="Label13" runat="server" Text="Độ phân giải:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamFDPG" runat="server" DataSourceID="dsCameraTruoc" DataTextField="DoPhanGiai" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label14" runat="server" Text="Quay phim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamFQuayPhim" runat="server" DataSourceID="dsCameraTruoc" DataTextField="QuayPhim" DataValueField="ID"></asp:DropDownList>
                </div>
                
                <div class="sel-4">
                    <asp:Label ID="Label16" runat="server" Text="Chụp ảnh:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamFChupAnh" runat="server" DataSourceID="dsCameraTruoc" DataTextField="ChupAnh" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label15" runat="server" Text="Flash:"></asp:Label>
                
                    <asp:CheckBox ID="chkCamFFalsh" runat="server" />
                </div>
            </div>
            <br />

            <div class="sel-1">
                <asp:Label ID="Label17" runat="server" Text="Camera Sau"></asp:Label>
                <br />
                <div class="sel-4">
                    <asp:Label ID="Label19" runat="server" Text="Độ phân giải:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamBDPG" runat="server" DataSourceID="dsCameraSau" DataTextField="DoPhanGiai" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label20" runat="server" Text="Quay phim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamBQuayPhim" runat="server" DataSourceID="dsCameraSau" DataTextField="QuayPhim" DataValueField="ID"></asp:DropDownList>
                </div>
                
                <div class="sel-4">
                    <asp:Label ID="Label22" runat="server" Text="Chụp ảnh:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddCamBChupAnh" runat="server" DataSourceID="dsCameraSau" DataTextField="ChupAnh" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-4">
                    <asp:Label ID="Label21" runat="server" Text="Flash:"></asp:Label>
             
                    <asp:CheckBox ID="chkCamBFalsh" runat="server" />
                </div>
            </div>
            <br />
            <div class="sel-1">
                <div class="sel-3">
                    <asp:Label ID="Label23" runat="server" Text="Ram:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddRam" runat="server" DataSourceID="dsRam" DataTextField="DungLuong" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-3">
                    <asp:Label ID="Label24" runat="server" Text="Dung lượng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddDungLuong" runat="server" DataSourceID="dsDungLuong" DataTextField="DungLuong" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-3">
                    <asp:Label ID="Label25" runat="server" Text="Sạc:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddSac" runat="server" DataSourceID="dsSac" DataTextField="LoaiSac" DataValueField="ID"></asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="sel-1">
                <asp:Label ID="Label26" runat="server" Text="Pin:"></asp:Label>
                <br />
                <div class="sel-2">
                    <asp:Label ID="Label28" runat="server" Text="Dung lượng:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddPinDungLuong" runat="server" DataSourceID="dsPin" DataTextField="DungLuong" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label29" runat="server" Text="Loại Pin:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddPinLoai" runat="server" DataSourceID="dsPin" DataTextField="LoaiPin" DataValueField="ID"></asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="sel-1">
                <asp:Label ID="Label27" runat="server" Text="Sim:"></asp:Label>
                <br />
                <div class="sel-2">
                    <asp:Label ID="Label30" runat="server" Text="Loại sim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddSimLoai" runat="server" DataSourceID="dsSim" DataTextField="LoaiSim" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label31" runat="server" Text="Số khe sim:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddSimSoKhe" runat="server" DataSourceID="dsSim" DataTextField="SoSim" DataValueField="ID"></asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="sel-1">
                <asp:Label ID="Label32" runat="server" Text="Khuyễn mãi:"></asp:Label>
                <br />
                <div class="sel-2">
                    <asp:Label ID="Label33"  runat="server" Text="Tên khuyến mãi:"></asp:Label>
                    <asp:DropDownList CssClass="" Width=""  ID="ddTenKM" runat="server" DataSourceID="dsKhuyenMai" DataTextField="TenKhuyenMai" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="sel-2">
                    <asp:Label ID="Label34" runat="server" Text="Phần trăm:"></asp:Label>
                    <asp:DropDownList CssClass="" ID="ddPhanTramKM" runat="server" DataSourceID="dsKhuyenMai" DataTextField="PhanTramGiam" DataValueField="ID"></asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="sel-1">
                <asp:Label ID="Label35" runat="server" Text="Hình ảnh:"></asp:Label>
                <br />
                <div class="sel-5">
                    <asp:Label ID="Label36" runat="server" Text="Ảnh bìa:"></asp:Label>
                    <asp:FileUpload CssClass="sel-1" ID="fupAnhBia" runat="server" />
                </div>
                <div class="sel-5">
                    <asp:Label ID="Label37" runat="server" Text="Ảnh 1:"></asp:Label>
                    <asp:FileUpload CssClass="sel-1" ID="fupAnh1" runat="server" />
                </div>
                <div class="sel-5">
                    <asp:Label ID="Label38" runat="server" Text="Ảnh 2:"></asp:Label>
                    <asp:FileUpload CssClass="sel-1" ID="fupAnh2" runat="server" />
                </div>
                <div class="sel-5">
                    <asp:Label ID="Label39" runat="server" Text="Ảnh 3:"></asp:Label>
                    <asp:FileUpload CssClass="sel-1" ID="fupAnh3" runat="server" />
                </div>
                <div class="sel-5">
                    <asp:Label ID="Label40" runat="server" Text="Ảnh 4:"></asp:Label>
                    <asp:FileUpload CssClass="sel-1" ID="fupAnh4" runat="server" />
                </div>
            </div>
            <br />
            <div class="sel-1">
                <asp:Label ID="Label2" runat="server" Text="Thông tin:"></asp:Label>
                <asp:TextBox CssClass="input-text" ID="txtThongTin" runat="server" placeholder="Thông tin..."></asp:TextBox>
            </div>



            <asp:Button type="submit" ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
        </form>
    </div>
    <asp:SqlDataSource ID="dsDienThoai" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [DienThoai] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DienThoai] ([TenDienThoai], [IDManHinh], [IDHang], [IDHeDieuHanh], [IDCameraTruoc], [IDCameraSau], [IDRam], [IDDungLuong], [IDSim], [IDPin], [IDSac], [IDKhuyenMai], [HinhAnh], [ThongTin]) VALUES (@TenDienThoai, @IDManHinh, @IDHang, @IDHeDieuHanh, @IDCameraTruoc, @IDCameraSau, @IDRam, @IDDungLuong, @IDSim, @IDPin, @IDSac, @IDKhuyenMai, @HinhAnh, @ThongTin)" SelectCommand="SELECT * FROM [DienThoai]" UpdateCommand="UPDATE [DienThoai] SET [TenDienThoai] = @TenDienThoai, [IDManHinh] = @IDManHinh, [IDHang] = @IDHang, [IDHeDieuHanh] = @IDHeDieuHanh, [IDCameraTruoc] = @IDCameraTruoc, [IDCameraSau] = @IDCameraSau, [IDRam] = @IDRam, [IDDungLuong] = @IDDungLuong, [IDSim] = @IDSim, [IDPin] = @IDPin, [IDSac] = @IDSac, [IDKhuyenMai] = @IDKhuyenMai, [HinhAnh] = @HinhAnh, [ThongTin] = @ThongTin WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenDienThoai" Type="String" />
            <asp:Parameter Name="IDManHinh" Type="Int32" />
            <asp:Parameter Name="IDHang" Type="Int32" />
            <asp:Parameter Name="IDHeDieuHanh" Type="Int32" />
            <asp:Parameter Name="IDCameraTruoc" Type="Int32" />
            <asp:Parameter Name="IDCameraSau" Type="Int32" />
            <asp:Parameter Name="IDRam" Type="Int32" />
            <asp:Parameter Name="IDDungLuong" Type="Int32" />
            <asp:Parameter Name="IDSim" Type="Int32" />
            <asp:Parameter Name="IDPin" Type="Int32" />
            <asp:Parameter Name="IDSac" Type="Int32" />
            <asp:Parameter Name="IDKhuyenMai" Type="Int32" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="ThongTin" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenDienThoai" Type="String" />
            <asp:Parameter Name="IDManHinh" Type="Int32" />
            <asp:Parameter Name="IDHang" Type="Int32" />
            <asp:Parameter Name="IDHeDieuHanh" Type="Int32" />
            <asp:Parameter Name="IDCameraTruoc" Type="Int32" />
            <asp:Parameter Name="IDCameraSau" Type="Int32" />
            <asp:Parameter Name="IDRam" Type="Int32" />
            <asp:Parameter Name="IDDungLuong" Type="Int32" />
            <asp:Parameter Name="IDSim" Type="Int32" />
            <asp:Parameter Name="IDPin" Type="Int32" />
            <asp:Parameter Name="IDSac" Type="Int32" />
            <asp:Parameter Name="IDKhuyenMai" Type="Int32" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="ThongTin" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsManHinh" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [ManHinh] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ManHinh] ([CongNghe], [DoPhanGiai], [DoRongMan], [DoSang], [ManCamUng]) VALUES (@CongNghe, @DoPhanGiai, @DoRongMan, @DoSang, @ManCamUng)" SelectCommand="SELECT * FROM [ManHinh]" UpdateCommand="UPDATE [ManHinh] SET [CongNghe] = @CongNghe, [DoPhanGiai] = @DoPhanGiai, [DoRongMan] = @DoRongMan, [DoSang] = @DoSang, [ManCamUng] = @ManCamUng WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CongNghe" Type="String" />
            <asp:Parameter Name="DoPhanGiai" Type="String" />
            <asp:Parameter Name="DoRongMan" Type="String" />
            <asp:Parameter Name="DoSang" Type="String" />
            <asp:Parameter Name="ManCamUng" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CongNghe" Type="String" />
            <asp:Parameter Name="DoPhanGiai" Type="String" />
            <asp:Parameter Name="DoRongMan" Type="String" />
            <asp:Parameter Name="DoSang" Type="String" />
            <asp:Parameter Name="ManCamUng" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHang" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [Hang] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Hang] ([Ten]) VALUES (@Ten)" SelectCommand="SELECT * FROM [Hang]" UpdateCommand="UPDATE [Hang] SET [Ten] = @Ten WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHeDieuHanh" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [HeDieuHanh] WHERE [ID] = @ID" InsertCommand="INSERT INTO [HeDieuHanh] ([Ten]) VALUES (@Ten)" SelectCommand="SELECT * FROM [HeDieuHanh]" UpdateCommand="UPDATE [HeDieuHanh] SET [Ten] = @Ten WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCameraTruoc" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [CameraTruoc] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CameraTruoc] ([Ten], [DoPhanGiai], [QuayPhim], [Flash], [ChupAnh]) VALUES (@Ten, @DoPhanGiai, @QuayPhim, @Flash, @ChupAnh)" SelectCommand="SELECT * FROM [CameraTruoc]" UpdateCommand="UPDATE [CameraTruoc] SET [Ten] = @Ten, [DoPhanGiai] = @DoPhanGiai, [QuayPhim] = @QuayPhim, [Flash] = @Flash, [ChupAnh] = @ChupAnh WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DoPhanGiai" Type="String" />
            <asp:Parameter Name="QuayPhim" Type="String" />
            <asp:Parameter Name="Flash" Type="String" />
            <asp:Parameter Name="ChupAnh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DoPhanGiai" Type="String" />
            <asp:Parameter Name="QuayPhim" Type="String" />
            <asp:Parameter Name="Flash" Type="String" />
            <asp:Parameter Name="ChupAnh" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCameraSau" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [CameraSau] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CameraSau] ([Ten], [DoPhanGiai], [QuayPhim], [Flash], [ChupAnh]) VALUES (@Ten, @DoPhanGiai, @QuayPhim, @Flash, @ChupAnh)" SelectCommand="SELECT * FROM [CameraSau]" UpdateCommand="UPDATE [CameraSau] SET [Ten] = @Ten, [DoPhanGiai] = @DoPhanGiai, [QuayPhim] = @QuayPhim, [Flash] = @Flash, [ChupAnh] = @ChupAnh WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DoPhanGiai" Type="String" />
            <asp:Parameter Name="QuayPhim" Type="String" />
            <asp:Parameter Name="Flash" Type="String" />
            <asp:Parameter Name="ChupAnh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DoPhanGiai" Type="String" />
            <asp:Parameter Name="QuayPhim" Type="String" />
            <asp:Parameter Name="Flash" Type="String" />
            <asp:Parameter Name="ChupAnh" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsRam" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [Ram] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Ram] ([DungLuong]) VALUES (@DungLuong)" SelectCommand="SELECT * FROM [Ram]" UpdateCommand="UPDATE [Ram] SET [DungLuong] = @DungLuong WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DungLuong" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DungLuong" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsDungLuong" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [DungLuong] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DungLuong] ([DungLuong]) VALUES (@DungLuong)" SelectCommand="SELECT * FROM [DungLuong]" UpdateCommand="UPDATE [DungLuong] SET [DungLuong] = @DungLuong WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DungLuong" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DungLuong" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSim" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [Sim] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Sim] ([LoaiSim], [SoSim]) VALUES (@LoaiSim, @SoSim)" SelectCommand="SELECT * FROM [Sim]" UpdateCommand="UPDATE [Sim] SET [LoaiSim] = @LoaiSim, [SoSim] = @SoSim WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LoaiSim" Type="String" />
            <asp:Parameter Name="SoSim" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LoaiSim" Type="String" />
            <asp:Parameter Name="SoSim" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPin" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [Pin] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Pin] ([DungLuong], [LoaiPin]) VALUES (@DungLuong, @LoaiPin)" SelectCommand="SELECT * FROM [Pin]" UpdateCommand="UPDATE [Pin] SET [DungLuong] = @DungLuong, [LoaiPin] = @LoaiPin WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DungLuong" Type="String" />
            <asp:Parameter Name="LoaiPin" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DungLuong" Type="String" />
            <asp:Parameter Name="LoaiPin" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSac" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [Sac] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Sac] ([LoaiSac]) VALUES (@LoaiSac)" SelectCommand="SELECT * FROM [Sac]" UpdateCommand="UPDATE [Sac] SET [LoaiSac] = @LoaiSac WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LoaiSac" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LoaiSac" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsKhuyenMai" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [KhuyenMai] WHERE [ID] = @ID" InsertCommand="INSERT INTO [KhuyenMai] ([TenKhuyenMai], [PhanTramGiam]) VALUES (@TenKhuyenMai, @PhanTramGiam)" SelectCommand="SELECT * FROM [KhuyenMai]" UpdateCommand="UPDATE [KhuyenMai] SET [TenKhuyenMai] = @TenKhuyenMai, [PhanTramGiam] = @PhanTramGiam WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKhuyenMai" Type="String" />
            <asp:Parameter Name="PhanTramGiam" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKhuyenMai" Type="String" />
            <asp:Parameter Name="PhanTramGiam" Type="Double" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsHinhAnh" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" DeleteCommand="DELETE FROM [HinhAnh] WHERE [ID] = @ID" InsertCommand="INSERT INTO [HinhAnh] ([AnhBia], [AnhBia1], [AnhBia2], [AnhBia3], [AnhBia4]) VALUES (@AnhBia, @AnhBia1, @AnhBia2, @AnhBia3, @AnhBia4)" SelectCommand="SELECT * FROM [HinhAnh]" UpdateCommand="UPDATE [HinhAnh] SET [AnhBia] = @AnhBia, [AnhBia1] = @AnhBia1, [AnhBia2] = @AnhBia2, [AnhBia3] = @AnhBia3, [AnhBia4] = @AnhBia4 WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="AnhBia1" Type="String" />
            <asp:Parameter Name="AnhBia2" Type="String" />
            <asp:Parameter Name="AnhBia3" Type="String" />
            <asp:Parameter Name="AnhBia4" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AnhBia" Type="String" />
            <asp:Parameter Name="AnhBia1" Type="String" />
            <asp:Parameter Name="AnhBia2" Type="String" />
            <asp:Parameter Name="AnhBia3" Type="String" />
            <asp:Parameter Name="AnhBia4" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
