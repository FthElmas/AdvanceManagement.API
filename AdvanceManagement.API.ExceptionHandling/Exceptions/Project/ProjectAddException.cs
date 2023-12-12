using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Project
{
    public class ProjectAddException : Exception
    {
        public ProjectAddException() { }
        public ProjectAddException(string message) : base(message) { }
        public ProjectAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
