using AdvanceManagement.API.Business.Abstract.IPaymentReceiptBusiness;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IPaymentReceipt;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPaymentReceipt;
using AdvanceManagement.API.ExceptionHandling.Exceptions.PaymentReceipt;
using AdvanceManagement.API.Validation.Handler.FluentPaymentReceipt;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.PaymentReceiptBusiness
{
    public class PaymentReceiptBusiness(IPaymentReceiptDataAccess dal, ValidatePaymentReceipt validation) : IPaymentReceiptBusiness
    {
        public async Task<bool> AddPaymentReceipt(PaymentReceiptAddDTO receipt)
        {
            try
            {
                MyMapper<PaymentReceiptAddDTO, PaymentReceipt> mapper = new MyMapper<PaymentReceiptAddDTO, PaymentReceipt>();
                var data = mapper.Map(receipt);
                ValidationResult result = await validation.ValidateAsync(data);
                if(result.IsValid)
                {
                    return await dal.Add(data);
                }
                else
                    throw new PaymentReceiptAddException();
            }
            catch(Exception ex)
            {
                throw new PaymentReceiptAddException();
            }
        }
    }
}
