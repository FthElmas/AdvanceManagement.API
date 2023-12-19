using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitleAmountApprovalRule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule
{
    public interface ITitleAmountApprovalRuleBusiness
    {
        Task<IEnumerable<TitleAmountApprovalRuleSelectDTO>> GetRuleAccordingToAmount();
    }
}
