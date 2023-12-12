using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentTitleAmountApprovalRule
{
    public class ValidateTitleAmountApprovalRule : AbstractValidator<TitleAmountApprovalRule>
    {
        public ValidateTitleAmountApprovalRule()
        {
            RuleFor(x => x.TitleID).NotEqual(0).NotNull();
            RuleFor(x => x.MinAmount).NotEqual(0).NotNull();
            RuleFor(x => x.MaxAmount).NotEqual(0).NotNull();
            RuleFor(x => x.Date).NotNull();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
