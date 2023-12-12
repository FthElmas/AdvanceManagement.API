using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.FinanceManager
{
    public class FinanceManagerUpdateException : Exception
    {
        public FinanceManagerUpdateException() { }
        public FinanceManagerUpdateException(string message) : base(message) { }
        public FinanceManagerUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
