using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.PaymentReceipt
{
    public class PaymentReceiptDeleteException : Exception
    {
        public PaymentReceiptDeleteException() { }
        public PaymentReceiptDeleteException(string message) : base(message) { }
        public PaymentReceiptDeleteException(string message, Exception innerException) : base(message, innerException) { }
    }
}
