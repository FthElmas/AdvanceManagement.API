using AdvanceManagement.API.Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Validation.Handler.FluentUser
{
    public class ValidateUser : AbstractValidator<User>
    {
        public ValidateUser()
        {
            RuleFor(x => x.Username).NotNull().NotEmpty();
            RuleFor(x => x.IsActive).NotNull();
        }
    }
}
