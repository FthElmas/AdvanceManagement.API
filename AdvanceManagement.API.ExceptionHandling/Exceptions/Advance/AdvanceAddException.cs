using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Advance
{
    public class AdvanceAddException : Exception
    {
        public AdvanceAddException() { }
        public AdvanceAddException(string message) : base (message) { }
        public AdvanceAddException(string message , Exception innerException) : base(message, innerException) { }

    }
}
