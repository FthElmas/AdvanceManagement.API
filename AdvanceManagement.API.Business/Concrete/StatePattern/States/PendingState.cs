﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.StatePattern.States
{
    public class PendingState : State
    {
        public PendingState(StateMachine stateMachine) : base(stateMachine)
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
