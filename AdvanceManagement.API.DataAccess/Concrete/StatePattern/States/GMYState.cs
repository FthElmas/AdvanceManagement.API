using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceRequestStatusAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern.States
{
    public class GMYState : State
    {
        AdvanceRequestStatusDataAccess _dal;
        AdvanceRequestStatus _advanceRequest;
        IDbTransaction dbTransaction;
        public GMYState(StateMachine stateMachine, AdvanceRequestStatus advanceRequest, IDbTransaction dbTransaction) : base(stateMachine)
        {
            _advanceRequest = advanceRequest;
           this. dbTransaction = dbTransaction;
            _dal = new AdvanceRequestStatusDataAccess();
        }

        public override async void EnterState()
        {
            base.EnterState();
            await _dal.AddAdvanceRequest(_advanceRequest, "GMY Onayı", dbTransaction);

        }

        public override void ExitState()
        {
            base.ExitState();
            
        }
    }
}
