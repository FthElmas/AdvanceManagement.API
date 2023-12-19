using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IProjectBusiness
{
    public interface IProjectBusiness
    {
        Task<List<ProjectSelectDTO>> GetAllProjectOfWorker(int workerID);
    }
}
