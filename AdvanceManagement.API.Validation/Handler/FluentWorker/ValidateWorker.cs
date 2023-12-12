using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentWorker
{
    public class ValidateWorker : AbstractValidator<Worker>
    {
        public ValidateWorker()
        {
            RuleFor(x => x.IsActive).NotNull();
            RuleFor(x => x.UserID).NotNull().NotEqual(0);
            RuleFor(x => x.TitleID).NotNull().NotEqual(0);
            RuleFor(x => x.WorkerPhonenumber).NotEmpty().NotNull();
            RuleFor(x => x.WorkerName).NotEmpty().NotNull();
            RuleFor(x => x.WorkerEmail).NotEmpty().NotNull();
        }
    }
}
