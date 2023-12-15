using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.AdvanceRequestStatusAccess
{
    public class AdvanceRequestStatusDataAccess : BaseDataAccess<AdvanceRequestStatus>, IAdvanceRequestStatusDataAccess
    {
        private readonly ConnectionHelper _connectionHelper;

        public AdvanceRequestStatusDataAccess()
        {
            _connectionHelper = new ConnectionHelper();
        }


        public async Task<IEnumerable<AdvanceRequestStatus>> GetWorkerAdvance(int workerID)
        {
            using var conn = _connectionHelper.CreateConnection();

            string query = "select a.AdvanceAmount, a.CreatedDate, a.RequestDate, p.ProjectName, ar.StatusName, w.WorkerName, t.TitleName, ar.ApprovedAmount, fm.DeterminedPaymentDate from AdvanceRequestStatus ar\r\njoin Advance a on a.AdvanceID = ar.AdvanceID\r\njoin Project p on p.ProjectID = a.ProjectID\r\nleft join FinanceManager fm on fm.AdvanceID = a.AdvanceID\r\njoin ApprovalStatus aps on aps.ApprovalStatusID = ar.ApprovalStatusID\r\njoin Worker w on w.WorkerID = ar.ApprovingRejectedID\r\njoin Title t on w.TitleID = t.TitleID\r\nwhere a.WorkerID = @WorkerID";
            var parameters = new { WorkerID = workerID };

            return await conn.QueryAsync<AdvanceRequestStatus, Advance, FinanceManager, ApprovalStatus, Worker, Project, Title, AdvanceRequestStatus>(query,
                (ar, a, fm, aps, w, p, t) =>
                {
                    ar.Advance = a;
                    ar.FinanceManager = fm;
                    ar.ApprovalStatus = aps;
                    ar.Worker = w;
                    ar.Project = p;
                    ar.Title = t;
                    return ar;

                },
                parameters,
                splitOn: "AdvanceID,WorkerID,TitleID,ApprovalStatusID,ProjectID");
        }


        public async Task<bool> AddAdvanceRequest(AdvanceRequestStatus request, string approvalName, IDbTransaction _transaction)
        {
            
                try
                {
                    string queryApproval = "select * from ApprovalStatus where ApprovalName = @ApprovalName";
                    string query = "insert into AdvanceRequestStatus (AdvanceID, StatusName, StatusDescription, ApprovedAmount, ApprovingRejectedID, ProcessDate ,ApprovalStatusID, IsActive) values (@AdvanceID, @StatusName, @StatusDescription, @ApprovedAmount, @ApprovingRejectedID, @ProcessDate, @ApprovalStatusID, @IsActive)";

                    var data =  await _transaction.Connection.QueryFirstOrDefaultAsync<ApprovalStatus>(queryApproval, new { ApprovalName = approvalName }, _transaction);
                     await _transaction.Connection.ExecuteAsync(query, new { AdvanceID = request.AdvanceID, StatusName = request.StatusName, StatusDescription = request.StatusDescription, ApprovedAmount = request.ApprovedAmount, ApprovingRejectedID = request.ApprovingRejectedID, ProcessDate = request.ProcessDate, ApprovalStatusID = data.ApprovalStatusID, IsActive = request.IsActive }, _transaction);
                
                    return true;
                }
                catch
                {
                
                return false;
                }
            
                
            


        }

        
    }
}
