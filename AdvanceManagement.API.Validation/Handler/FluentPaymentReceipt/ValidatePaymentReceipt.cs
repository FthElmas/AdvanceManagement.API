using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentPaymentReceipt
{
    public class ValidatePaymentReceipt : AbstractValidator<PaymentReceipt>
    {
        public ValidatePaymentReceipt()
        {
            RuleFor(x => x.AdvanceID).NotEqual(0).NotNull();
            RuleFor(x => x.ReceiptDate).NotNull();
            RuleFor(x => x.ReceiptDescription).NotEmpty().NotNull();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
