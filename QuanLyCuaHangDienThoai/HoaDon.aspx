<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="QuanLyCuaHangDienThoai.HoaDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>

    <h2>Trang quản lý hóa đơn</h2>
    <hr />

    <div class="row">
        <div class="col-md-6">
            <div class="form-inline">
                <div style="display:inline-block">
                    Nhập số điện thoại người mua:
                </div>
                <div style="display:inline-block">
                    <asp:TextBox ID="txtSDT"  runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div style="display:inline-block">
                    <asp:Button ID="btTraCuu" runat="server" Text="Tra cứu" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>
        <div class="col-md-6 text-right">
        </div>
    </div>
    <asp:Label CssClass="h3 text-danger" ID="divNoResults" runat="server" Visible="false" Text="Không tìm thấy số điện thoại."></asp:Label>

    <asp:GridView ID="gvHoaDon" CssClass="table table-bordered mt-2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dsHoaDon" AllowPaging="True" PageSize="5">
        <Columns>
            <asp:BoundField DataField="Ten" HeaderText="Khách hàng" ReadOnly="True" SortExpression="Ten" />
            <%--<asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="Hinh_Tour/{0}" HeaderText=""  ReadOnly="true" SortExpression="Hinh" ItemStyle-CssClass="custom-image-size"/>--%>
            <%--<asp:TemplateField>
                <ItemTemplate>
                    <img src="Hinh_Tour/<%#Eval("Hinh") %>" style="width:100%;height:auto" alt="Alternate Text" />
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" SortExpression="SoDienThoai" />
            <asp:BoundField DataField="NgayMua" HeaderText="Ngày mua" ReadOnly="True" SortExpression="NgayMua" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
            <asp:BoundField DataField="TenDienThoai" HeaderText="Tên điện thoại" ReadOnly="True" SortExpression="TenDienThoai" />
            <asp:BoundField DataField="DonGia" ReadOnly="True" ItemStyle-Width="15%" HeaderText="Đơn giá" DataFormatString="{0: #,##0} $" SortExpression="DonGia" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" ReadOnly="True" SortExpression="SoLuong" />



            <asp:TemplateField ItemStyle-Wrap="false">
                <ItemTemplate>
                    <asp:Button ID="btSua" runat="server" CssClass="btn btn-success" CommandName="Edit" Text="Sửa" />
                    <asp:Button ID="btXoa" OnClientClick="return confirm('Bạn có muốn xoá hóa đơn này?')" runat="server" CommandArgument='<%#Eval("IDCT") %>' CssClass="btn btn-danger" CommandName="" Text="Xoá" OnClick="btXoa_click" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Button ID="btCapnhat" runat="server" CssClass="btn btn-success" CommandName="Update" Text="Ghi" />
                    <asp:Button ID="btKhong" runat="server" CssClass="btn btn-warning" CommandName="Cancel" Text="Không" />
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Label ID="test" runat="server" Text=""></asp:Label>
    <asp:SqlDataSource ID="dsHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>"
        SelectCommand="SELECT *,ChiTietHoaDon.ID as IDCT FROM [HoaDon] INNER JOIN [USERS] ON HOADON.IDUSER = USERS.ID INNER JOIN ChiTietHoaDon ON HoaDon.Id = ChiTietHoaDon.IdHoaDon INNER JOIN DienThoai ON DienThoai.ID = ChiTietHoaDon.IdDienThoai WHERE ([SoDienThoai] LIKE '%' + @SoDienThoai + '%')"
        DeleteCommand="DELETE FROM [HoaDon] WHERE [Id] = @Id"
        InsertCommand="INSERT INTO [HoaDon] ([IDUSER], [SoDienThoai], [NgayMua], [TongTien], [DiaChi]) VALUES (@IDUSER, @SoDienThoai, @NgayMua, @TongTien, @DiaChi)"
        UpdateCommand="UPDATE [HoaDon] SET [SoDienThoai] = @SoDienThoai, [DiaChi] = @DiaChi WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDUSER" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="NgayMua" Type="DateTime" />
            <asp:Parameter Name="TongTien" Type="Decimal" />
            <asp:Parameter Name="DiaChi" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSDT" Name="SoDienThoai" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDUSER" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="NgayMua" Type="DateTime" />
            <asp:Parameter Name="TongTien" Type="Decimal" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
