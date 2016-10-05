using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Model;
using System.Configuration;

namespace DL
{
    public class SystemDataUnit
    {
        private Entities context = new Entities();

        public SystemDataUnit(Entities context)
        {
            if (context != null)
            {
                this.context = context;
            }
        }

        public Entities Context
        {
            get
            {
                return this.context;
            }
            set
            {
                this.context = value;
            }
        }

        public void Commit()
        {
            this.Context.SaveChanges();
        }

        public void Dispose()
        {
            this.Context.Dispose();
        }

    }
}
