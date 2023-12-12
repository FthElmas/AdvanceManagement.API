using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Advance
{
    public class AdvanceDeleteException : Exception
    {
        public AdvanceDeleteException() { }
        public AdvanceDeleteException(string message) : base(message) { }
        public AdvanceDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
