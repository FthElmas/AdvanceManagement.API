using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Project
{
    public class ProjectUpdateException : Exception
    {
        public ProjectUpdateException() { }
        public ProjectUpdateException(string message) : base(message) { }
        public ProjectUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
