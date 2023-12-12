using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.TitleAmountApprovalRule
{
    public class TitleAmountApprovalRuleUpdateException : Exception
    {
        public TitleAmountApprovalRuleUpdateException() { }
        public TitleAmountApprovalRuleUpdateException(string message) : base(message) { }
        public TitleAmountApprovalRuleUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
