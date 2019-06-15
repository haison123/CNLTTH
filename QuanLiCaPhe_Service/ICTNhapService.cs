using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using DTO_QLCP;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICTNhapService" in both code and config file together.
    [ServiceContract]
    public interface ICTNhapService
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        DataTable Search_DSNhapNL(int maPN);
        [OperationContract]
        DataTable DSCTPN();
        [OperationContract]
        bool kiemTraNhapNL(int maPN);
        [OperationContract]
        bool kiemTraTonTai(int maPN, string maNL);
        [OperationContract]
        DataTable getMaNL();
        [OperationContract]
        string getTenNL(string maNL);
        [OperationContract]
        string getDVTNL(string maNL);
        [OperationContract]
        string getDonGia(string maNL);
        [OperationContract]
        bool ThemCTNhap(CTNhapNL ct);
        [OperationContract]
        bool SuaCTNhap(CTNhapNL ct);
        [OperationContract]
        bool XoaCTNhap(CTNhapNL ct);
        [OperationContract]
        DataTable search(int mapn);
    }
}
