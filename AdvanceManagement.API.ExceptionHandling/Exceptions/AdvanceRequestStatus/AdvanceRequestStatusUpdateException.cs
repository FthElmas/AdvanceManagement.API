using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.AdvanceRequestStatus
{
    public class AdvanceRequestStatusUpdateException : Exception
    {
        public AdvanceRequestStatusUpdateException() { }
        public AdvanceRequestStatusUpdateException(string message) : base(message) { }
        public AdvanceRequestStatusUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
