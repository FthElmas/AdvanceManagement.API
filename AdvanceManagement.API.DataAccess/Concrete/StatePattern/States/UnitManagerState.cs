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
    public class UnitManagerState : State
    {
        AdvanceRequestStatusDataAccess _dal;
        AdvanceRequestStatus _advanceRequest;
        IDbTransaction dbTransaction;
        public UnitManagerState(StateMachine stateMachine, AdvanceRequestStatus advanceRequest, IDbTransaction dbTransaction) : base(stateMachine)
        {
            _dal = new AdvanceRequestStatusDataAccess();
            _advanceRequest = advanceRequest;
            this.dbTransaction = dbTransaction;
        }


        public override async void EnterState()
        {
            base.EnterState();
            await _dal.AddAdvanceRequest(_advanceRequest, "Birim Müdürü Onayı", dbTransaction);

        }

        public override void ExitState()
        {
            base.ExitState();
            
        }
    }
}
