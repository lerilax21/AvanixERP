using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Interfaces;

namespace DL.Repositories
{
    public class UserAuthRepository : Repository<Model.tbl_User>, IUserAuthRepository
    {
        public UserAuthRepository(SystemDataUnit sys)
            : base(sys) { }

        public int Login(string uname, string pass)
        {
            Model.tbl_User user = this.DbSet.Where(x => x.user_name == uname && x.pass == pass).FirstOrDefault();

            return user == null ? -1 : user.user_Id;
        }
    }
}

