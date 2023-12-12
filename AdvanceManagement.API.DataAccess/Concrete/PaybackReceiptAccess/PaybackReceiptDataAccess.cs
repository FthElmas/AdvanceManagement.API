using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IPaybackReceipt;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.PaybackReceiptAccess
{
    internal class PaybackReceiptDataAccess : BaseDataAccess<PaybackReceipt> , IPaybackReceiptDataAccess
    {
    }
}
