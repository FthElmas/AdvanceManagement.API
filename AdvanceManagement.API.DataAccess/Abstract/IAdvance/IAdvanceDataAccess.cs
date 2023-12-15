using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Abstract.IAdvance
{
    public interface IAdvanceDataAccess : IBaseDataAccess<Advance>
    {
        Task<IEnumerable<Advance>> GetWorkerAdvance(int workerID);
        Task<bool> AddAdvanceWithStatus(Advance advance);
    }
}
