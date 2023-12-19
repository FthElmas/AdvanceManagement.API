using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTApprovalStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitle;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUnit;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance
{
    public record AdvanceSelectDTO
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
        public AdvanceRequestStatusSelectDTO AdvanceRequestStatus { get; set; }

        [NotMapped]
        public FinanceManagerSelectDTO FinanceManager { get; set; }

        [NotMapped]
        public ApprovalStatusSelectDTO ApprovalStatus { get; set; }

        [NotMapped]
        public WorkerSelectDTO Worker { get; set; }
        [NotMapped]
        public WorkerSelectDTO AdvanceWorker { get; set; }

        [NotMapped]
        public ProjectSelectDTO Project { get; set; }

        [NotMapped]
        public TitleSelectDTO Title { get; set; }
        [NotMapped]
        public TitleSelectDTO AdvanceTitle { get; set; }
        [NotMapped]
        public UnitSelectDTO Unit { get; set; }
        #endregion
    }
}
