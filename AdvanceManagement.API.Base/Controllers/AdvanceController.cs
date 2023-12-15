using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using Microsoft.AspNetCore.Mvc;

namespace AdvanceManagement.API.Base.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdvanceController(IAdvanceBusiness buss) : Controller
    {
        [HttpGet("~/api/getAll")]
        public async Task<IActionResult> GetAll()
        {

            var data = await buss.GetAll();
            return Ok(data);
        }

        [HttpGet("~/api/getWithID")]
        public async Task<IActionResult> GetAllWithID(int workerID)
        {
            var data = await buss.GetWorkerAdvance(workerID);
            return Ok(data);
        }

        [HttpPost("~/api/advanceRequest")]
        public async Task<IActionResult> AddAdvance([FromBody]AdvanceAddDTO advance)
        {
            var data = await buss.AddAdvanceWithStatus(advance);
            if (data)
                return Ok(data);
            else
                return BadRequest();
        }
    }
}
