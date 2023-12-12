using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Advance
{
    public class AdvanceUpdateException : Exception
    {
        public AdvanceUpdateException() { }
        public AdvanceUpdateException(string message) : base(message) { }
        public AdvanceUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
