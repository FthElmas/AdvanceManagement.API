using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading.Tasks.Sources;

namespace AdvanceManagement.API.DataAccess.Concrete.AdvanceAccess
{
    public class AdvanceDataAccess : BaseDataAccess<Advance>, IAdvanceDataAccess
    {
        private readonly ConnectionHelper _connectionHelper;
        public AdvanceDataAccess()
        {
            _connectionHelper = new ConnectionHelper();
        }

        public async Task<IEnumerable<Advance>> GetWorkerAdvance(int workerID)
        {
            using var conn = _connectionHelper.CreateConnection();
            var advanceQuery = "select * from Advance where WorkerID = @WorkerID and IsActive = 1";
            return await conn.QueryAsync<Advance>(advanceQuery, new {WorkerID = workerID });

        }


    }
}
