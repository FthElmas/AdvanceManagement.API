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
    public class DirectorState : State
    {
        IAdvanceRequestStatusDataAccess _dal;
        AdvanceRequestStatus _advanceRequest;
        IDbTransaction dbTransaction;

        public DirectorState(StateMachine stateMachine, AdvanceRequestStatus advanceRequest, IDbTransaction transaction, IAdvanceRequestStatusDataAccess dal) : base(stateMachine)
        {
            _advanceRequest = advanceRequest;
            dbTransaction = transaction;
            _dal = dal;
        }

    

        public override async void EnterState()
        {
            base.EnterState();
            await _dal.AddAdvanceRequest(_advanceRequest, "Direktör Onayı", dbTransaction);
        }

        public override void ExitState()
        {
            base.ExitState();

        }
    }
}
