using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern.States
{
    public class FinanceManagerState : State
    {
        
        public FinanceManagerState(StateMachine stateMachine) : base(stateMachine)
        {
            
        }

        
        public override void EnterState()
        {
            base.EnterState();

            
        }

        public override void ExitState()
        {
            base.ExitState();
        }
    }
}
