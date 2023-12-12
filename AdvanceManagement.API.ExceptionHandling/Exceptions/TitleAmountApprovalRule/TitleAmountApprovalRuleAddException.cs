using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.TitleAmountApprovalRule
{
    public class TitleAmountApprovalRuleAddException : Exception
    {
        public TitleAmountApprovalRuleAddException() { }
        public TitleAmountApprovalRuleAddException(string message) : base(message) { }
        public TitleAmountApprovalRuleAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
