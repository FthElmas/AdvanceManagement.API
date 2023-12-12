using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.PaymentReceipt
{
    public class PaymentReceiptAddException : Exception
    {
        public PaymentReceiptAddException() { }
        public PaymentReceiptAddException(string message) : base(message) { }
        public PaymentReceiptAddException(string message, Exception innerException) : base(message, innerException) { }
    }
}
