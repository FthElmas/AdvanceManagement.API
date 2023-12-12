using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("TitleAmountApprovalRule")]
    public class TitleAmountApprovalRule
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
    }
}
