using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.AdvanceRequestStatus
{
    public class AdvanceRequestStatusSelectException : Exception
    {
        public AdvanceRequestStatusSelectException() { }
        public AdvanceRequestStatusSelectException(string message) : base(message) { }
        public AdvanceRequestStatusSelectException(string message, Exception innerException) : base(message, innerException) { }

    }
}
