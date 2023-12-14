using AdvanceManagement.API.Business.Concrete.StatePattern.States;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.StatePattern
{
    public class ApprovalStateMachine(ITitleAmountApprovalRuleDataAccess dal) : StateMachine
    {
        public void InitializeApprovalWorkflow(decimal requestedAmount)
        {
            var data = dal.GetRuleAccordingToAmount(requestedAmount).Result.ToList();

            if (requestedAmount >= data[0].MinAmount && requestedAmount <= data[0].MaxAmount)
            {
                Initialize(new PendingState(this));
                ChangeState(new UnitManagerState(this));
            }
            else if (requestedAmount >= data[1].MinAmount && requestedAmount <= data[1].MaxAmount)
            {
                Initialize(new PendingState(this));
                ChangeState(new UnitManagerState(this));
                ChangeState(new DirectorState(this));
            }
            else if (requestedAmount >= data[2].MinAmount && requestedAmount <= data[2].MaxAmount)
            {
                Initialize(new PendingState(this));
                ChangeState(new UnitManagerState(this));
                ChangeState(new DirectorState(this));
                ChangeState(new GMState(this));
            }
            else if (requestedAmount > data[3].MinAmount)
            {
                Initialize(new PendingState(this));
                ChangeState(new UnitManagerState(this));
                ChangeState(new DirectorState(this));
                ChangeState(new GMState(this));
                ChangeState(new GMYState(this));
            }
            else
            {
                Console.WriteLine("Invalid requested amount.");
            }
        }
    }
}
