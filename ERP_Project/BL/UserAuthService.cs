using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Model;
using DL.Interfaces;
using System.Web;

namespace BL
{
    public class UserAuthService
    {
        private static IUserAuthRepository _authrepository;

        public UserAuthService(IUserAuthRepository authrepository)
        {
            if (authrepository != null)
                _authrepository = authrepository;
        }

        public void AddUser(tbl_User newUser)
        {
            newUser.createddate = DateTime.Now;
            _authrepository.Insert(newUser);
        }

        public int AuthenticateUser(string username,string password)
        {
            return _authrepository.Login(username,password);
           // return 2;
           
        }

    }
}
