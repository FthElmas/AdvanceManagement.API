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

        


        public async Task<bool> AddAdvanceRequest(AdvanceRequestStatus request, string approvalName)
        {
            using var conn = _connectionHelper.CreateConnection();
            using(IDbTransaction transaction = conn.BeginTransaction())
            {
                try
                {
                    string queryApproval = "select * from ApprovalStatus where ApprovalName = @ApprovalName";
                    string query = "insert into AdvanceRequestStatus (AdvanceID, StatusName, StatusDescription, ApprovedAmount, ApprovingRejectedID, ProcessDate ,ApprovalStatusID, IsActive) values (@AdvanceID, @StatusName, @StatusDescription, @ApprovedAmount, @ApprovingRejectedID, @ProcessDate, @ApprovalStatusID, @IsActive)";

                    var data = await transaction.Connection.QueryFirstOrDefaultAsync<ApprovalStatus>(queryApproval, new { ApprovalName = approvalName });
                    await transaction.Connection.ExecuteAsync(query, new { AdvanceID = request.AdvanceID, StatusName = request.StatusName, StatusDescription = request.StatusDescription, ApprovedAmount = request.ApprovedAmount, ApprovingRejectedID = request.ApprovingRejectedID, ProcessDate = request.ProcessDate, ApprovalStatusID = data.ApprovalStatusID, IsActive = request.IsActive });

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
