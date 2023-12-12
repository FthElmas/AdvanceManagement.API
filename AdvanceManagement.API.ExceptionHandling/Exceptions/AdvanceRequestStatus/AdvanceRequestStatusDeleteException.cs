using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.AdvanceRequestStatus
{
    public class AdvanceRequestStatusDeleteException : Exception
    {
        public AdvanceRequestStatusDeleteException() { }
        public AdvanceRequestStatusDeleteException(string message) : base(message) { }
        public AdvanceRequestStatusDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
