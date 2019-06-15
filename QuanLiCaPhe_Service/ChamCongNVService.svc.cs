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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ChamCongNVService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ChamCongNVService.svc or ChamCongNVService.svc.cs at the Solution Explorer and start debugging.
    public class ChamCongNVService : IChamCongNVService
    {
        DAL_ChamCongNV dalcc = new DAL_ChamCongNV();
        public void DoWork()
        {
        }

        public DataTable getDSCCNV()
        {
            return dalcc.getDSCCNV();
        }

        public string getTenNV(string maNV)
        {
            return dalcc.getTenNV(maNV);
        }

        public bool kiemtraCCNV(string maNV, DateTime ngay, string caLam)
        {
            return dalcc.kiemtraCCNV(maNV, ngay, caLam);
        }

        public bool ThemCC(ChamCongNV ccnv)
        {
            return dalcc.ThemCC(ccnv);
        }

        public bool SuaCC(ChamCongNV ccnv)
        {
            return dalcc.SuaCC(ccnv);
        }

        public bool XoaCC(ChamCongNV ccnv)
        {
            return dalcc.XoaCC(ccnv);
        }
    }
}
