using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Worker
{
    public class WorkerAddException : Exception
    {
        public WorkerAddException() { }
        public WorkerAddException(string message) : base(message) { }
        public WorkerAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
