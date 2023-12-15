using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager
{
    public record FinanceManagerUpdateDTO
    {
        public int WorkerID { get; set; }

        public int AdvanceID { get; set; }

        public DateTime DeterminedPaymentDate { get; set; }

        public bool IsActive { get; set; }
    }
}
