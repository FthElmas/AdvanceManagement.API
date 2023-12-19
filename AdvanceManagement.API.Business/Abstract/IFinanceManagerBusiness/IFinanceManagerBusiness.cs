using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IFinanceManagerBusiness
{
    public interface IFinanceManagerBusiness
    {
        Task<bool> AddFinanceManager(FinanceManagerAddDTO finance);
    }
}
