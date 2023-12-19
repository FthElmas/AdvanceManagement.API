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
    public class GMState : State
    {
        IAdvanceRequestStatusDataAccess _dal;
        AdvanceRequestStatus _advanceRequest;
        IDbTransaction dbTransaction;
        public GMState(StateMachine stateMachine, AdvanceRequestStatus advanceRequest, IDbTransaction dbTransaction, IAdvanceRequestStatusDataAccess dal) : base(stateMachine)
        {
            _advanceRequest = advanceRequest;
            this.dbTransaction = dbTransaction;
            _dal = dal;
        }

        public override async void EnterState()
        {
            base.EnterState();
            await _dal.AddAdvanceRequest(_advanceRequest, "GM Onayı", dbTransaction);
        }

        public override void ExitState()
        {
            base.ExitState();
            
        }
    }
}
