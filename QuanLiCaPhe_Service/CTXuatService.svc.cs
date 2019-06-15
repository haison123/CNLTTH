using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DTO_QLCP;
using System.Data;
using DAL_QLCP;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CTXuatService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CTXuatService.svc or CTXuatService.svc.cs at the Solution Explorer and start debugging.
    public class CTXuatService : ICTXuatService
    {
        DAL_CTXuat dalctx = new DAL_CTXuat();
        public void DoWork()
        {
        }

        public DataTable getDSXuatNL(int maPX)
        {
            return dalctx.getDSXuatNL(maPX);
        }

        public DataTable DSCTPX()
        {
            return dalctx.DSCTPX();
        }

        public DataTable Search(int mapx)
        {
            return dalctx.Search(mapx);
        }

        public DataTable getMaNL()
        {
            return dalctx.getMaNL();
        }

        public string getTenNL(string maNL)
        {
            return dalctx.getTenNL(maNL);
        }

        public string getDVTNL(string maNL)
        {
            return dalctx.getDVTNL(maNL);
        }

        public bool kiemTraXuatNL(int maPX)
        {
            return dalctx.kiemTraXuatNL(maPX);
        }

        public bool kiemTraTonTai(int maPX, string maNL)
        {
            return dalctx.kiemTraTonTai(maPX, maNL);
        }

        public string laySLCon(string maNL)
        {
            return dalctx.laySLCon(maNL);
        }

        public bool ThemCTXuat(CTXuatNL ct)
        {
            return dalctx.ThemCTXuat(ct);
        }

        public bool SuaCTXuat(CTXuatNL ct)
        {
            return dalctx.SuaCTXuat(ct);
        }

        public bool XoaCTXuat(CTXuatNL ct)
        {
            return dalctx.XoaCTXuat(ct);
        }
    }
}
