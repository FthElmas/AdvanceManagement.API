using AdvanceManagement.API.Business.Abstract.IProjectBusiness;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Identity.Client;

namespace AdvanceManagement.API.Base.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProjectController(IProjectBusiness buss) : Controller
    {

        [HttpGet("{workerID}")]
        public async Task<IActionResult> GetProjects(int workerID)
        {
            if(workerID != 0)
            {
                var data = await buss.GetAllProjectOfWorker(workerID);
                return Ok(data);
            }
            return BadRequest();
        }
    }
}
