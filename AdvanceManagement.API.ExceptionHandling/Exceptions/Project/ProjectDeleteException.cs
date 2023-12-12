using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Project
{
    public class ProjectDeleteException : Exception
    {
        public ProjectDeleteException() { }
        public ProjectDeleteException(string message) : base(message) { }
        public ProjectDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
