using AdvanceManagement.API.Business.Abstract.IAdvanceRequestStatusBusiness;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.AdvanceRequestBusiness
{
    public class AdvanceRequestStatusBusiness(IAdvanceRequestStatusDataAccess dal) : IAdvanceRequestStatusBusiness
    {
        public Task<IEnumerable<AdvanceRequestStatusSelectDTO>> GetWorkerAdvance(int workerID)
        {
            throw new NotImplementedException();
        }
    }
}
