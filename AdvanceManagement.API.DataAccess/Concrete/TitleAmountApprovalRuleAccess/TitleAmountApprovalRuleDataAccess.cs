using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Helper;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex;
using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.TitleAmountApprovalRuleAccess
{
    public class TitleAmountApprovalRuleDataAccess : BaseDataAccess<TitleAmountApprovalRule>, ITitleAmountApprovalRuleDataAccess
    {
        private readonly ConnectionHelper _connectionHelper;
        public TitleAmountApprovalRuleDataAccess()
        {
            _connectionHelper = new ConnectionHelper();
        }
        public async Task<IEnumerable<TitleAmountApprovalRule>> GetRuleAccordingToAmount()
        {
            using var conn = _connectionHelper.CreateConnection();

            string query = @"
            SELECT 
            tar.TitleAmountApprovalRuleID,
            tar.MinAmount,
            tar.MaxAmount,
            tar.TitleID,
            tar.Date,
            tar.IsActive AS TitleAmountApprovalRuleIsActive,
            t.TitleID,
            t.TitleName,
            t.TitleDescription,
            t.IsActive AS TitleIsActive,
            t.ModifiedBy AS TitleModifiedBy,
            t.CreatedDate AS TitleCreatedDate,
            t.ModifiedDate AS TitleModifiedDate,
            t.CreatedBy AS TitleCreatedBy
            FROM TitleAmountApprovalRule tar
            INNER JOIN Title t ON tar.TitleID = t.TitleID
        ";



            return await conn.QueryAsync<TitleAmountApprovalRule, Title, TitleAmountApprovalRule>(
                query,
                (tar, title) =>
                {
                    tar.Title = title;
                    return tar;
                },
                splitOn: "TitleID"
            );
        }
    }
}
