using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Abstract.IGeneric
{
    public interface IGenericDataAccess<T>
    {
        Task<T> GetById(int id);
        Task<IEnumerable<T>> GetAll();
        Task<bool> Add(T entity);
        Task<T> ReturnAdd(T entity);
        Task<bool> Update(T entity);
        Task<bool> Delete(T entity);
        Task<bool> SoftDelete(T entity);
        Task<IEnumerable<T>> GetAll(string columnName, Guid ID);
        Task<IEnumerable<T>> GetAll(string columnName, int ID);
    }
}
