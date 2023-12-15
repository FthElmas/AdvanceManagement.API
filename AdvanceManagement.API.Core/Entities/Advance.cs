using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[Advance]")]
    public class Advance
    {
        [Key]
        public int AdvanceID { get; set; }
        [Column("AdvanceAmount")]
        public decimal AdvanceAmount { get; set; }
        [Column("AdvanceExplanation")]
        public string AdvanceExplanation { get; set; }
        [ForeignKey("Worker")]
        public int WorkerID { get; set; }

        [Column("RequestDate")]
        public DateTime RequestDate { get; set; }
        [Column("AmountPaymentDate")]
        public DateTime AmountPaymentDate { get; set; }
        [Column("PaybackDate")]
        public DateTime PaybackDate { get; set; }
        [ForeignKey("Project")]
        public int ProjectID { get; set; }

        [Column("CreatedDate")]
        public DateTime CreatedDate { get; set; }

        [Column("IsActive")]
        public bool IsActive { get; set; }




        #region References
        [NotMapped]
        public AdvanceRequestStatus AdvanceRequestStatus { get; set; }

        [NotMapped]
        public FinanceManager FinanceManager { get; set; }

        [NotMapped]
        public ApprovalStatus ApprovalStatus { get; set; }

        [NotMapped]
        public Worker Worker { get; set; }

        [NotMapped]
        public Project Project { get; set; }

        [NotMapped]
        public Title Title { get; set; }
        #endregion
    }
}
