using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.FinanceManager
{
    public class FinanceManagerAddException : Exception
    {
        public FinanceManagerAddException() { }
        public FinanceManagerAddException(string message) : base(message) { }
        public FinanceManagerAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
