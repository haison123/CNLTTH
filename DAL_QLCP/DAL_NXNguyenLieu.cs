using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO_QLCP;
using DAL_QLCP;
using System.Data.SqlClient;
using System.Data;

namespace DAL_QLCP
{
    public class DAL_NXNguyenLieu
    {
        DBAccess db = new DBAccess();
        int i = 0;
        float TongTien_ = 0;
        public int layMaPhieuNhap()
        {
            i = db.layMaPhieuNhap("tblNhapNL", "MaPhieuNhap");
            return i;
        }

        public int layMaPhieuXuat()
        {
            i = db.layMaPhieuXuat("tblXuatNL", "MaPhieuXuat");
            return i;
        }

        public DataTable LayDSPN()
        {
            DataTable dt = db.getDS("SELECT * FROM dbo.tblNhapNL");
            return dt;
        }

        public DataTable LayDSPX()
        {
            DataTable dt = db.getDS("SELECT * FROM dbo.tblXuatNL");
            return dt;
        }

        public DataTable Search_PN(int mapn)
        {
            DataTable dt = db.getDS("SELECT * FROM dbo.tblNhapNL WHERE MaPhieuNhap LIKE "+ mapn +" ");
            return dt;
        }

        public DataTable Search_PX(int mapx)
        {
            DataTable dt = db.getDS("SELECT * FROM dbo.tblXuatNL WHERE MaPhieuXuat LIKE " + mapx + " ");
            return dt;
        }

        public bool NhapNL(NXNguyenLieu nl)
        {
            string[] param = { "@MaPN", "@NgayNhap", "@TongTien", "@MaNV" };
            object[] values = { nl.MaPhieuNhap, nl.NgayNhap, nl.TongTien, nl.MaNV };
            string query = "Insert into tblNhapNL(MaPhieuNhap,NgayNhap,TongTien,MaNV) values(@MaPN,@NgayNhap, @TongTien,@MaNV)";
            return db.ExecuteNonQueryPara(query, param, values);
        }

        public void update_tongtien(int mapn)
        {
            string sql = string.Format("UPDATE dbo.tblNhapNL SET  TongTien = (SELECT  SUM(ThanhTien)  FROM dbo.tblCTNhapNL WHERE MaPhieuNhap = {0}) WHERE MaPhieuNhap = {1}", mapn, mapn);
            db.Execute(sql);
        }

        public bool XoaNhapNL(NXNguyenLieu nl)
        {
            string[] param = { "@MaPN" };
            object[] values = { nl.MaPhieuNhap };
            string query = "Delete from tblNhapNL where MaPhieuNhap=@MaPN";
            return db.ExecuteNonQueryPara(query, param, values);
        }

        public bool XuatNL(NXNguyenLieu nl)
        {
            string[] param = { "@MaPX", "@NgayXuat", "@MaNV" };
            object[] values = { nl.MaPhieuXuat, nl.NgayXuat, nl.MaNV };
            string query = "Insert into tblXuatNL(MaPhieuXuat,NgayXuat,MaNV) values (@MaPX,@NgayXuat,@MaNV)";
            return db.ExecuteNonQueryPara(query, param, values);
        }

        public bool XoaXuatNL(NXNguyenLieu nl)
        {
            string[] param = { "@MaPX" };
            object[] values = { nl.MaPhieuXuat };
            string query = "Delete from tblXuatNL where MaPhieuXuat=@MaPX";
            return db.ExecuteNonQueryPara(query, param, values);
        }
    }
}
