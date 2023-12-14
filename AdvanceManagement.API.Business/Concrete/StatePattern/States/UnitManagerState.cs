using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceRequestStatusAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.StatePattern.States
{
    public class UnitManagerState : State
    {
        AdvanceRequestStatusDataAccess _dal;
        AdvanceRequestStatus _advanceRequest;
        public UnitManagerState(StateMachine stateMachine, AdvanceRequestStatus advanceRequest) : base(stateMachine)
        {
            _dal = new AdvanceRequestStatusDataAccess();
            _advanceRequest = advanceRequest;
        }


        public override async void EnterState()
        {
            base.EnterState();
            await _dal.AddAdvanceRequest(_advanceRequest, "");

        }

        public override void ExitState()
        {
            base.ExitState();
        }
    }
}
