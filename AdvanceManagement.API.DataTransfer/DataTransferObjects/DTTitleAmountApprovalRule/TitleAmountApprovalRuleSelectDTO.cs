using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitle;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitleAmountApprovalRule
{
    public class TitleAmountApprovalRuleSelectDTO
    {
        [Key]
        public int TitleAmountApprovalRuleID { get; set; }


        [Column]
        public decimal MinAmount { get; set; }

        [Column]
        public decimal MaxAmount { get; set; }


        [ForeignKey("Title")]
        public int TitleID { get; set; }

        [Column]
        public DateTime Date { get; set; }

        [Column]
        public bool IsActive { get; set; }


        [NotMapped]
        public TitleSelectDTO Title { get; set; }
    }
}
