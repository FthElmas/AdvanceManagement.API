using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceRequestStatusAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern.States
{
    public class PendingState : State
    {
        IAdvanceRequestStatusDataAccess _dal;
        AdvanceRequestStatus _advanceRequest;
        IDbTransaction dbTransaction;
        public PendingState(StateMachine stateMachine, AdvanceRequestStatus advanceRequest, IDbTransaction dbTransaction, IAdvanceRequestStatusDataAccess dal) : base(stateMachine)
        {
            _advanceRequest = advanceRequest;
            this.dbTransaction = dbTransaction;
            _dal = dal;
        }

        public override async void EnterState()
        {
            base.EnterState();
            _advanceRequest.IsActive = true;
            await _dal.AddAdvanceRequest(_advanceRequest, "Beklemede", dbTransaction);
        }

        public override void ExitState()
        {
            base.ExitState();
            
        }
    }
}
