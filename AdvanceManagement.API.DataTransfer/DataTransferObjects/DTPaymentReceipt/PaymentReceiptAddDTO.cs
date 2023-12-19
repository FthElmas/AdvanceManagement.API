using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPaymentReceipt
{
    public record PaymentReceiptAddDTO
    {
        public int PaymentReceiptID { get; set; }
        public DateTime ReceiptDate { get; set; }

        public string ReceiptDescription { get; set; }

        public int AdvanceID { get; set; }


        public bool? IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedDate { get; set; }
    }
}
