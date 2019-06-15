using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DAL_QLCP;
using DTO_QLCP;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "BangLuongService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select BangLuongService.svc or BangLuongService.svc.cs at the Solution Explorer and start debugging.
    public class BangLuongService : IBangLuongService
    {
        DAL_BangLuong dalbl = new DAL_BangLuong();
        public void DoWork()
        {
        }

        public string layChucVu(string maNV)
        {
            return dalbl.layChucVu(maNV);
        }

        public string layGioLam(string maNV, int thang)
        {
            return dalbl.layGioLam(maNV, thang);
        }

        public bool kiemTraBangLuong(int thang, string maNV)
        {
            return dalbl.kiemTraBangLuong(thang, maNV);
        }

        public bool ThemBangLuong(BangLuong bl)
        {
             return dalbl.ThemBangLuong(bl);
        }

        public bool SuaBangLuong(BangLuong bl)
        {
            return dalbl.SuaBangLuong(bl);
        }
    }
}
