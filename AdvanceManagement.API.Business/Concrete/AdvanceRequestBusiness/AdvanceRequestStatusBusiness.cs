using AdvanceManagement.API.Business.Abstract.IAdvanceRequestStatusBusiness;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using AdvanceManagement.API.ExceptionHandling.Exceptions.AdvanceRequestStatus;
using AdvanceManagement.API.Validation.Handler.FluentAdvanceRequestStatus;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.AdvanceRequestBusiness
{
    public class AdvanceRequestStatusBusiness(IAdvanceRequestStatusDataAccess dal, ValidateAdvanceRequestStatus validation) : IAdvanceRequestStatusBusiness
    {
        public async Task<List<AdvanceRequestStatusSelectDTO>> GetRequestForUnitManager(int titleID)
        {
            try
            {
                var data = await dal.GetRequestForUnitManager(titleID);
                MyMapper<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO> mapper = new MyMapper<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO>();
                var listData = data.ToList();
                if (data != null)
                {
                    return mapper.MapList(listData);
                }
                return null;

            }
            catch (Exception ex)
            {
                throw new AdvanceRequestStatusSelectException("advance request status select exception occured", ex);
            }
        }


        public async Task<bool> UpdateAdvanceRequest(AdvanceRequestStatusUpdateDTO advance)
        {
            try
            {
                MyMapper<AdvanceRequestStatusUpdateDTO, AdvanceRequestStatus> mapper = new MyMapper<AdvanceRequestStatusUpdateDTO, AdvanceRequestStatus>();
                var data = mapper.Map(advance);
                ValidationResult result = await validation.ValidateAsync(data);
                if(result.IsValid)
                {
                    return await dal.Update(data);
                }
                else
                {
                    throw new AdvanceRequestStatusUpdateException();
                }
            }
            catch
            {
                throw new AdvanceRequestStatusUpdateException();
            }
        }


        public async Task<List<AdvanceRequestStatusSelectDTO>> GetRequestWithTitle(int titleID)
        {
            try
            {
                var data = await dal.GetRequestWithTitle(titleID);
                MyMapper<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO> mapper = new MyMapper<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO>();
                var listData = data.ToList();
                if (data != null)
                {
                    return mapper.MapList(listData);
                }
                return null;

            }
            catch (Exception ex)
            {
                throw new AdvanceRequestStatusSelectException("advance request status select exception occured", ex);
            }
        }

        public async Task<List<AdvanceRequestStatusSelectDTO>> GetWorkerAdvance(int advanceID)
        {
            try
            {
                var data = await dal.GetWorkerAdvance(advanceID);
                MyMapper<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO> mapper = new MyMapper<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO>();
                var listData = data.ToList();
                if (data != null)
                {
                    return mapper.MapList(listData);
                }
                return null;
                    
            }
            catch(Exception ex)
            {
                throw new AdvanceRequestStatusSelectException("advance request status select exception occured", ex);
            }
        }
    }
}
