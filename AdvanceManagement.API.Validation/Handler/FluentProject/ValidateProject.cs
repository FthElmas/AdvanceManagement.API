using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentProject
{
    public class ValidateProject : AbstractValidator<Project>
    {
        public ValidateProject()
        {
            RuleFor(x => x.ProjectName).NotEmpty().NotNull();
            RuleFor(x => x.IsActive).NotNull();
            RuleFor(x => x.StartDate).NotNull();
            RuleFor(x => x.EndDate).NotNull();
            RuleFor(x => x.ProjectExplanation).NotEmpty().NotNull();
        }
    }
}
