using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.ApprovalStatus
{
    public class ApprovalStatusDeleteException : Exception
    {
        public ApprovalStatusDeleteException() { }
        public ApprovalStatusDeleteException(string message) : base(message) { }
        public ApprovalStatusDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
