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

        public async Task<bool> AddAdvanceWithStatus(Advance advance)
        {
            using var conn = _connectionHelper.CreateConnection();
            using(IDbTransaction transaction = conn.BeginTransaction())
            {
                try
                {
                    string advanceQuery = "insert into Advance (AdvanceAmount, AdvanceExplanation, WorkerID, RequestDate, AmountPaymentDate, ProjectID, IsActive) OUTPUT INSERTED.* values (@AdvanceAmount, @AdvanceExplanation, @WorkerID, @RequestDate, @AmountPaymentDate, @ProjectID, @IsActive)";
                    string statusQuery = "insert into AdvanceRequestStatus (AdvanceID, StatusName, StatusDescription, ApprovalStatusID, IsActive) values (@AdvanceID, 'Onay Bekliyor', 'Onay için beklemede', 5, 1)";


                    var data = await transaction.Connection.QueryFirstOrDefaultAsync<Advance>(advanceQuery, new { AdvanceAmount = advance.AdvanceAmount, AdvanceExplanation = advance.AdvanceExplanation, WorkerID = advance.WorkerID, RequestDate = advance.RequestDate, AmountPaymentDate = advance.AmountPaymentDate, ProjectID = advance.ProjectID, IsActive = advance.IsActive });

                    await transaction.Connection.QueryFirstOrDefaultAsync<AdvanceRequestStatus>(statusQuery, new { AdvanceID = data.AdvanceID });

                    transaction.Commit();
                    return true;
                }
                catch
                {
                    transaction.Rollback();
                    return false;
                }
            }
        }
    }
}
