using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Interfaces;
using DL.Model;

namespace DL.Repositories
{
    public class CurrencyRepository : Repository<Model.tbl_Currency_Master>, ICurrencyRepository
    {
        public CurrencyRepository(SystemDataUnit sys)
            : base(sys) { }

    }
}
