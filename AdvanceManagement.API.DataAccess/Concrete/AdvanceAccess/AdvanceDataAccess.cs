using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading.Tasks.Sources;

namespace AdvanceManagement.API.DataAccess.Concrete.AdvanceAccess
{
    public class AdvanceDataAccess : BaseDataAccess<Advance>, IAdvanceDataAccess
    {
    
        //public async Task<Advance> AddAdvance(Advance advance)
        //{
        //    using var conn = _connectionHelper.CreateConnection();
        //    var advanceQuery = "INSERT INTO [Advance] (AdvanceAmount, AdvanceExplanation, WorkerID, RequestDate, AdvanceRequestStatusID, AmountPaymentDate, PaybackDate, ProjectID) VALUES(@AdvanceAmount, @AdvanceExplanation, @WorkerID, @RequestDate, @AdvanceRequestStatusID, @AmountPaymentDate, @PaybackDate, @ProjectID)";
        //    return await conn.QueryFirstOrDefaultAsync<Advance>(advanceQuery, new { advance.AdvanceAmount, advance.AdvanceExplanation, advance.WorkerID, advance.RequestDate, advance.AdvanceRequestStatusID, advance.AmountPaymentDate, advance.PaybackDate, advance.ProjectID });

        //}


    }
}
