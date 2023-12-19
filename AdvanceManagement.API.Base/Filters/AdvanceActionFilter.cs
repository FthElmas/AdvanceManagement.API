using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;


namespace AdvanceManagement.API.Base.Filters
{
    public class AdvanceActionFilter(IAdvanceBusiness business) : ActionFilterAttribute
    {
        public override async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            var reqValue = context.ActionArguments.Values.FirstOrDefault() as AdvanceAddDTO;

            var data = await business.FindAdvance((int)reqValue.WorkerID, (int)reqValue.ProjectID);

            if (reqValue != null && data == null)
            {
                await next();
            }
            else
            {
                var error = new ErrorDTO()
                {
                    StatusCode = 400,
                    ErrorMessages = new List<string> { "Zaten bu projede bir avans talebiniz mevcut!!" }
                };
                context.Result = new BadRequestObjectResult(error);
            }
        }
    }
}
