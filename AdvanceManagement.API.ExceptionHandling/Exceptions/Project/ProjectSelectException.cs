using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Project
{
    public class ProjectSelectException : Exception
    {
        public ProjectSelectException() { }
        public ProjectSelectException(string message) : base(message) { }
        public ProjectSelectException(string message, Exception innerException) : base(message, innerException) { }
    }
}
