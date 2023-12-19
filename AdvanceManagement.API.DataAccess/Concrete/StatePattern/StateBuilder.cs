using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.StatePattern
{
    public class StateBuilder
    {
        private ApprovalStateMachine _stateMachine;
        private decimal _requestedAmount;
        private Dictionary<string, decimal> _ruleData;

        public StateBuilder(ITitleAmountApprovalRuleDataAccess dal, IAdvanceRequestStatusDataAccess advanceDal, decimal requestedAmount, ApprovalStateMachine _stateMachine)
        {
            this._stateMachine = _stateMachine;
            _requestedAmount = requestedAmount;
            _ruleData = dal.GetRuleAccordingToAmount().Result.ToDictionary(item => item.Title.TitleName, item => item.MinAmount);
        }

        public StateBuilder AddStateByRule(IDbTransaction transaction, string ruleName, State state)
        {
            if (_requestedAmount >= _ruleData[ruleName])
            {
                _stateMachine.ChangeState(state);
            }

            return this;
        }

        public ApprovalStateMachine Build()
        {
            return _stateMachine;
        }
    }
}
