using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DAL_QLCP;
using DTO_QLCP;
using System.Data;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "NXNguyenLieuService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select NXNguyenLieuService.svc or NXNguyenLieuService.svc.cs at the Solution Explorer and start debugging.
    public class NXNguyenLieuService : INXNguyenLieuService
    {
        DBAccess db = new DBAccess();
        DAL_NXNguyenLieu dalnxnl = new DAL_NXNguyenLieu();
        public void DoWork()
        {
        }

        public int layMaPhieuNhap()
        {
            return dalnxnl.layMaPhieuNhap();
        }

        public int layMaPhieuXuat()
        {
            return dalnxnl.layMaPhieuXuat();
        }

        public bool NhapNL(NXNguyenLieu nl)
        {
            return dalnxnl.NhapNL(nl);
        }

        public bool XoaNhapNL(NXNguyenLieu nl)
        {
            return dalnxnl.XoaNhapNL(nl);
        }

        public bool XuatNL(NXNguyenLieu nl)
        {
            return dalnxnl.XuatNL(nl);
        }

        public bool XoaXuatNL(NXNguyenLieu nl)
        {
            return dalnxnl.XoaXuatNL(nl);
        }

        public void update_tongtien(int mapn)
        {
            dalnxnl.update_tongtien(mapn);
        }

        public DataTable LayDSPN()
        {
            return dalnxnl.LayDSPN();
        }

        public DataTable Search_PN(int mapn)
        {
            return dalnxnl.Search_PN(mapn);
        }

        public DataTable LayDSPX()
        {
            return dalnxnl.LayDSPX();
        }

        public DataTable Search_PX(int mapx)
        {
            return dalnxnl.Search_PX(mapx);
        }
    }
}
