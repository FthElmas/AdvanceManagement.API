using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentUnit
{
    public class ValidateUnit : AbstractValidator<Unit>
    {
        public ValidateUnit()
        {
            RuleFor(x => x.UnitName).NotEmpty().NotNull();
            RuleFor(x => x.UnitExplanation).NotEmpty().NotNull();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
