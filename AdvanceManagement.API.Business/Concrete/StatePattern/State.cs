using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.StatePattern
{
    public class State
    {
        protected StateMachine stateMachine;

        public enum States
        {
            UnitManager,
            Director,
            GMY,
            GM,
            FinanceManager,
            Accountant
        }

        public State(StateMachine stateMachine)
        {
            this.stateMachine = stateMachine;
        }

        public virtual void EnterState() { }
        public virtual void ExitState() { }
    }
}
