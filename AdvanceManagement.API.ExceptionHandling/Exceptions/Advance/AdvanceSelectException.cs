using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Advance
{
    public class AdvanceSelectException : Exception
    {
        public AdvanceSelectException() { }
        public AdvanceSelectException(string message) : base(message) { }
        public AdvanceSelectException(string message, Exception innerException) : base(message, innerException) { }
    }
}
