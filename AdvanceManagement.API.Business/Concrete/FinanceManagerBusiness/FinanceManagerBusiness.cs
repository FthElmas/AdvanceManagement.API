using AdvanceManagement.API.Business.Abstract.IFinanceManagerBusiness;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IFinanceManager;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using AdvanceManagement.API.ExceptionHandling.Exceptions.FinanceManager;
using AdvanceManagement.API.Validation.Handler.FluentFinanceManager;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.FinanceManagerBusiness
{
    public class FinanceManagerBusiness(IFinanceManagerDataAccess dal, ValidateFinanceManager validation) : IFinanceManagerBusiness
    {

        public async Task<bool> AddFinanceManager(FinanceManagerAddDTO finance)
        {
            MyMapper<FinanceManagerAddDTO, FinanceManager> mapper = new MyMapper<FinanceManagerAddDTO, FinanceManager>();
            var data = mapper.Map(finance);
            ValidationResult result = validation.Validate(data);
            if(result.IsValid)
            {
                return await dal.Add(data);
            }
            else
            {
                throw new FinanceManagerAddException();
            }
        }
    }
}
