using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.TitleAmountApprovalRule
{
    public class TitleAmountApprovalRuleDeleteException : Exception
    {
        public TitleAmountApprovalRuleDeleteException() { }
        public TitleAmountApprovalRuleDeleteException(string message) : base(message) { }
        public TitleAmountApprovalRuleDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
