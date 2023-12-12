using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.PaybackReceipt
{
    public class PaybackReceiptAddException : Exception
    {
        public PaybackReceiptAddException() { }
        public PaybackReceiptAddException(string message) : base(message) { }
        public PaybackReceiptAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
