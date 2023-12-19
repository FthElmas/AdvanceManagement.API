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
        private readonly ApprovalStateMachine stateMachine;
    
        public AdvanceDataAccess(ApprovalStateMachine stateMachine)
        {
            _connectionHelper = new ConnectionHelper();
            this.stateMachine = stateMachine;
        }


        public async Task<Advance> GetAdvanceByID(int advanceID)
        {
            using var conn = _connectionHelper.CreateConnection();
            var query = "select a.*, w.*, t.*, u.*, p.* from Advance a\r\njoin Worker w ON w.WorkerID = a.WorkerID\r\njoin Title t ON t.TitleID = w.TitleID\r\njoin Unit u ON u.UnitID = w.UnitID\r\njoin Project p ON p.ProjectID = a.ProjectID\r\nwhere a.AdvanceID = @AdvanceID";

            var parameters = new { AdvanceID = advanceID };

            var result = await conn.QueryAsync<Advance, Worker, Title, Unit, Project, Advance>(query,
                (a, w, t, u, p) =>
                {
                    a.Worker = w;
                    a.Title = t;
                    a.Unit = u;
                    a.Project = p;
                    return a;

                },
                parameters,
                splitOn: "WorkerID,TitleID,UnitID,ProjectID");

            return result.FirstOrDefault();
        }


        public async Task<IEnumerable<Advance>> GetWorkerAdvance(int workerID)
        {
            using var conn = _connectionHelper.CreateConnection();
            var advanceQuery = "WITH CTE AS (\r\n    SELECT\r\n        a.AdvanceID,\r\n        ar.AdvanceRequestStatusID,\r\n        ar.CreatedDate,\r\n        ROW_NUMBER() OVER (PARTITION BY a.AdvanceID ORDER BY ar.CreatedDate DESC) AS RowNum\r\n    FROM Advance a\r\n    JOIN AdvanceRequestStatus ar ON a.AdvanceID = ar.AdvanceID\r\n    WHERE a.WorkerID = @WorkerID\r\n      AND ar.IsActive = 1\r\n)\r\nSELECT\r\n    a.*,\r\n    CTE.AdvanceID AS CTEAdvanceID,\r\n    ar.*,\r\n    p.*,\r\n    fm.DeterminedPaymentDate,\r\n    fm.AdvanceID AS FMID,\r\n    fm.WorkerID AS FMWID,\r\n    aps.ApprovalStatusID,\r\n    aps.ApprovalName,\r\n    w.*,  t.* FROM CTE\r\nJOIN Advance a ON CTE.AdvanceID = a.AdvanceID\r\nJOIN AdvanceRequestStatus ar ON CTE.AdvanceRequestStatusID = ar.AdvanceRequestStatusID\r\nJOIN Project p ON p.ProjectID = a.ProjectID\r\nLEFT JOIN FinanceManager fm ON fm.AdvanceID = a.AdvanceID\r\nJOIN ApprovalStatus aps ON aps.ApprovalStatusID = ar.ApprovalStatusID\r\nLEFT JOIN Worker w ON w.WorkerID = ar.ApprovingRejectedID\r\nLEFT JOIN Title t ON w.TitleID = t.TitleID\r\nWHERE CTE.RowNum = 1;";

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


        public async Task<IEnumerable<Advance>> BringAllAdvanceForFinance()
        {
            using var conn = _connectionHelper.CreateConnection();
            var advanceQuery = "SELECT A.*, ARS.*, P.*, APS.*,  WA.*, T.*, U.*\r\nFROM Advance A\r\nJOIN AdvanceRequestStatus ARS ON A.AdvanceID = ARS.AdvanceID\r\nJOIN Project P ON P.ProjectID = A.ProjectID\r\nJOIN ApprovalStatus APS ON APS.ApprovalStatusID = ARS.ApprovalStatusID\r\nLEFT JOIN Worker WA ON WA.WorkerID = A.WorkerID\r\nLEFT JOIN Title T ON WA.TitleID = T.TitleID\r\nLEFT JOIN Unit U ON U.UnitID = WA.UnitID\r\nWHERE AdvanceRequestStatusID = (\r\n        SELECT MAX(AdvanceRequestStatusID)\r\n        FROM AdvanceRequestStatus\r\n        WHERE AdvanceID = A.AdvanceID\r\n    ) AND StatusName = 'Onaylandı'";

            return await conn.QueryAsync<Advance, AdvanceRequestStatus, Project, ApprovalStatus, Worker, Title, Unit, Advance>(advanceQuery,
                (a, ar, p, aps, wa,t,u) =>
                {
                    a.AdvanceRequestStatus = ar;
                    a.Project = p;
                    a.ApprovalStatus = aps;
                    a.AdvanceWorker = wa;
                    a.Title = t;
                    a.Unit = u;
                    return a;

                },
                splitOn: "AdvanceRequestStatusID,ProjectID,ApprovalStatusID,WorkerID,TitleID, UnitID");
        }


        public async Task<IEnumerable<Advance>> BringAllAdvanceForAccountant()
        {
            using var conn = _connectionHelper.CreateConnection();
            var advanceQuery = "SELECT a.*, w.*,t.*,u.*,p.* from Advance a\r\njoin Worker w ON w.WorkerID = a.WorkerID\r\njoin Title t ON t.TitleID = w.TitleID\r\njoin Unit u ON u.UnitID = w.UnitID\r\njoin Project p ON p.ProjectID = a.ProjectID\r\njoin FinanceManager fm ON a.AdvanceID = fm.AdvanceID\r\nleft join PaymentReceipt pr ON pr.AdvanceID = a.AdvanceID\r\nwhere pr.AdvanceID is null";

            return await conn.QueryAsync<Advance, Worker, Title, Unit, Project, Advance>(advanceQuery,
                (a, w, t, u, p) =>
                {
                    a.AdvanceWorker = w;
                    a.Title = t;
                    a.Unit = u;
                    a.Project = p;
                    return a;

                },
                splitOn: "WorkerID,TitleID,UnitID,ProjectID");
        }

        public async Task<bool> AddAdvanceWithStatus(Advance advance)
        {
            var conn = _connectionHelper.CreateConnection();
            
            using(IDbTransaction transaction = conn.BeginTransaction())
            {
                try
                {
                    string advanceQuery = "insert into Advance (AdvanceAmount, AdvanceExplanation, WorkerID, RequestDate, AmountPaymentDate, ProjectID, IsActive) OUTPUT INSERTED.* values (@AdvanceAmount, @AdvanceExplanation, @WorkerID, @RequestDate, @AmountPaymentDate, @ProjectID, @IsActive)";
                    


                    var data = await transaction.Connection.QueryFirstOrDefaultAsync<Advance>(advanceQuery, new { AdvanceAmount = advance.AdvanceAmount, AdvanceExplanation = advance.AdvanceExplanation, WorkerID = advance.WorkerID, RequestDate = advance.RequestDate, AmountPaymentDate = advance.AmountPaymentDate, ProjectID = advance.ProjectID, IsActive = advance.IsActive }, transaction);
                    var request = new AdvanceRequestStatus
                    {
                        AdvanceID = data.AdvanceID,
                        StatusName = "Onay Bekliyor",
                        IsActive = false
                    };
                    stateMachine.InitializeApprovalWorkflow(request, data.AdvanceAmount, transaction);
                    


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
