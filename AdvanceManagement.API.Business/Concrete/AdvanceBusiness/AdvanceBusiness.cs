using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.AdvanceBusiness
{
    public class AdvanceBusiness(IAdvanceDataAccess dal) : IAdvanceBusiness
    {

        public Task<IEnumerable<Advance>> GetAll()
        { 
            return dal.GetAll();
        }
    }
}
    