using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IProject;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.ProjectAccess
{
    public class ProjectDataAccess : BaseDataAccess<Project>, IProjectDataAccess
    {
        private readonly ConnectionHelper _connectionHelper;
        public ProjectDataAccess()
        {
            _connectionHelper = new ConnectionHelper();
        }
        public async Task<IEnumerable<Project>> GetAllProjectOfWorker(int workerID)
        {
            using var conn = _connectionHelper.CreateConnection();
            var query = "select Project.ProjectID, Project.ProjectName, Project.StartDate, Project.EndDate, Project.ProjectExplanation, Project.IsActive from Project join [ProjectWorker] on ProjectWorker.ProjectID = Project.ProjectID join [Worker] on ProjectWorker.WorkerID = Worker.WorkerID  where [Worker].WorkerID = @WorkerID";


            return await conn.QueryAsync<Project>(query, new {WorkerID = workerID });
        }
    }
}
