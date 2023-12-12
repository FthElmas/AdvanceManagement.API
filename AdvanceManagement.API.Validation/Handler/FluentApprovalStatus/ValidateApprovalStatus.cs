using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentApprovalStatus
{
    public class ValidateApprovalStatus : AbstractValidator<ApprovalStatus>
    {
        public ValidateApprovalStatus()
        {
            RuleFor(x => x.ApprovalName).NotNull().NotEmpty();
            RuleFor(x => x.IsActive).NotNull();

        }
    }
}
