<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLayout.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="QuanLyCuaHangDienThoai.Sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="dsDienThoai" runat="server" ConnectionString="<%$ ConnectionStrings:connCuaHangDienThoai %>" DeleteCommand="DELETE FROM [DienThoai] WHERE [MaID] = @MaID" InsertCommand="INSERT INTO [DienThoai] ([Ten], [Gia], [SoLuongTonKho], [Ma_NhaSanXuat] VALUES (@Ten, @Gia, @SoLuongTonKho, @Ma_NhaSanXuat)" SelectCommand="SELECT * FROM [DienThoai]" UpdateCommand="UPDATE [DienThoai] SET [Ten] = @Ten, [Gia] = @Gia, [SoLuongTonKho] = @SoLuongTonKho, [Ma_NhaSanXuat] = @Ma_NhaSanXuat WHERE [MaID] = @MaID">
            <DeleteParameters>
                <asp:Parameter Name="MaID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ten" Type="String" />
                <asp:Parameter Name="Gia" Type="Int32" />
                <asp:Parameter Name="SoLuongTonKho" Type="Int32" />
                <asp:Parameter Name="Ma_NhaSanXuat" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten" Type="String" />
                <asp:Parameter Name="Gia" Type="Int32" />
                <asp:Parameter Name="SoLuongTonKho" Type="Int32" />
                <asp:Parameter Name="Ma_NhaSanXuat" Type="Int32" />
                <asp:Parameter Name="MaID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>   
        <asp:GridView ID="gvDienThoai" runat="server" AutoGenerateColumns="False" DataKeyNames="MaID" DataSourceID="dsDienThoai">
            <Columns>
                <asp:BoundField DataField="MaID" HeaderText="MaID" InsertVisible="False" ReadOnly="True" SortExpression="MaID" />
                <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:BoundField DataField="SoLuongTonKho" HeaderText="SoLuongTonKho" SortExpression="SoLuongTonKho" />
                <asp:BoundField DataField="Ma_NhaSanXuat" HeaderText="Ma_NhaSanXuat" SortExpression="Ma_NhaSanXuat" />
                <asp:ButtonField CommandName="Delete" ButtonType="Button" ControlStyle-CssClass="btn btn alert-danger" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
