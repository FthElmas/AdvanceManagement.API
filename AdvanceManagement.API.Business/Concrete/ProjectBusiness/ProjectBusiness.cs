using AdvanceManagement.API.Business.Abstract.IProjectBusiness;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IProject;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.ProjectBusiness
{
    public class ProjectBusiness(IProjectDataAccess dal) : IProjectBusiness
    {
        public Task<IEnumerable<ProjectSelectDTO>> GetAllProjectOfWorker(int workerID)
        {
            throw new NotImplementedException();
        }
    }
}
