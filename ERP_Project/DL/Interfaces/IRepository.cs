using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DL.Interfaces
{
    public interface IRepository<TEntity> where TEntity : class
    {
        void Insert(TEntity entity);
        TEntity GetById(int id);
        IList<TEntity> GetAll();
        void Delete(TEntity entity);
        void Delete(int id);
        void Update(TEntity entity);
        void UpdateWithFetch(int id,TEntity newEntity);

    }
}
