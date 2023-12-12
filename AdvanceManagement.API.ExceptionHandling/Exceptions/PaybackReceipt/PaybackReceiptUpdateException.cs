﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.ExceptionHandling.Exceptions.PaybackReceipt
{
    public class PaybackReceiptUpdateException : Exception
    {
        public PaybackReceiptUpdateException() { }
        public PaybackReceiptUpdateException(string message) : base(message) { }
        public PaybackReceiptUpdateException(string message, Exception innerException) : base(message, innerException) { }
    }
}
