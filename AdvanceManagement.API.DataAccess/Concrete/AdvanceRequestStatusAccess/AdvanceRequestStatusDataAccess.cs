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
    public class AdvanceRequestStatusDataAccess(ConnectionHelper _connectionHelper) : BaseDataAccess<AdvanceRequestStatus>, IAdvanceRequestStatusDataAccess
    {
        
        public async Task<IEnumerable<AdvanceRequestStatus>> GetWorkerAdvance(int advanceID)
        {
            using var conn = _connectionHelper.CreateConnection();

            string query = "select  ar.* , a.*, p.*,fm.DeterminedPaymentDate,fm.AdvanceID as FMID, fm.WorkerID as FMWID ,fm.DeterminedPaymentDate, aps.*,w.*,t.* from AdvanceRequestStatus ar\r\njoin Advance a on a.AdvanceID = ar.AdvanceID\r\njoin Project p on p.ProjectID = a.ProjectID\r\nleft join FinanceManager fm on fm.AdvanceID = a.AdvanceID\r\njoin ApprovalStatus aps on aps.ApprovalStatusID = ar.ApprovalStatusID\r\nleft join Worker w on w.WorkerID = ar.ApprovingRejectedID\r\nleft join Title t on w.TitleID = t.TitleID\r\nwhere a.AdvanceID = @AdvanceID and ar.IsActive = 1";
            var parameters = new { AdvanceID = advanceID };

            return await conn.QueryAsync<AdvanceRequestStatus, Advance, Project, FinanceManager, ApprovalStatus, Worker, Title, AdvanceRequestStatus>(query,
                (ar, a, p, fm, aps, w, t) =>
                {
                    ar.Advance = a;
                    ar.Project = p;
                    ar.FinanceManager = fm;
                    ar.ApprovalStatus = aps;
                    ar.Worker = w;
                    ar.Title = t;
                    return ar;

                },
                parameters,
                splitOn: "AdvanceID,ProjectID,FMID,ApprovalStatusID,WorkerID,TitleID");
        }



        public async Task<IEnumerable<AdvanceRequestStatus>> GetRequestWithTitle(int titleID)
        {
            using var conn = _connectionHelper.CreateConnection();
            string query = "SELECT ar.*, a.*, p.*, w.*, ta.*, u.*, ap.*\r\nFROM AdvanceRequestStatus ar\r\nJOIN ApprovalStatus ap ON ap.ApprovalStatusID = ar.ApprovalStatusID\r\nJOIN ApprovalStatusTitle ast ON ast.ApprovalStatusID = ap.ApprovalStatusID\r\nJOIN Title t ON t.TitleID = ast.TitleID\r\nJOIN Advance a on a.AdvanceID = ar.AdvanceID\r\nJOIN Worker w on w.WorkerID = a.WorkerID\r\nJOIN Title ta ON ta.TitleID = w.TitleID JOIN Unit u ON u.UnitID = w.UnitID JOIN Project p ON p.ProjectID = a.ProjectID\r\nWHERE t.TitleID = @TitleID\r\n  AND ar.IsActive = 0\r\n  AND ar.AdvanceRequestStatusID - 1 IN (\r\n    SELECT AdvanceRequestStatusID\r\n    FROM AdvanceRequestStatus\r\n    WHERE IsActive = 1\r\n      AND StatusName = 'Onaylandı'\r\n  );";


            var result = await conn.QueryAsync<AdvanceRequestStatus, Advance, Project, Worker, Title, Unit,ApprovalStatus, AdvanceRequestStatus>(
            query,
            (ar, a, p, w, t, u, ap) =>
            {
                ar.Advance = a;
                ar.Project = p;
                ar.Worker = w;
                ar.Title = t;
                ar.Unit = u;
                ar.ApprovalStatus = ap;
                return ar;
            },
            param: new { TitleID = titleID },
            splitOn: "AdvanceID, ProjectID, WorkerID, TitleID, UnitID, ApprovalStatusID"
            );

            return result;
        }


        public async Task<IEnumerable<AdvanceRequestStatus>> GetRequestForUnitManager(int titleID)
        {
            using var conn = _connectionHelper.CreateConnection();
            string query = "SELECT ar.*, a.*, p.*, w.*, ta.*, u.* ,ap.* from AdvanceRequestStatus ar \r\n\tjoin ApprovalStatus ap on ap.ApprovalStatusID = ar.ApprovalStatusID \r\n\tjoin ApprovalStatusTitle ast on ast.ApprovalStatusID = ap.ApprovalStatusID \r\n\tjoin Title t on t.TitleID = ast.TitleID \r\n\tJOIN Advance a on a.AdvanceID = ar.AdvanceID\r\n\tJOIN Worker w on w.WorkerID = a.WorkerID\r\n\tJOIN Title ta ON ta.TitleID = w.TitleID JOIN Unit u ON u.UnitID = w.UnitID JOIN Project p ON p.ProjectID = a.ProjectID\r\n\twhere t.TitleID = @TitleID and ar.IsActive = 0";


            var result = await conn.QueryAsync<AdvanceRequestStatus, Advance, Project, Worker, Title, Unit, ApprovalStatus, AdvanceRequestStatus>(
            query,
            (ar, a, p, w, ta, u, ap) =>
            {
                ar.Advance = a;
                ar.Project = p;
                ar.Worker = w;
                ar.Title = ta;
                ar.Unit = u;
                ar.ApprovalStatus = ap;
                return ar;
            },
            param: new { TitleID = titleID },
            splitOn: "AdvanceID, ProjectID, WorkerID, TitleID, UnitID,ApprovalStatusID"
            );

            return result;
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
