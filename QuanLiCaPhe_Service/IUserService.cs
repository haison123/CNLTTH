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
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IUserService" in both code and config file together.
    [ServiceContract]
    public interface IUserService
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        bool kiemTraLogin(string user, string matkhau);
        [OperationContract]
        bool doiPass(User us);
    }
}
