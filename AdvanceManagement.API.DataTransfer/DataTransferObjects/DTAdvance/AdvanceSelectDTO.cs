using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance
{
    public class AdvanceSelectDTO
    {

        public int AdvanceID { get; set; }

        public decimal AdvanceAmount { get; set; }

        public string AdvanceExplanation { get; set; }

        public int WorkerID { get; set; }


        public DateTime RequestDate { get; set; }

        public DateTime AmountPaymentDate { get; set; }

        public DateTime PaybackDate { get; set; }

        public int ProjectID { get; set; }


        public DateTime CreatedDate { get; set; }


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
