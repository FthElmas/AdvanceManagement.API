using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IAdvanceBusiness
{
    public interface IAdvanceBusiness
    {
        Task<IEnumerable<Advance>> GetAll();
    }
}
