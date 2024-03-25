using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyCuaHangDienThoai
{
	public partial class Themdienthoai : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {   
            //Kết nối sql server
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["connQuanLyCuaHangDienThoai"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            
            
            //Tên điện thoại
            string tenDT = txtTen.Text;

            //Màn hình
			string congNghe = ddlManHinh1.SelectedItem.ToString();          //Công nghệ
            string doPhanGiai = ddlManHinh2.SelectedItem.ToString();        //Độ phân giải màn hình
            string doRongMan = ddlManHinh3.SelectedItem.ToString();         //Độ rộng màn hình
            string doSang = ddlManHinh4.SelectedItem.ToString();            //Độ sáng màn hình
            string manCamUng = ddlManHinh5.SelectedItem.ToString();         //Màn cảm ứng

            string hang = ddlHang.SelectedItem.ToString();                  //Hãng
            string heDieuHanh = ddlHeDieuHanh.SelectedItem.ToString();      //Hệ điều hành

            string CamFDoPhanGiai = ddCamFDPG.SelectedItem.ToString();      //Cam F độ phân giải
            string CamFQuayPhim = ddCamFQuayPhim.SelectedItem.ToString();   //Cam F quay phim
            string CamFChupAnh = ddCamFChupAnh.SelectedItem.ToString();     //Cam F chụp ảnh
            int camFFlash = chkCamFFalsh.Checked ? 1 : 0;                   //Cam F Flash

            string CamBDoPhanGiai = ddCamBDPG.SelectedItem.ToString();      //Cam B độ phân giải
            string CamBQuayPhim = ddCamBQuayPhim.SelectedItem.ToString();   //Cam B quay phim
            string CamBChupAnh = ddCamBChupAnh.SelectedItem.ToString();     //Cam B chụp ảnh
            int camBFlash = chkCamBFalsh.Checked ? 1 : 0;                   //Cam B Flash

            string ram = ddRam.SelectedItem.ToString();                     //Ram
            string dungLuong = ddDungLuong.SelectedItem.ToString();         //Dung lượng
            string sac = ddSac.SelectedItem.ToString();                     //Sạc

            string pin = ddPinDungLuong.SelectedItem.ToString();            //Pin
            string loaiPin = ddPinLoai.SelectedItem.ToString();             //Loại pin

            string loaiSim = ddSimLoai.SelectedItem.ToString();             //Loại sim
            string soKheSim = ddSimSoKhe.SelectedItem.ToString();           //Số khe sim

            string khuyenMai = ddTenKM.SelectedItem.ToString();             //Tên khuyến mãi
            string phanTramKM = ddPhanTramKM.SelectedItem.ToString();       //Phần trăm KM


            //Insert vào màn hình
            string sqlManHinh = "INSERT INTO ManHinh(CongNghe,DoPhanGiai,DoRongMan,DoSang,ManCamUng) VALUES (@CongNghe,@DoPhanGiai,@DoRongMan,@DoSang,@ManCamUng)";
            SqlCommand cmdManHinh = new SqlCommand(sqlManHinh, conn);
            cmdManHinh.Parameters.AddWithValue("@CongNghe", congNghe);
            cmdManHinh.Parameters.AddWithValue("@DoPhanGiai", doPhanGiai);
            cmdManHinh.Parameters.AddWithValue("@DoRongMan", doRongMan);
            cmdManHinh.Parameters.AddWithValue("@DoSang", doSang);
            cmdManHinh.Parameters.AddWithValue("@ManCamUng", manCamUng);
            //Insert vào hãng
            string sqlHang = "INSERT INTO Hang(Ten) VALUES (@Ten)";
            SqlCommand cmdHang = new SqlCommand(sqlHang, conn);
            cmdHang.Parameters.AddWithValue("@Ten", hang);
            //Insert vào hệ điều hành
            string sqlHDH = "INSERT INTO HeDieuHanh(Ten) VALUES (@Ten)";
            SqlCommand cmdHDH = new SqlCommand(sqlHDH, conn);
            cmdHDH.Parameters.AddWithValue("@Ten", heDieuHanh);
            //Insert vào Cam trước
            string sqlCamF = "INSERT INTO CameraTruoc (DoPhanGiai,QuayPhim,Flash,ChupAnh) VALUES (@DoPhanGiai,@QuayPhim,@Flash,@ChupAnh)";
            SqlCommand cmdCamF = new SqlCommand(sqlCamF, conn);
            cmdCamF.Parameters.AddWithValue("@DoPhanGiai", CamFDoPhanGiai);
            cmdCamF.Parameters.AddWithValue("@QuayPhim", CamFQuayPhim);
            cmdCamF.Parameters.AddWithValue("@Flash", camFFlash);
            cmdCamF.Parameters.AddWithValue("@ChupAnh", CamFChupAnh);
            //Insert vào Cam Sau
            string sqlCamB = "INSERT INTO CameraSau(DoPhanGiai,QuayPhim,Flash,ChupAnh) VALUES (@DoPhanGiai,@QuayPhim,@Flash,@ChupAnh)";
            SqlCommand cmdCamB = new SqlCommand(sqlCamB, conn);
            cmdCamB.Parameters.AddWithValue("@DoPhanGiai", CamBDoPhanGiai);
            cmdCamB.Parameters.AddWithValue("@QuayPhim", CamBQuayPhim);
            cmdCamB.Parameters.AddWithValue("@Flash", camBFlash);
            cmdCamB.Parameters.AddWithValue("@ChupAnh", CamBChupAnh);
            //Insert vào ram
            string sqlRam = "INSERT INTO Ram(DungLuong) VALUES (@DungLuong)";
            SqlCommand cmdRam = new SqlCommand(sqlRam, conn);
            cmdRam.Parameters.AddWithValue("@DungLuong", ram);
            //Insert vào dung lượng
            string sqlDungLuong = "INSERT INTO DungLuong(DungLuong) VALUES (@DungLuong)";
            SqlCommand cmdDungLuong = new SqlCommand(sqlDungLuong, conn);
            cmdDungLuong.Parameters.AddWithValue("@DungLuong", dungLuong);
            //Insert vào sạc
            string sqlSac = "INSERT INTO Sac(LoaiSac) VALUES (@LoaiSac)";
            SqlCommand cmdSac = new SqlCommand(sqlSac, conn);
            cmdSac.Parameters.AddWithValue("@LoaiSac", sac);
            //Insert vào Pin
            string sqlPin = "INSERT INTO Pin(DungLuong,LoaiPin) VALUES (@DungLuong,@LoaiPin)";
            SqlCommand cmdPin = new SqlCommand(sqlPin, conn);
            cmdPin.Parameters.AddWithValue("@DungLuong", pin);
            cmdPin.Parameters.AddWithValue("@LoaiPin", loaiPin);
            //Insert vào Sim
            string sqlSim = "INSERT INTO Sim(LoaiSim,SoSim) VALUES (@LoaiSim,@SoSim)";
            SqlCommand cmdSim = new SqlCommand(sqlSim, conn);
            cmdSim.Parameters.AddWithValue("@LoaiSim", loaiSim);
            cmdSim.Parameters.AddWithValue("@SoSim", soKheSim);
            //Insert vào khuyến mãi
            string sqlKM = "INSERT INTO KhuyenMai(TenKhuyenMai,PhanTramGiam) VALUES (@TenKhuyenMai,@PhanTramGiam)";
            SqlCommand cmdKM = new SqlCommand(sqlKM, conn);
            cmdKM.Parameters.AddWithValue("@TenKhuyenMai", khuyenMai);
            cmdKM.Parameters.AddWithValue("@PhanTramGiam", phanTramKM);
            //Insert vào Hình ảnh
            string sqlHinhAnh = "INSERT INTO HinhAnh(AnhBia,AnhBia1,AnhBia2,AnhBia3,AnhBia4) VALUES (@AnhBia,@AnhBia1,@AnhBia2,@AnhBia3,@AnhBia4)";
            SqlCommand cmdHinhAnh = new SqlCommand(sqlHinhAnh, conn);

            if (fupAnhBia.HasFile)
            {
                string path = Server.MapPath("~/Upload/") + fupAnhBia.FileName;
                fupAnhBia.SaveAs(path);
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia", fupAnhBia.FileName);
            }
            else
            {
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia", "no_image.png");
            }

            if (fupAnh1.HasFile)
            {
                string path = Server.MapPath("~/Upload/") + fupAnh1.FileName;
                fupAnh1.SaveAs(path);
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia1", fupAnh1.FileName);
            }
            else
            {
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia1", "no_image.png");
            }

            if (fupAnh2.HasFile)
            {
                string path = Server.MapPath("~/Upload/") + fupAnh2.FileName;
                fupAnh2.SaveAs(path);
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia2", fupAnh2.FileName);
            }
            else
            {
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia2", "no_image.png");
            }

            if (fupAnh3.HasFile)
            {
                string path = Server.MapPath("~/Upload/") + fupAnh3.FileName;
                fupAnh3.SaveAs(path);
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia3", fupAnh3.FileName);
            }
            else
            {
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia3", "no_image.png");
            }

            if (fupAnh4.HasFile)
            {
                string path = Server.MapPath("~/Upload/") + fupAnh4.FileName;
                fupAnh4.SaveAs(path);
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia4", fupAnh4.FileName);
            }
            else
            {
                cmdHinhAnh.Parameters.AddWithValue("@AnhBia4", "no_image.png");
            }

            cmdManHinh.ExecuteNonQuery();
            cmdHang.ExecuteNonQuery();
            cmdHDH.ExecuteNonQuery();
            cmdCamF.ExecuteNonQuery();
            cmdCamB.ExecuteNonQuery();
            cmdRam.ExecuteNonQuery();
            cmdDungLuong.ExecuteNonQuery();
            cmdSac.ExecuteNonQuery();
            cmdPin.ExecuteNonQuery();
            cmdSim.ExecuteNonQuery();
            cmdKM.ExecuteNonQuery();
            cmdHinhAnh.ExecuteNonQuery();

            //Insert vào điện thoại

            //            int check = cmd.ExecuteNonQuery();
            //            SELECT TOP 1 id
            //FROM HinhAnh
            //ORDER BY ID DESC;

            //SqlDataReader reader = cmd.ExecuteReader()
        }
    }
}