using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyCuaHangDienThoai
{
    public partial class HoaDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btXoa_click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string IDCT = button.CommandArgument;
            
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["connQuanLyCuaHangDienThoai"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();

            string sql = "DELETE  FROM ChiTietHoaDon WHERE ID = @ID";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@ID", IDCT);
            cmd.ExecuteNonQuery();
            conn.Close();

            // Tải lại dữ liệu vào GridView
            gvHoaDon.DataBind();
        }
    }
}