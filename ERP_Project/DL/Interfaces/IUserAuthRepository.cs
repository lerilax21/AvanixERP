using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DL.Interfaces
{
    public interface IUserAuthRepository : IRepository<Model.tbl_User>
    {
        int Login(string uname, string pass);

    }
}