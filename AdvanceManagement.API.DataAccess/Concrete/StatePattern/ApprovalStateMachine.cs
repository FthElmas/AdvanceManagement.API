using AdvanceManagement.API.DataAccess.Concrete.StatePattern.States;
using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using AdvanceManagement.API.DataAccess.Concrete.TitleAmountApprovalRuleAccess;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern
{
    public class ApprovalStateMachine : StateMachine
    {
        TitleAmountApprovalRuleDataAccess dal;
        IDbTransaction transaction;
        public ApprovalStateMachine(IDbTransaction transaction)
        {
            dal = new TitleAmountApprovalRuleDataAccess();
            this.transaction = transaction;
        }
        
        public void InitializeApprovalWorkflow(AdvanceRequestStatus advanceRequest, decimal requestedAmount)
        {
            var data = dal.GetRuleAccordingToAmount(requestedAmount).Result.ToList();
            Initialize(new PendingState(this, advanceRequest, transaction));
            if (requestedAmount >= data[0].MinAmount && requestedAmount <= data[0].MaxAmount)
            {
                ChangeState(new UnitManagerState(this, advanceRequest, transaction));
            }
            else if (requestedAmount >= data[1].MinAmount && requestedAmount <= data[1].MaxAmount)
            {
                ChangeState(new UnitManagerState(this, advanceRequest, transaction));
                ChangeState(new DirectorState(this, advanceRequest, transaction));
            }
            else if (requestedAmount >= data[2].MinAmount && requestedAmount <= data[2].MaxAmount)
            {
                ChangeState(new UnitManagerState(this, advanceRequest, transaction));
                ChangeState(new DirectorState(this, advanceRequest, transaction));
                ChangeState(new GMState(this, advanceRequest, transaction));
            }
            else if (requestedAmount > data[3].MinAmount)
            {
                ChangeState(new UnitManagerState(this, advanceRequest, transaction));
                ChangeState(new DirectorState(this, advanceRequest, transaction));
                ChangeState(new GMState(this, advanceRequest, transaction));
                ChangeState(new GMYState(this, advanceRequest, transaction));
            }
            else
            {
                Console.WriteLine("Invalid requested amount.");
            }
        }



        
    }
}
