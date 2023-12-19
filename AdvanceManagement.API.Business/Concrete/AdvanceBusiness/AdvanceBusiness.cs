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
using System.Reflection.Metadata.Ecma335;
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
                    MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                    var listData = data.ToList();
                    return mapper.MapList(listData);
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

                var data = await dal.GetAll();
                MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                var listData = data.ToList();
                return mapper.MapList(listData);
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

        public async Task<List<AdvanceSelectDTO>> BringAllAdvanceForFinance()
        {
            try
            {

                var data = await dal.BringAllAdvanceForFinance();
                MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                var listData = data.ToList();
                return mapper.MapList(listData);
            }
            catch (Exception ex)
            {
                throw new AdvanceSelectException("Encountered a problem with select", ex);
            }
        }

        public async Task<AdvanceSelectDTO> GetAdvanceByID(int advanceID)
        {
            try
            {
                var data = await dal.GetAdvanceByID(advanceID);
                MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                return mapper.MapProfile(data);
            }
            catch (Exception ex)
            {
                throw new AdvanceSelectException("Encountered a problem with select", ex);
            }
        }

        public async Task<IEnumerable<AdvanceSelectDTO>> BringAllAdvanceForAccountant()
        {
            try
            {
                var data = await dal.BringAllAdvanceForAccountant();
                MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                return mapper.MapList(data.ToList());
            }
            catch (Exception ex)
            {
                throw new AdvanceSelectException("Encountered a problem with select", ex);
            }
        }

        public async Task<AdvanceSelectDTO> FindAdvance(int workerID, int projectID)
        {
            try
            {
                var data = await dal.FindAdvance(workerID, projectID);
                MyMapper<Advance, AdvanceSelectDTO> mapper = new MyMapper<Advance, AdvanceSelectDTO>();
                return mapper.Map(data);
            }
            catch (Exception ex)
            {
                throw new AdvanceSelectException("Encountered a problem with select", ex);
            }
        }
    }
}
    