using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.Title
{
    public class TitleAddException : Exception
    {
        public TitleAddException() { }
        public TitleAddException(string message) : base(message) { }
        public TitleAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
