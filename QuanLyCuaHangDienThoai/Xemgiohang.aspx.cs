using QuanLyCuaHangDienThoai.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Http;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Net;
using System.Text;
using static System.Net.Mime.MediaTypeNames;
using System.Runtime.CompilerServices;

namespace QuanLyCuaHangDienThoai
{
    public partial class Xemgiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                NapDuLieu();
                if (Session["idNhanVien"] != null )
                {
                    int id =(int)Session["idNhanVien"];
                    string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["connQuanLyCuaHangDienThoai"].ConnectionString;
                    SqlConnection conn = new SqlConnection(chuoi_ket_noi);

                    conn.Open();
                    string sql = "SELECT * FROM Users WHERE ID=@ID";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@ID", id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtTenKH.Text = (string)reader["Ten"];
                            txtEmail.Text = (string)reader["Email"];

                        }
                        
                    }
                }
                
               
            }
            // Lấy danh sách các tỉnh/thành phố của Việt Nam từ API
            List<string> tinhThanhVietNam = GetTinhThanhVietNam();

            // Thêm các tỉnh/thành phố vào DropDownList
            foreach (string tinhThanh in tinhThanhVietNam)
            {
                ddTinh.Items.Add(new System.Web.UI.WebControls.ListItem(tinhThanh, tinhThanh));
            }

        }
       
        private List<string> GetTinhThanhVietNam()
        {
            List<string> tinhThanhVietNam = new List<string>();

            try
            {
                string apiUrl = "http://api.geonames.org/childrenJSON?geonameId=1562822&username=dngthanhduy258"; // Thay đổi 'username=demo' bằng username của bạn
                using (WebClient webClient = new WebClient())
                {
                    webClient.Encoding = Encoding.UTF8;
                    string json = webClient.DownloadString(apiUrl);
                    dynamic data = JsonConvert.DeserializeObject(json);

                    foreach (var item in data.geonames)
                    {
                        string tinhThanh4 = item.toponymName.ToString();
                        string tinhThanh3 = tinhThanh4.Replace("Tỉnh", " ");
                        string tinhThanh2 = tinhThanh3.Replace("Province", " ");
                        string tinhThanh1 = tinhThanh2.Replace("Thành Phố", " ");
                        string tinhThanh11 = tinhThanh1.Replace("Hanoi", "Hà Nội");
                        string tinhThanh = tinhThanh11.Replace("Ho Chi Minh City", "TP.Hồ Chí Minh");
                        
                        tinhThanhVietNam.Add(tinhThanh);
                    }
                }
            }
            catch (Exception ex)
            {
                // Xử lý nếu có lỗi khi gọi API
                // Ví dụ: Log lỗi, hiển thị thông báo cho người dùng
                Console.WriteLine("Có lỗi khi gọi API: " + ex.Message);
            }

            return tinhThanhVietNam;
        }

        private void NapDuLieu()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)

            {
                //liên kết dữ liệu cho gvGioHang
                gvGioHang.DataSource = cart.Items;
                gvGioHang.DataBind();
                //gán tổng thành tiền cho Label
                lbTongTien.Text = string.Format("Tổng thành tiền: <b> {0: #,##0} đồng </b>",cart.Total);
            }
        }
        public void gvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //b1. lấy mã sản phẩm cần xoá khỏi giỏ hàng
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            //b2.lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3.Xoá sản phẩm khỏi giỏ
            cart.Delete(masp);
            //b4.Nạp lại dữ liệu cho gvGioHang (làm tươi lại giao diện)
            NapDuLieu();
        }
        public void gvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //b1. lấy mã sản phẩm cần xoá khỏi giỏ hàng và số lượng
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            int soluong =
            int.Parse(((TextBox)gvGioHang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
            //b2.lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3.Cập nhật lại số lượng cho sản phẩm
            cart.Update(masp, soluong);
            //b4.Nạp lại dữ liệu cho gvGioHang (làm tươi lại giao diện)
            NapDuLieu();
        }
        protected void soLuong_Change(object sender, GridViewUpdateEventArgs e)
        {
            int soLuong = int.Parse(((TextBox)gvGioHang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
        }

        protected void btDatHang_Click(object sender, EventArgs e)
        {
            // Lấy giá trị của TextBox txtTenKH
            string tenKH = txtTenKH.Text;

            // Lấy giá trị của TextBox txtEmail
            string email = txtEmail.Text;

            // Lấy giá trị của TextBox txtSDT
            string sdt = txtSDT.Text;

            // Lấy giá trị của DropDownList ddTinh
            string tinh = ddTinh.SelectedValue;

            // Lấy giá trị của TextBox txtQuanHuyen
            string quanHuyen = txtQuanHuyen.Text;

            // Lấy giá trị của TextBox txtDiaChi
            string diaChi = txtDiaChi.Text;

            // Lấy giá trị của "IDDienThoai" từ GridView gvGioHang
            List<string> idDienThoaiList = new List<string>();
            foreach (GridViewRow row in gvGioHang.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    // Lấy giá trị của "IDDienThoai" từ DataKeys
                    string idDienThoai = gvGioHang.DataKeys[row.RowIndex].Value.ToString();
                    idDienThoaiList.Add(idDienThoai);
                }`
            }

            // Tiếp tục xử lý các giá trị khác và thực hiện logic đặt hàng

        }
    }
}