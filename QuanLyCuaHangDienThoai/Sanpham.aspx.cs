using QuanLyCuaHangDienThoai.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace QuanLyCuaHangDienThoai
{
    public partial class Sanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void dsDienThoai_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }
        protected void btAddToCart_Click(object sender, EventArgs e)
        {
            //lấy mã sản phẩm từ người dùng chọn
            int id = int.Parse(((Button)sender).CommandArgument);
            //thêm sản phẩm vào giỏ hàng (dùng lớp Cart, CartItem và đối tượng Session)
            Cart cart = (Cart)Session["CART"]; //vào Session lấy ra giỏ hàng của người dùng
            if (cart == null) //nếu chưa có
            {
                cart = new Cart(); //tạo giỏ hàng
                                   //lưu vào Session
                Session["CART"] = cart;
            }
            else
            {
                
            }
            //thêm sản phẩm vào giỏ
            cart.Add(id);
            //thông báo cho người dùng (hoặc chuyển hướng đến trang XemGio.aspx)
            Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string id = btn.CommandArgument;
            Response.Redirect("SuaDienThoai.aspx?ID=" + id);
        }

        protected void btnSeeMore_Click(object sender, EventArgs e)
        {
            Application["DemLuot"] = (int)Application["DemLuot"] + 1;
            int page = (int)Application["DemLuot"];
            Response.Redirect("Sanpham.aspx?page="+page);

        }
    }
}