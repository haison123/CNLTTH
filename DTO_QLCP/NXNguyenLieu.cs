using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO_QLCP
{
    public class NXNguyenLieu
    {
        private int maPhieuXuat;
        private DateTime ngayXuat;
        private int  maPhieuNhap;
        private DateTime ngayNhap;
        private float tongTien;

        public string MaNV { set; get; }
        public int MaPhieuNhap
        {
            get { return maPhieuNhap; }
            set { maPhieuNhap = value; }
        }
        public DateTime NgayNhap
        {
            get { return ngayNhap; }
            set { ngayNhap = value; }
        }
        public float TongTien
        {
            get { return tongTien; }
            set { tongTien = value; }
        }
        public int  MaPhieuXuat
        {
            get { return maPhieuXuat; }
            set { maPhieuXuat = value; }
        }
        public DateTime NgayXuat
        {
            get { return ngayXuat; }
            set { ngayXuat = value;}
        }
    }
}
