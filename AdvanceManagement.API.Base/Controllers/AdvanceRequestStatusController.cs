using AdvanceManagement.API.Business.Abstract.IAdvanceRequestStatusBusiness;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using Microsoft.AspNetCore.Mvc;

namespace AdvanceManagement.API.Base.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdvanceRequestStatusController(IAdvanceRequestStatusBusiness buss) : Controller
    {

        [HttpGet("{advanceID}")]
        public async Task<IActionResult> GetAll(int advanceID)
        {
            var data = await buss.GetWorkerAdvance(advanceID);

            if (data != null)
                return Ok(data);
            return BadRequest();
        }


        [HttpGet("getAllWithTitle/{titleID}")]
        public async Task<IActionResult> GetAllWithTitle(int titleID)
        {
            var data = await buss.GetRequestWithTitle(titleID);

            if (data != null)
                return Ok(data);
            return BadRequest();
        }

        [HttpGet("getAllForUnitManager/{titleID}")]
        public async Task<IActionResult> GetAllForUnitManager(int titleID)
        {
            var data = await buss.GetRequestForUnitManager(titleID);

            if (data != null)
                return Ok(data);
            return BadRequest();
        }

        [HttpPut("~/api/updateAdvanceRequest")]
        public async Task<IActionResult> UpdateAdvanceRequest([FromBody]AdvanceRequestStatusUpdateDTO advance)
        {
            if (advance != null)
            {
                var data = await buss.UpdateAdvanceRequest(advance);
                return Ok(data);
            }
            else
                return BadRequest();
        }

    }
}
