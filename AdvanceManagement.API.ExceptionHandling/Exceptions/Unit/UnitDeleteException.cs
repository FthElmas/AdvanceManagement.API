using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Unit
{
    public class UnitDeleteException : Exception
    {
        public UnitDeleteException) { }
        public UnitDeleteException(string message) : base(message) { }
        public UnitDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
