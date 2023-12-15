using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern.States
{
    public class AccountantState : State
    {
        public AccountantState(StateMachine stateMachine) : base(stateMachine)
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
