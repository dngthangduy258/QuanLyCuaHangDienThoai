using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyCuaHangDienThoai
{
    public partial class site1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Page.Title = "Trang chủ";
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}