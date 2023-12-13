using AdvanceManagement.API.DataAccess.Abstract.IBase;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using FluentValidation;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.Base
{
    public abstract class BaseBusiness<TEntity, T, TBase> where T : ValidationResult where TEntity : class where TBase : AbstractValidator<TEntity>
    {
        

        
    }
}
