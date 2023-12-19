using AdvanceManagement.API.Business.Abstract.IProjectBusiness;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IProject;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using AdvanceManagement.API.ExceptionHandling.Exceptions.Project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.ProjectBusiness
{
    public class ProjectBusiness(IProjectDataAccess dal) : IProjectBusiness
    {
        public async Task<List<ProjectSelectDTO>> GetAllProjectOfWorker(int workerID)
        {
            try
            {
                var data = await dal.GetAllProjectOfWorker(workerID);
                var listData = data.ToList();
                MyMapper<Project, ProjectSelectDTO> mapper = new MyMapper<Project, ProjectSelectDTO>();

                return mapper.MapList(listData);
            }
            catch(Exception ex)
            {
                throw new ProjectSelectException("Exception occured while bringing data of project", ex);
            }

        }
    }
}
