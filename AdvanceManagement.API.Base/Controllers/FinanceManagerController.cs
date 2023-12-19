using AdvanceManagement.API.Business.Abstract.IFinanceManagerBusiness;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using Microsoft.AspNetCore.Mvc;

namespace AdvanceManagement.API.Base.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FinanceManagerController(IFinanceManagerBusiness buss) : Controller
    {
        [HttpPost("~/api/addFinance")]
        public async Task<IActionResult> AddFinanceManager([FromBody]FinanceManagerAddDTO finance)
        {
            if (finance != null)
            {
                var data = await buss.AddFinanceManager(finance);
                return Ok(data);
            }
            return BadRequest();
        }
    }
}
