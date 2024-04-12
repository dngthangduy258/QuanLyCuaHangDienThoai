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
using System.Data;

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
                lbTongTienH.Text = cart.Total.ToString();
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

            string location = diaChi.Trim() + ", "+quanHuyen+", "+tinh;
            DateTime NgayMua = DateTime.Now;
            
            
            int tongTien = Int32.Parse(lbTongTienH.Text);
            // Lấy giá trị của "IDDienThoai" từ GridView gvGioHang
            List<Product> gioHang = new List<Product>();
            foreach (GridViewRow row in gvGioHang.Rows)
            {
                Product item = new Product();
                int idDienThoai = -1;
                if (row.RowType == DataControlRowType.DataRow)
                {
                    // Lấy giá trị của "IDDienThoai" từ DataKeys
                    idDienThoai =Int32.Parse(gvGioHang.DataKeys[row.RowIndex].Value.ToString());
                    item.ID = idDienThoai;

                }
                int soLuong = -1;
                TextBox txtSoLuong = (TextBox)row.FindControl("txtSoLuong");
                if (txtSoLuong != null)
                {
                    soLuong = Int32.Parse(txtSoLuong.Text);
                    item.SoLuong= soLuong;
                }

                string donGia = row.Cells[2].Text.Replace("$", "").Trim();
                decimal gia;
                if (Decimal.TryParse(donGia, System.Globalization.NumberStyles.Currency, System.Globalization.CultureInfo.CurrentCulture, out gia))
                {
                    test.Text = gia.ToString();
                    item.DonGia = gia;
                }
                gioHang.Add(item);
            }


            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["connQuanLyCuaHangDienThoai"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            
                string idSQL = "SELECT ID FROM Users WHERE Email = @Email";
                SqlCommand cmdID = new SqlCommand(idSQL, conn);
                cmdID.Parameters.AddWithValue("@Email", email);
                 int IDUser = 0;
                 using (SqlDataReader reader = cmdID.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        IDUser = Convert.ToInt32(reader["ID"]);
                    }
                }



            string sql = "INSERT INTO [HoaDon] (IDUSER,SoDienThoai,NgayMua,TongTien,DiaChi) VALUES (@IDUSER,@SoDienThoai,@NgayMua,@TongTien,@DiaChi) ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@IDUSER", IDUser);
            cmd.Parameters.AddWithValue("@SoDienThoai", sdt);
            cmd.Parameters.AddWithValue("@NgayMua", NgayMua);
            cmd.Parameters.AddWithValue("@TongTien", tongTien);
            cmd.Parameters.AddWithValue("@DiaChi", location);
            cmd.ExecuteNonQuery();


            int idHoaDon = 0;
            string sqlHoaDon = "SELECT TOP 1 ID FROM HoaDon ORDER BY ID DESC";
            SqlCommand cmdHoaDon = new SqlCommand(sqlHoaDon, conn);         
            using (SqlDataReader readerHD = cmdHoaDon.ExecuteReader())
            {
                while (readerHD.Read())
                {
                    idHoaDon = Convert.ToInt32(readerHD["ID"]);
                }
            }

            foreach (Product item in gioHang)
            {
                string sqlChiTiet = "INSERT INTO [ChiTietHoaDon](IdHoaDon,IdDienThoai,SoLuong,DonGia) VALUES (@IdHoaDon,@IdDienThoai,@SoLuong,@DonGia)";
                SqlCommand cmdChiTiet = new SqlCommand(sqlChiTiet, conn);
                cmdChiTiet.Parameters.AddWithValue("@IdHoaDon", idHoaDon);
                cmdChiTiet.Parameters.AddWithValue("@IdDienThoai", item.ID);
                cmdChiTiet.Parameters.AddWithValue("@SoLuong", item.SoLuong);
                cmdChiTiet.Parameters.AddWithValue("@DonGia", item.DonGia);
                cmdChiTiet.ExecuteNonQuery();
            }
            test.Text = "Thêm thành công";




            // Tiếp tục xử lý các giá trị khác và thực hiện logic đặt hàng

        }
    }
}