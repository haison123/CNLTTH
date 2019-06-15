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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IChamCongNVService" in both code and config file together.
    [ServiceContract]
    public interface IChamCongNVService
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        DataTable getDSCCNV();
        [OperationContract]
        string getTenNV(string maNV);
        [OperationContract]
        bool kiemtraCCNV(string maNV, DateTime ngay, string caLam);
        [OperationContract]
        bool ThemCC(ChamCongNV ccnv);
        [OperationContract]
        bool SuaCC(ChamCongNV ccnv);
        [OperationContract]
        bool XoaCC(ChamCongNV ccnv);

    }
}
