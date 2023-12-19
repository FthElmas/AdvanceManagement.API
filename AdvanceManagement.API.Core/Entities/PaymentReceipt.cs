using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[PaymentReceipt]")]
    public class PaymentReceipt
    {
        [Key]
        public int PaymentReceiptID { get; set; }

        [Column("ReceiptDate")]
        public DateTime ReceiptDate { get; set; }

        [Column("ReceiptDescription")]
        public string ReceiptDescription { get; set; }


        public int AdvanceID { get; set; }

        [Column("IsActive")]
        public bool? IsActive { get; set; }

        [Column("ModifiedBy")]
        public int? ModifiedBy { get; set; }

        [Column("CreatedBy")]
        public int? CreatedBy { get; set; }

        [Column("ModifiedDate")]
        public DateTime? ModifiedDate { get; set; }

        [Column("CreatedDate")]
        public DateTime? CreatedDate { get; set; }



    }
}
