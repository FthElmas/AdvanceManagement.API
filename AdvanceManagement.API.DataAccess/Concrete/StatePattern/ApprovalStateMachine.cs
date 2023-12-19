using AdvanceManagement.API.DataAccess.Concrete.StatePattern.States;
using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using AdvanceManagement.API.DataAccess.Concrete.TitleAmountApprovalRuleAccess;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern
{
    public class ApprovalStateMachine(ITitleAmountApprovalRuleDataAccess dal, IAdvanceRequestStatusDataAccess advanceDal) : StateMachine
    {
        public StateBuilder CreateBuilder(ITitleAmountApprovalRuleDataAccess dal, IAdvanceRequestStatusDataAccess advanceDal, decimal requestedAmount)
        {
            return new StateBuilder(dal, advanceDal, requestedAmount, this);
        }

        public void InitializeApprovalWorkflow(AdvanceRequestStatus advanceRequest, decimal? requestedAmount, IDbTransaction transaction)
        {
            Initialize(new PendingState(this, advanceRequest, transaction, advanceDal));

            CreateBuilder(dal, advanceDal, requestedAmount.Value)
                .AddStateByRule(transaction, "Unit Manager", new UnitManagerState(this, advanceRequest, transaction, advanceDal))
                .AddStateByRule(transaction, "Director", new DirectorState(this, advanceRequest, transaction, advanceDal))
                .AddStateByRule(transaction, "GMY", new GMYState(this, advanceRequest, transaction, advanceDal))
                .AddStateByRule(transaction, "GM", new GMState(this, advanceRequest, transaction, advanceDal))
                .Build();
        }




    }
}
