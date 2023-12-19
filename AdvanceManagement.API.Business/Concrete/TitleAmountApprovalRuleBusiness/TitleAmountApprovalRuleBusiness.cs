using AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitleAmountApprovalRule;
using AdvanceManagement.API.ExceptionHandling.Exceptions.TitleAmountApprovalRule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.TitleAmountApprovalRuleBusiness
{
    public class TitleAmountApprovalRuleBusiness(ITitleAmountApprovalRuleDataAccess dal) : ITitleAmountApprovalRuleBusiness
    {
        public async Task<IEnumerable<TitleAmountApprovalRuleSelectDTO>> GetRuleAccordingToAmount()
        {
            var data = await dal.GetRuleAccordingToAmount();

            MyMapper<TitleAmountApprovalRule, TitleAmountApprovalRuleSelectDTO> mapper = new MyMapper<TitleAmountApprovalRule, TitleAmountApprovalRuleSelectDTO>();



            return mapper.MapList(data.ToList());
        }
    }
}
