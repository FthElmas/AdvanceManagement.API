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
        public async Task<IEnumerable<TitleAmountApprovalRuleSelectDTO>> GetRuleAccordingToAmount(decimal amount)
        {
            if(amount != 0)
            {
                var list = new List<TitleAmountApprovalRuleSelectDTO>();
                var data = await dal.GetRuleAccordingToAmount(amount);

                MyMapper<TitleAmountApprovalRule, TitleAmountApprovalRuleSelectDTO> mapper = new MyMapper<TitleAmountApprovalRule, TitleAmountApprovalRuleSelectDTO>();

                data.ToList().ForEach(a => list.Add(mapper.Map(a)));

                return list;
            }
            else
            {
                throw new TitleAmountApprovalRuleAddException();
            }
        }
    }
}
