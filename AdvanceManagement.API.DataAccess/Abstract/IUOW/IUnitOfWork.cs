using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataAccess.Abstract.IApprovalStatus;
using AdvanceManagement.API.DataAccess.Abstract.IFinanceManager;
using AdvanceManagement.API.DataAccess.Abstract.IPaybackReceipt;
using AdvanceManagement.API.DataAccess.Abstract.IPaymentReceipt;
using AdvanceManagement.API.DataAccess.Abstract.IProject;
using AdvanceManagement.API.DataAccess.Abstract.ITitle;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataAccess.Abstract.IUnit;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataAccess.Abstract.IWorker;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Abstract.IUOW
{
    public interface IUnitOfWork : IDisposable
    {
        //IAdvanceDataAccess AdvanceRepository { get; }
        IAdvanceRequestStatusDataAccess AdvanceRequestStatusRepository { get; }
        IApprovalStatusDataAccess ApprovalStatusRepository { get; }
        IFinanceManagerDataAccess FinanceManagerRepository { get; }
        IPaybackReceiptDataAccess PaybackReceiptRepository { get; }
        IPaymentReceiptDataAccess PaymentReceiptRepository { get; }
        IProjectDataAccess ProjectRepository { get; }
        ITitleDataAccess TitleRepository { get; }
        ITitleAmountApprovalRuleDataAccess TitleAmountApprovalRuleRepository { get; }
        IUnitDataAccess UnitRepository { get; }
        IUserDataAccess UserRepository { get; }
        IWorkerDataAccess WorkerRepository { get; }

        IDbConnection Conn { get; }
        IDbTransaction Transaction { get; }
        void Commit();
        void Rollback();
        void Dispose();
        void BeginTransaction();
    }
}
