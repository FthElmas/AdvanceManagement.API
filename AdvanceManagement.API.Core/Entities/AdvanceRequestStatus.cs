using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[AdvanceRequestStatus]")]
    public class AdvanceRequestStatus
    {
        [Key]
        public int AdvanceRequestStatusID { get; set; }

        [ForeignKey("Advance")]
        public int AdvanceID { get; set; }

        [Column("StatusName")]
        public string StatusName { get; set; }

        [Column("StatusDescription")]
        public string StatusDescription { get; set; }

        [Column("ApprovedAmount")]
        public decimal ApprovedAmount { get; set; }

        [ForeignKey("Worker")]
        public int ApprovingRejectedID { get; set; }

        [ForeignKey("ApprovalStatus")]
        public int ApprovalStatusID { get; set; }


        [Column("ProcessDate")]
        public DateTime ProcessDate { get; set; }

        [Column("IsActive")]
        public bool IsActive { get; set; }

        [Column("ModifiedBy")]
        public int ModifiedBy { get; set; }

        [Column("CreatedDate")]
        public DateTime CreatedDate { get; set; }


        [Column("ModifiedDate")]
        public DateTime ModifiedDate { get; set; }

        [Column("CreatedBy")]
        public int CreatedBy { get; set; }
    }
}
