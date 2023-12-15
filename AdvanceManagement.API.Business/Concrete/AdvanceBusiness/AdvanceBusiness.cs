using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.ExceptionHandling.Exceptions.Advance;
using AdvanceManagement.API.Validation.Handler.FluentAdvance;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.AdvanceBusiness
{
    public class AdvanceBusiness(IAdvanceDataAccess dal) : IAdvanceBusiness
    {
        ValidateAdvance validateAdvance;




        public async Task<List<AdvanceSelectDTO>> GetWorkerAdvance(int workerID)
        {
            try
            {
                if(workerID != 0)
                {
                    var data = await dal.GetWorkerAdvance(workerID);
                    var list = new List<AdvanceSelectDTO>();
                    MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                    foreach (var item in data)
                    {
                        list.Add(mapper.Map(item));
                    }
                    return list;
                }
                else
                    throw new AdvanceSelectException("workerID is 0");
            }
            catch (Exception ex)
            {
                throw new AdvanceSelectException("Encountered a problem with select", ex);
            }
        }

        public async Task<List<AdvanceSelectDTO>> GetAll()
        {
            try
            {
                var list = new List<AdvanceSelectDTO>();
                var data = await dal.GetAll();
                MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                foreach(var item in data)
                {
                    list.Add(mapper.Map(item));
                }
                return list;
            }
            catch(Exception ex)
            {
                throw new AdvanceSelectException("Encountered a problem with select" , ex);
            }
        }

        public async Task<bool> AddAdvanceWithStatus(AdvanceAddDTO advance)
        {
            MyMapper<AdvanceAddDTO, Advance> mapper = new MyMapper<AdvanceAddDTO, Advance>();
            var data = mapper.Map(advance);
            validateAdvance = new ValidateAdvance();
            ValidationResult result = validateAdvance.Validate(data);

            if(result.IsValid)
            {
                await dal.AddAdvanceWithStatus(data);
                return true;
            }
            else
            {
                throw new AdvanceAddException("Exception occured while adding an advance");
            }
        }
    }
}
    