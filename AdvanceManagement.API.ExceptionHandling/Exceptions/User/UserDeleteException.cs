using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.User
{
    public class UserDeleteException : Exception
    {
        public UserDeleteException() { }
        public UserDeleteException(string message) : base(message) { }
        public UserDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
