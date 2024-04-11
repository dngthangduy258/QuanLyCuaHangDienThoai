<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Xemgiohang.aspx.cs" Inherits="QuanLyCuaHangDienThoai.Xemgiohang" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Giỏ hàng</h1>
    <asp:GridView ID="gvGioHang" runat="server"
        CssClass="table table-bordered" AutoGenerateColumns="false" DataKeyNames="IDDienThoai" OnRowDeleting="gvGioHang_RowDeleting"
        OnRowUpdating="gvGioHang_RowUpdating" >

        <Columns>
            <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinh"
                DataImageUrlFormatString="images/dienthoai/{0}"
                HeaderText="Ảnh sản phẩm" ControlStyle-Width="150px">
            </asp:ImageField>
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="TenDT" />
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia"
                DataFormatString="{0:#,##0}$" />
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server"
                        CssClass="form-control text-center" Width="100px" AutoPostBack="true" Text='<%# Eval("soluong")%>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField HeaderText="Thành tiền" DataField="Thanhtien"
                DataFormatString="{0:#,##0}đ" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btUpdate" runat="server" CommandName="Update" CssClass="btn btn-secondary">
                          <i class="bi bi-pencil-square"></i> Update
                    </asp:LinkButton>
                    <asp:LinkButton ID="btDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger">
                         <i class="bi bi-trash"></i>  Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info">
                Chưa có sản phẩm trong giỏ
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="row">
        <div class="col-md-6">
            <a href="Sanpham.aspx" class="btn btn-info">Tiếp tục mua hàng</a>
        </div>
        <div class="col-md-6 text-right">
            <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
            <asp:Label ID="lbTongTienH" runat="server" Visible="false" Text=""></asp:Label>

        </div>
    </div>
    <div class="row" style="padding-bottom: 10px">
        <div class="col-2"></div>
        <div class="col-8 m-auto row">


            <div>
                <label for="" class="form-label mt-4">Tên khách hàng:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtTenKH" placeholder="Tên khách hàng..." />
            </div>

            <div>
                <label for="" class="form-label mt-4">Email:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email..." />
            </div>

            <div>
                <label for="" class="form-label mt-4">Số điện thoại:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtSDT" placeholder="Số điện thoại..." />
            </div>
            <div class="col-4">
                <label for="" class="form-label mt-4">Tỉnh:</label>
                <asp:DropDownList CssClass="form-control" ID="ddTinh" runat="server"></asp:DropDownList>
            </div>
            <div class="col-4">
                <label for="" class="form-label mt-4">Quận/huyện:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtQuanHuyen" placeholder="Quận/huyện..." />
            </div>
             <div class="col-4">
                <label for="" class="form-label mt-4">Địa chỉ:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDiaChi" placeholder="Xã, tên đường, số nhà..." />
            </div>
            <div class="text-center">
                 <asp:Button  ID="btnDatHang" runat="server" Text="Đặt hàng" CssClass="btn btn-success mt-4" OnClick="btDatHang_Click" />
            </div>
            <asp:Label ID="test" runat="server" Text=""></asp:Label>
        </div>
        <div class="col-2"></div>


    </div>
</asp:Content>
