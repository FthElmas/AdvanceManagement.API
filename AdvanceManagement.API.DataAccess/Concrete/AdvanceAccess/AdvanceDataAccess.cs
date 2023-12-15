using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Concrete.StatePattern;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections;
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
            var advanceQuery = "select a.AdvanceAmount, a.CreatedDate, a.RequestDate, ar.AdvanceRequestStatusID,ar.StatusName,ar.ApprovedAmount ,p.ProjectID,p.ProjectName,fm.DeterminedPaymentDate,fm.AdvanceID as FMID, fm.WorkerID as FMWID , aps.ApprovalStatusID, aps.ApprovalName,w.WorkerID,w.WorkerName,t.TitleID ,t.TitleName from Advance a\r\njoin AdvanceRequestStatus ar on a.AdvanceID = ar.AdvanceID\r\njoin Project p on p.ProjectID = a.ProjectID\r\nleft join FinanceManager fm on fm.AdvanceID = a.AdvanceID\r\njoin ApprovalStatus aps on aps.ApprovalStatusID = ar.ApprovalStatusID\r\njoin Worker w on w.WorkerID = ar.ApprovingRejectedID\r\njoin Title t on w.TitleID = t.TitleID\r\nwhere a.WorkerID = @WorkerID";

            var parameters = new { WorkerID = workerID };



            return await conn.QueryAsync<Advance, AdvanceRequestStatus, Project,FinanceManager, ApprovalStatus, Worker, Title, Advance>(advanceQuery,
                (a, ar, p, fm, aps, w, t) =>
                {
                    a.AdvanceRequestStatus = ar;
                    a.Project = p;
                    a.FinanceManager = fm;
                    a.ApprovalStatus = aps;
                    a.Worker = w;
                    a.Title = t;
                    return a;

                },
                parameters,
                splitOn : "AdvanceRequestStatusID,ProjectID,FMID,ApprovalStatusID,WorkerID,TitleID");

        }

        public async Task<bool> AddAdvanceWithStatus(Advance advance)
        {
            using var conn = _connectionHelper.CreateConnection();
            ApprovalStateMachine stateMachine;
            using(IDbTransaction transaction = conn.BeginTransaction())
            {
                try
                {
                    string advanceQuery = "insert into Advance (AdvanceAmount, AdvanceExplanation, WorkerID, RequestDate, AmountPaymentDate, ProjectID, IsActive) OUTPUT INSERTED.* values (@AdvanceAmount, @AdvanceExplanation, @WorkerID, @RequestDate, @AmountPaymentDate, @ProjectID, @IsActive)";
                    stateMachine = new ApprovalStateMachine(transaction);


                    var data = await transaction.Connection.QueryFirstOrDefaultAsync<Advance>(advanceQuery, new { AdvanceAmount = advance.AdvanceAmount, AdvanceExplanation = advance.AdvanceExplanation, WorkerID = advance.WorkerID, RequestDate = advance.RequestDate, AmountPaymentDate = advance.AmountPaymentDate, ProjectID = advance.ProjectID, IsActive = advance.IsActive }, transaction);
                    var request = new AdvanceRequestStatus
                    {
                        AdvanceID = data.AdvanceID,
                        IsActive = false
                    };
                    stateMachine.InitializeApprovalWorkflow(request, data.AdvanceAmount);
                    

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
