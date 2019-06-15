using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DAL_QLCP;
using DTO_QLCP;

namespace QuanLiCaPhe_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "UserService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select UserService.svc or UserService.svc.cs at the Solution Explorer and start debugging.
    public class UserService : IUserService
    {
        DAL_User dalus = new DAL_User();
        public void DoWork()
        {
        }

        public bool kiemTraLogin(string user, string matKhau)
        {
            return dalus.kiemTraLogin(user, matKhau);
        }

        public bool doiPass(User us)
        {
            return dalus.doiPass(us);
        }
    }
}
