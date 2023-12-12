using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Worker
{
    public class WorkerDeleteException : Exception
    {
        public WorkerDeleteException() { }
        public WorkerDeleteException(string message) : base(message) { }
        public WorkerDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
