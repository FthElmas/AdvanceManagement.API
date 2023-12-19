using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IAdvanceBusiness
{
    public interface IAdvanceBusiness
    {
        Task<List<AdvanceSelectDTO>> GetAll();
        Task<List<AdvanceSelectDTO>> GetWorkerAdvance(int workerID);
        Task<bool> AddAdvanceWithStatus(AdvanceAddDTO advance);
        Task<List<AdvanceSelectDTO>> BringAllAdvanceForFinance();
        Task<AdvanceSelectDTO> GetAdvanceByID(int advanceID);
        Task<IEnumerable<AdvanceSelectDTO>> BringAllAdvanceForAccountant();
        Task<AdvanceSelectDTO> FindAdvance(int workerID, int projectID);
    }
}
