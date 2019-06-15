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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "INguyenLieuServices" in both code and config file together.
    [ServiceContract]
    public interface INguyenLieuServices
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        DataTable getDSNL();
        [OperationContract]
        DataTable getDSNL_theoma(string maNL);
        [OperationContract]
        bool kiemTraNL(string maNL);
        [OperationContract]
        bool ThemNL(NguyenLieu nl);
        [OperationContract]
        bool SuaNL(NguyenLieu nl);
        [OperationContract]
        bool XoaNL(NguyenLieu nl);
    }
}
