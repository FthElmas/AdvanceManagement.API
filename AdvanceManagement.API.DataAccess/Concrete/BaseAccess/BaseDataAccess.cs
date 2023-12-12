using AdvanceManagement.API.DataAccess.Abstract.IBase;
using AdvanceManagement.API.DataAccess.Abstract.IGeneric;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.BaseAccess
{
    public abstract class BaseDataAccess<T> : IBaseDataAccess<T>  where T : class, new()
    {
        GenericDataAccess<T> generic;

        public BaseDataAccess()
        {
            generic = new GenericDataAccess<T>();
        }

        public async Task<T> GetById(int id)
        {
            return await generic.GetById(id);
        }

        public async Task<IEnumerable<T>> GetAll()
        {
            return await generic.GetAll();
        }

        public async Task<bool> Add(T entity)
        {
            return await generic.Add(entity);
        }

        public async Task<T> ReturnAdd(T entity)
        {
            return await generic.ReturnAdd(entity);
        }


        public async Task<bool> Update(T entity)
        {
            return await generic.Update(entity);
        }


        public async Task<bool> Delete(T entity)
        {
            return await generic.Delete(entity);
        }

        public async Task<bool> SoftDelete(T entity)
        {
            return await generic.SoftDelete(entity);
        }

        public async Task<IEnumerable<T>> GetAll(string columnName, Guid ID)
        {
            return await generic.GetAll(columnName, ID);
        }

        public async Task<IEnumerable<T>> GetAll(string columnName, int ID)
        {
            return await generic.GetAll(columnName, ID);
        }
    }
}
