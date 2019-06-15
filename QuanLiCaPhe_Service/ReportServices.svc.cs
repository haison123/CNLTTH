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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ReportServices" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ReportServices.svc or ReportServices.svc.cs at the Solution Explorer and start debugging.
    public class ReportServices : IReportServices
    {
        DAL_report dal_rp = new DAL_report();
        public void DoWork()
        {
        }

        public DSCTBanHang report_BH(DateTime ngay, string maMon)
        {
            return dal_rp.report_BH(ngay, maMon);
        }

        public DSCTBanHang report_BH_mamon(string maMon)
        {
            return dal_rp.report_BH_mamon(maMon);
        }

        public DSCTBanHang report_BH_ngay(DateTime ngay)
        {
            return dal_rp.report_BH_ngay(ngay);
        }

        public DSBangLuong report_BL(int t)
        {
            return dal_rp.report_BL(t);
        }

        public DSBanSDNhieu report_BSDN(int i)
        {
            return dal_rp.report_BSDN(i);
        }

        public DSDoanhThu report_DT()
        {
            return dal_rp.report_DT();
        }

        public DSHoaDon report_HD(int i)
        {
            return dal_rp.report_HD(i);
        }
    }
}
