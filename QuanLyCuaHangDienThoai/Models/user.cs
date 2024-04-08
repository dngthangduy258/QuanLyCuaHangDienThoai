using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyCuaHangDienThoai.Models
{
    public class user
    {
        public int ID { set; get; }
        public string Ten { set; get; }
        public string Email { set; get; }
        public bool LaNhanVien { set; get; }
        
    }
}