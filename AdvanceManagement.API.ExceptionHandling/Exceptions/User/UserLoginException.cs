using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.User
{
    public class UserLoginException : Exception
    {
        public UserLoginException() { }
        public UserLoginException(string message) : base(message) { }
        public UserLoginException(string message, Exception innerException) : base(message, innerException) { }
    }
}
