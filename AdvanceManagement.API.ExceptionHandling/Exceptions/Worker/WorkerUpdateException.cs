using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Worker
{
    public class WorkerUpdateException : Exception
    {
        public WorkerUpdateException() { }
        public WorkerUpdateException(string message) : base(message) { }
        public WorkerUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
