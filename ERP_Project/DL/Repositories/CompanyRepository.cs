using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Interfaces;
using DL.Model;

namespace DL.Repositories
{
    public class CompanyRepository : Repository<Model.tbl_Company_Master>, ICompanyRepository
    {
        public CompanyRepository(SystemDataUnit sys)
            : base(sys) { }

    }
}
