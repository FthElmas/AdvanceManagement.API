﻿using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule;
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
        public async Task<IActionResult> GetAllWithID()
        {
            var data = 
        }
    }
}
