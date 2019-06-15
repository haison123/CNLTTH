using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using DAL_QLCP;
using DTO_QLCP;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "NguyenLieuServices" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select NguyenLieuServices.svc or NguyenLieuServices.svc.cs at the Solution Explorer and start debugging.
    public class NguyenLieuServices : INguyenLieuServices
    {
        DBAccess db = new DBAccess();
        DAL_NguyenLieu dalnl = new DAL_NguyenLieu();
        public void DoWork()
        {
        }

        public DataTable getDSNL()
        {
            return dalnl.getDSNL();
        }

        public DataTable getDSNL_theoma(string maNL)
        {
            return dalnl.getDSNL_theoma(maNL);
        }

        public bool kiemTraNL(string maNL)
        {
            return dalnl.kiemTraNL(maNL);
        }

        public bool SuaNL(NguyenLieu nl)
        {
            return dalnl.SuaNL(nl);
        }

        public bool ThemNL(NguyenLieu nl)
        {
            return dalnl.ThemNL(nl);
        }

        public bool XoaNL(NguyenLieu nl)
        {
            return dalnl.XoaNL(nl);
        }
    }
}
