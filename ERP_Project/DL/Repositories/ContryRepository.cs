using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Interfaces;
using DL.Model;

namespace DL.Repositories
{
    public class ContryRepository : Repository<Model.tbl_Country_Master>, IContryRepository
    {
        public ContryRepository(SystemDataUnit sys)
            : base(sys) { }

        //public void UpdateCountry(Model.tbl_Country_Master m)
        //{
        //    using (Entities en=new Entities())
        //    {

                
        //    }
        //}
    }
}
