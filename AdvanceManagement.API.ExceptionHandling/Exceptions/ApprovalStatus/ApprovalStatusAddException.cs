using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.ApprovalStatus
{
    public class ApprovalStatusAddException : Exception
    {
        public ApprovalStatusAddException() { }
        public ApprovalStatusAddException(string message) : base(message) { }
        public ApprovalStatusAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
