using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IAdvanceRequestStatusBusiness
{
    public interface IAdvanceRequestStatusBusiness
    {
        Task<List<AdvanceRequestStatusSelectDTO>> GetWorkerAdvance(int advanceID);
        Task<List<AdvanceRequestStatusSelectDTO>> GetRequestWithTitle(int titleID);
        Task<List<AdvanceRequestStatusSelectDTO>> GetRequestForUnitManager(int titleID);
        Task<bool> UpdateAdvanceRequest(AdvanceRequestStatusUpdateDTO advance);
    }
}
