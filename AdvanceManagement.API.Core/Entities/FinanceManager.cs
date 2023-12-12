using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[FinanceManager]")]
    public class FinanceManager
    {
        public int WorkerID { get; set; }

        public int AdvanceID { get; set; }
        [Column("DeterminedPaymentDate")]
        public DateTime DeterminedPaymentDate { get; set; }
        [Column("IsActive")]
        public bool IsActive { get; set; }
    }
}
