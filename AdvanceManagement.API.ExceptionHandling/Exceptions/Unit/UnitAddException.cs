using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Unit
{
    public class UnitAddException : Exception
    {
        public UnitAddException() { }
        public UnitAddException(string message) : base(message) { }
        public UnitAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
