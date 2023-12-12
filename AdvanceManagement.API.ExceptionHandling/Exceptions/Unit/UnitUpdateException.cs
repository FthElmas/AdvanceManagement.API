using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Unit
{
    public class UnitUpdateException : Exception
    {
        public UnitUpdateException() { }
        public UnitUpdateException(string message) : base(message) { }
        public UnitUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
