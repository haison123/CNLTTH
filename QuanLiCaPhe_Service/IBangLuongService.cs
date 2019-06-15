using DTO_QLCP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IBangLuongService" in both code and config file together.
    [ServiceContract]
    public interface IBangLuongService
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        string layChucVu(string maNV);
        [OperationContract]
        string layGioLam(string maNV, int thang);
        [OperationContract]
        bool kiemTraBangLuong(int thang, string maNV);
        [OperationContract]
        bool ThemBangLuong(BangLuong bl);
        [OperationContract]
        bool SuaBangLuong(BangLuong bl);
    }
}
