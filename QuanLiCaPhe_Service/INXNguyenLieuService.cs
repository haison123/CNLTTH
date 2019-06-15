using DTO_QLCP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "INXNguyenLieuService" in both code and config file together.
    [ServiceContract]
    public interface INXNguyenLieuService
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        int layMaPhieuNhap();
        [OperationContract]
        int layMaPhieuXuat();
        [OperationContract]
        bool NhapNL(NXNguyenLieu nl);
        [OperationContract]
        bool XoaNhapNL(NXNguyenLieu nl);
        [OperationContract]
        bool XuatNL(NXNguyenLieu nl);
        [OperationContract]
        bool XoaXuatNL(NXNguyenLieu nl);
        [OperationContract]
        void update_tongtien(int mapn);
        [OperationContract]
        DataTable LayDSPN();
        [OperationContract]
        DataTable Search_PN(int mapn);
        [OperationContract]
        DataTable LayDSPX();
        [OperationContract]
        DataTable Search_PX(int mapx);

    }
}
