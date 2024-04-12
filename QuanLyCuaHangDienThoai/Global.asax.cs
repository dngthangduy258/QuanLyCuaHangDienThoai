using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;
namespace QuanLyCuaHangDienThoai
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            int demluot = 1;
            Application["DemLuot"] = demluot;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
           
        }
    }
}