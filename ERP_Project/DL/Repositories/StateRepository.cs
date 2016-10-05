using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Interfaces;

namespace DL.Repositories
{
    public class StateRepository: Repository<Model.tbl_State_Master>, IStateRepository
    {
        public StateRepository(SystemDataUnit sys)
            : base(sys) { }


    }
}
