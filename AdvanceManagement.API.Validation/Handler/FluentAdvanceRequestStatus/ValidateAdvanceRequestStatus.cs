using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentAdvanceRequestStatus
{
    public class ValidateAdvanceRequestStatus : AbstractValidator<AdvanceRequestStatus>
    {
        public ValidateAdvanceRequestStatus()
        {
            RuleFor(x => x.AdvanceID).NotEqual(0);
            RuleFor(x => x.ApprovalStatusID).NotEqual(0);
            RuleFor(x => x.ProcessDate).NotNull();
            RuleFor(x => x.ApprovedAmount).NotEqual(0).NotEmpty();
            RuleFor(x => x.StatusName).NotEmpty().NotNull();
            RuleFor(x => x.StatusDescription).NotEmpty().NotNull();
        }
    }
}
