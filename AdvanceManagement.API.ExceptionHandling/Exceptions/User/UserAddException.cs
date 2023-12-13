using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.User
{
    public class UserAddException : Exception
    {
        public UserAddException() { }
        public UserAddException(string message) : base(message) { }
        public UserAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
