using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentTitle
{
    public class ValidateTitle : AbstractValidator<Title>
    {
        public ValidateTitle()
        {
            RuleFor(x => x.TitleName).NotEmpty().NotNull();
            RuleFor(x => x.TitleDescription).NotEmpty().NotNull();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
