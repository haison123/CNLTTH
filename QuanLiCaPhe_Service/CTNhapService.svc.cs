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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CTNhapService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CTNhapService.svc or CTNhapService.svc.cs at the Solution Explorer and start debugging.
    public class CTNhapService : ICTNhapService
    {
        DAL_CTNhap dalctn = new DAL_CTNhap();
        public void DoWork()
        {
        }

        public DataTable Search_DSNhapNL(int maPN)
        {
            return dalctn.Search_DSNhapNL(maPN);
        }

        public DataTable DSCTPN()
        {
            return dalctn.DSCTPN();
        }

        public bool kiemTraNhapNL(int maPN)
        {
            return dalctn.kiemTraNhapNL(maPN);
        }

        public bool kiemTraTonTai(int maPN, string maNL)
        {
            return dalctn.kiemTraTonTai(maPN, maNL);
        }

        public DataTable getMaNL()
        {
            return dalctn.getMaNL();
        }

        public string getTenNL(string maNL)
        {
            return dalctn.getTenNL(maNL);
        }

        public string getDVTNL(string maNL)
        {
            return dalctn.getDVTNL(maNL);
        }

        public string getDonGia(string maNL)
        {
            return dalctn.getDonGia(maNL);
        }

        public bool ThemCTNhap(CTNhapNL ct)
        {
            return dalctn.ThemCTNhap(ct);
        }

        public bool SuaCTNhap(CTNhapNL ct)
        {
            return dalctn.SuaCTNhap(ct);
        }

        public bool XoaCTNhap(CTNhapNL ct)
        {
            return dalctn.XoaCTNhap(ct);
        }

        public DataTable search(int mapn)
        {
            return dalctn.search(mapn);
        }
    }
}
