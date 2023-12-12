using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.PaymentReceipt
{
    public class PaymentReceiptUpdateException : Exception
    {
        public PaymentReceiptUpdateException() { }
        public PaymentReceiptUpdateException(string message) : base(message) { }
        public PaymentReceiptUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
