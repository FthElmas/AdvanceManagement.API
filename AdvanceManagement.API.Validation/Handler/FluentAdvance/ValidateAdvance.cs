using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentValidation;
using AdvanceManagement.API.Core.Entities;

namespace AdvanceManagement.API.Validation.Handler.FluentAdvance
{
    public class ValidateAdvance : AbstractValidator<Advance>
    {
        public ValidateAdvance()
        {
            RuleFor(x => x.AdvanceAmount).GreaterThan(0).NotNull();
            RuleFor(x => x.AmountPaymentDate).NotNull();
            RuleFor(x => x.RequestDate).NotNull();
            RuleFor(x => x.WorkerID).NotEqual(0).NotNull();

        }
    }
}
