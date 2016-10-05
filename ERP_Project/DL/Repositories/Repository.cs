using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Interfaces;
using System.Data.Entity;
using System.Data;

namespace DL.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {

        #region Configurations
        SystemDataUnit systemdataunit { get; set; }
        public Repository(SystemDataUnit systemdataunit)
        {
            this.systemdataunit = systemdataunit;
        }

        internal DL.Model.Entities Context
        {
            get
            {
                return this.systemdataunit.Context;
            }
        }

        private DbSet<TEntity> dbset;

        internal DbSet<TEntity> DbSet
        {
            get
            {
                if (dbset == null)
                {
                    dbset = this.systemdataunit.Context.Set<TEntity>();
                }
                return dbset;
            }
        }

        #endregion

        public virtual void Insert(TEntity entity)
        {
            this.DbSet.Add(entity);
            this.Context.SaveChanges();
        }

        public virtual IList<TEntity> GetAll()
        {
            return this.DbSet.ToList();
        }

        public virtual TEntity GetById(int id)
        {
            TEntity tentity = this.DbSet.Find(id);
            return tentity;
        }

        public virtual void Delete(int id)
        {
            TEntity tentity = GetById(id);
            Delete(tentity);
        }

        public virtual void Delete(TEntity entity)
        {
            this.DbSet.Remove(entity);
            this.Context.SaveChanges();
        }

        public virtual void Update(TEntity entity)
        {
            this.Context.Entry(entity).State = EntityState.Modified;
            this.Context.SaveChanges();
        }

        public virtual void UpdateWithFetch(int id, TEntity newEntity)
        {
            //this.Context.ObjectStateManager.ChangeObjectState(newEntity, System.Data.EntityState.Modified);
            //this.Context.Refresh(RefreshMode.ClientWins, newEntity);
            //this.Context.SaveChanges();

        }
    }
}
