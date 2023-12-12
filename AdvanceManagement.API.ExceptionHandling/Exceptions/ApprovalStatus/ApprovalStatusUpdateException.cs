using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.ApprovalStatus
{
    public class ApprovalStatusUpdateException : Exception
    {
        public ApprovalStatusUpdateException() { }
        public ApprovalStatusUpdateException(string message) : base(message) { }
        public ApprovalStatusUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
