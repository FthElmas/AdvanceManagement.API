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
using AdvanceManagement.API.DataAccess.Abstract.IUOW;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataAccess.Abstract.IWorker;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceAccess;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceRequestStatusAccess;
using AdvanceManagement.API.DataAccess.Concrete.ApprovalStatusAccess;
using AdvanceManagement.API.DataAccess.Concrete.FinanceManagerAccess;
using AdvanceManagement.API.DataAccess.Concrete.PaybackReceiptAccess;
using AdvanceManagement.API.DataAccess.Concrete.PaymentReceiptAccess;
using AdvanceManagement.API.DataAccess.Concrete.ProjectAccess;
using AdvanceManagement.API.DataAccess.Concrete.TitleAccess;
using AdvanceManagement.API.DataAccess.Concrete.TitleAmountApprovalRuleAccess;
using AdvanceManagement.API.DataAccess.Concrete.UnitAccess;
using AdvanceManagement.API.DataAccess.Concrete.UserAccess;
using AdvanceManagement.API.DataAccess.Concrete.WorkerAccess;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.UOW
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly IDbConnection _connection;
        private IDbTransaction _transaction;

        //public IAdvanceDataAccess AdvanceRepository => new AdvanceDataAccess();

        public IAdvanceRequestStatusDataAccess AdvanceRequestStatusRepository => new AdvanceRequestStatusDataAccess();

        public IApprovalStatusDataAccess ApprovalStatusRepository => new ApprovalStatusDataAccess();

        public IFinanceManagerDataAccess FinanceManagerRepository => new FinanceManagerDataAccess();

        public IPaybackReceiptDataAccess PaybackReceiptRepository => new PaybackReceiptDataAccess();

        public IPaymentReceiptDataAccess PaymentReceiptRepository => new PaymentReceiptDataAccess();

        public IProjectDataAccess ProjectRepository => new ProjectDataAccess();

        public ITitleDataAccess TitleRepository => new TitleDataAccess();

        public ITitleAmountApprovalRuleDataAccess TitleAmountApprovalRuleRepository => new TitleAmountApprovalRuleDataAccess();

        public IUnitDataAccess UnitRepository => new UnitDataAccess();

        public IUserDataAccess UserRepository => new UserDataAccess();

        public IWorkerDataAccess WorkerRepository => new WorkerDataAccess();

        public IDbConnection Conn { get { return _connection; } }
        public IDbTransaction Transaction { get { return _transaction; } }

        public UnitOfWork()
        {
            _connection = new SqlConnection("server = .; Database = AdvanceManagementDB; Trusted_Connection=True;MultipleActiveResultSets=True;TrustServerCertificate=True");
            _connection.Open();


        }
        public void Commit()
        {
            _transaction?.Commit();
            _transaction = null;
        }
        public void Rollback()
        {
            _transaction?.Rollback();
            _transaction = null;
        }
        public void BeginTransaction()
        {
            if (_transaction == null)
            {
                _transaction = _connection.BeginTransaction();
            }
        }

        public void Dispose()
        {
            _transaction?.Dispose();
            _connection?.Dispose();
        }
    }
}
