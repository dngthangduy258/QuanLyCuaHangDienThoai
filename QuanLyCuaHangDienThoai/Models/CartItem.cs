using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyCuaHangDienThoai.Models
{
    public class CartItem
    {
        public int IDDienThoai { set; get; }
        public string TenDT { set; get; }
        public string Hinh { set; get; }
        public Double DonGia { set; get; }
        public int SoLuong { set; get; }
        public int ThanhTien
        {
            get { return SoLuong * (int)DonGia; }
        }
    }
}