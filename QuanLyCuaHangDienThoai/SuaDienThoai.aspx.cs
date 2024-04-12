using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyCuaHangDienThoai
{
    public partial class SuaDienThoai_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["ID"];
                // Sử dụng biến id để truy vấn từ database và hiển thị dữ liệu
                
            }
        }
    }
}