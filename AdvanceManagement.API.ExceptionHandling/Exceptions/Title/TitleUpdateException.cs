using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Title
{
    public class TitleUpdateException : Exception
    {
        public TitleUpdateException() { }
        public TitleUpdateException(string message) : base(message) { }
        public TitleUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
