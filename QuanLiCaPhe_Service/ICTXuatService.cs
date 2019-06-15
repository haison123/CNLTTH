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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICTXuatService" in both code and config file together.
    [ServiceContract]
    public interface ICTXuatService
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        DataTable getDSXuatNL(int maPX);
        [OperationContract]
        DataTable DSCTPX();
        [OperationContract]
        DataTable Search(int mapx);
        [OperationContract]
        DataTable getMaNL();
        [OperationContract]
        string getTenNL(string maNL);
        [OperationContract]
        string getDVTNL(string maNL);
        [OperationContract]
        bool kiemTraXuatNL(int maPX);
        [OperationContract]
        bool kiemTraTonTai(int maPX, string maNL);
        [OperationContract]
        string laySLCon(string maNL);
        [OperationContract]
        bool ThemCTXuat(CTXuatNL ct);
        [OperationContract]
        bool SuaCTXuat(CTXuatNL ct);
        [OperationContract]
        bool XoaCTXuat(CTXuatNL ct);
    }
}
