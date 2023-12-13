using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Abstract.IProject
{
    public interface IProjectDataAccess : IBaseDataAccess<Project>
    {
        Task<IEnumerable<Project>> GetAllProjectOfWorker(int workerID);
    }
}
