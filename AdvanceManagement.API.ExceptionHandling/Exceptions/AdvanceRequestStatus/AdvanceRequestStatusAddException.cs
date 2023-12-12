using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.AdvanceRequestStatus
{
    public class AdvanceRequestStatusAddException : Exception
    {
        public AdvanceRequestStatusAddException() { }
        public AdvanceRequestStatusAddException(string message) : base(message) { }
        public AdvanceRequestStatusAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
