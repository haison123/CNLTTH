using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DTO_QLCP;
using System.Data.SqlClient;


namespace DAL_QLCP
{
    public class DAL_report
    {
        SqlConnection connect = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=QuanLiCaPhe;Integrated Security=True");

        DBAccess db = new DBAccess();
        public DSBangLuong report_BL(int t)
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "SELECT Thang,MaNV,TenNV,TongGioLam,MucLuong,TienLuong FROM tblBangLuong where Thang='" + t + "'";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSBangLuong ds = new DSBangLuong();
            dscm.Fill(ds, "tblBangLuong");
            connect.Close();

            return ds;
        }
        public DSBanSDNhieu report_BSDN(int i)
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "SELECT top " + i + " * FROM tblBanSDNhieu ORDER BY LuotSD DESC";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSBanSDNhieu ds = new DSBanSDNhieu();
            dscm.Fill(ds, "tblBanSDNhieu");
            connect.Close();

            return ds;
        }
        public  DSCTBanHang report_BH_ngay(DateTime ngay)
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "Select * from tblCTDoanhThu where Ngay='" + ngay + "'";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSCTBanHang ds = new DSCTBanHang();
            dscm.Fill(ds, "tblCTDoanhThu");
            connect.Close();

            return ds;
        }
        public  DSCTBanHang report_BH_mamon ( string maMon)
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "Select * from tblCTDoanhThu where MaMon='" + maMon + "'";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSCTBanHang ds = new DSCTBanHang();
            dscm.Fill(ds, "tblCTDoanhThu");
            connect.Close();

            return ds;
        }
        public DSCTBanHang report_BH (DateTime ngay, string maMon)
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "Select * from tblCTDoanhThu where MaMon='" + maMon + "' and Ngay='" + ngay + "'";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSCTBanHang ds = new DSCTBanHang();
            dscm.Fill(ds, "tblCTDoanhThu");
            connect.Close();

            return ds;
        }

        public DSDoanhThu  report_DT()
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "SELECT * FROM tblDoanhThu";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSDoanhThu ds = new DSDoanhThu();
            dscm.Fill(ds, "tblDoanhThu");
            connect.Close();

            return ds;
        }

        public DSHoaDon report_HD(int i)
        {
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            string query = "SELECT MaHD,MaMon,TenMon,SoLuong,DonGia,ThanhTien FROM tblCTHoaDon where MaHD='" + i + "'";
            SqlDataAdapter dscm = new SqlDataAdapter(query, connect);
            DSHoaDon ds = new DSHoaDon();
            dscm.Fill(ds, "tblCTHoaDon");
            connect.Close();

            return ds;
        }
    }
}
