using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentPaybackReceipt
{
    public class ValidatePaybackReceipt : AbstractValidator<PaybackReceipt>
    {
        public ValidatePaybackReceipt()
        {
            RuleFor(x => x.AdvanceID).NotEqual(0).NotNull();
            RuleFor(x => x.ReceiptDate).NotNull();
            RuleFor(x => x.ReceiptDescription).NotEmpty().NotNull();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
