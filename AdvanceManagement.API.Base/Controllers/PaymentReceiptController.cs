using AdvanceManagement.API.Business.Abstract.IPaymentReceiptBusiness;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPaymentReceipt;
using Microsoft.AspNetCore.Mvc;

namespace AdvanceManagement.API.Base.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentReceiptController(IPaymentReceiptBusiness buss) : Controller
    {
        [HttpPost("~/api/addPaymentReceipt")]
        public async Task<IActionResult> AddPaymentReceipt([FromBody]PaymentReceiptAddDTO receipt)
        {
            if (receipt != null)
            {
                var data = await buss.AddPaymentReceipt(receipt);
                return Ok(data);
            }
            else
                return BadRequest();
        }
    }
}
