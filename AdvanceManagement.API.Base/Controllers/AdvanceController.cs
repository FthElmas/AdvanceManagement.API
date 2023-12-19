using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.Core.Entities;
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

        [HttpGet("{workerID}")]
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


        [HttpGet("~/api/getForFinance")]
        public async Task<IActionResult> BringAllForFinance()
        {
            var data = await buss.BringAllAdvanceForFinance();
            return Ok(data);
        }


        [HttpGet("getWithAdvanceID/{advanceID}")]
        public async Task<IActionResult> GetAllWithAdvanceID(int advanceID)
        {
            var data = await buss.GetAdvanceByID(advanceID);
            if (data != null)
                return Ok(data);

            return BadRequest();
        }


        [HttpGet("~/api/getForAccountant")]
        public async Task<IActionResult> BringAllForAccountant()
        {
            var data = await buss.BringAllAdvanceForAccountant();
            return Ok(data);
        }
    }
}
