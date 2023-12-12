using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentFinanceManager
{
    public class ValidateFinanceManager : AbstractValidator<FinanceManager>
    {
        public ValidateFinanceManager()
        {
            RuleFor(x => x.AdvanceID).NotEqual(0);
            RuleFor(x => x.WorkerID).NotEqual(0);
            RuleFor(x => x.DeterminedPaymentDate).NotNull();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
