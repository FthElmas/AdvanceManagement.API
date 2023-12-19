using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPaymentReceipt;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IPaymentReceiptBusiness
{
    public interface IPaymentReceiptBusiness
    {
        Task<bool> AddPaymentReceipt(PaymentReceiptAddDTO receipt);
    }
}
