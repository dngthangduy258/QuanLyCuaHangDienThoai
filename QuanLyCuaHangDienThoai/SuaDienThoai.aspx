<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="SuaDienThoai.aspx.cs" Inherits="QuanLyCuaHangDienThoai.SuaDienThoai_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvDienThoai" CssClass="table table-bordered mt-2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="dsDienThoai" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenDienThoai" HeaderText="TenDienThoai" SortExpression="TenDienThoai" />
            <asp:BoundField DataField="IDManHinh" HeaderText="IDManHinh" SortExpression="IDManHinh" />
            <asp:BoundField DataField="IDHang" HeaderText="IDHang" SortExpression="IDHang" />
            <asp:BoundField DataField="IDHeDieuHanh" HeaderText="IDHeDieuHanh" SortExpression="IDHeDieuHanh" />
            <asp:BoundField DataField="IDCameraTruoc" HeaderText="IDCameraTruoc" SortExpression="IDCameraTruoc" />
            <asp:BoundField DataField="IDCameraSau" HeaderText="IDCameraSau" SortExpression="IDCameraSau" />
            <asp:BoundField DataField="IDRam" HeaderText="IDRam" SortExpression="IDRam" />
            <asp:BoundField DataField="IDDungLuong" HeaderText="IDDungLuong" SortExpression="IDDungLuong" />
            <asp:BoundField DataField="IDSim" HeaderText="IDSim" SortExpression="IDSim" />
            <asp:BoundField DataField="IDPin" HeaderText="IDPin" SortExpression="IDPin" />
            <asp:BoundField DataField="IDSac" HeaderText="IDSac" SortExpression="IDSac" />
            <asp:BoundField DataField="IDKhuyenMai" HeaderText="IDKhuyenMai" SortExpression="IDKhuyenMai" />
            <asp:BoundField DataField="IDHinhAnh" HeaderText="IDHinhAnh" SortExpression="IDHinhAnh" />
            <asp:BoundField DataField="ThongTin" HeaderText="ThongTin" SortExpression="ThongTin" />
            <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

    <asp:SqlDataSource ID="dsDienThoai" runat="server" ConnectionString="<%$ ConnectionStrings:connQuanLyCuaHangDienThoai %>" SelectCommand="SELECT * FROM [DienThoai] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
