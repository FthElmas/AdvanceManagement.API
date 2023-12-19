using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTApprovalStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitle;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus
{
    public record AdvanceRequestStatusAddDTO
    {

        public int AdvanceRequestStatusID { get; set; }


        public int AdvanceID { get; set; }


        public string? StatusName { get; set; }


        public string? StatusDescription { get; set; }


        public decimal ApprovedAmount { get; set; }


        public int? ApprovingRejectedID { get; set; }


        public int? ApprovalStatusID { get; set; }



        public DateTime? ProcessDate { get; set; }


        public bool? IsActive { get; set; }


        public int? ModifiedBy { get; set; }

        public DateTime? CreatedDate { get; set; }



        public DateTime? ModifiedDate { get; set; }


        public int? CreatedBy { get; set; }



        #region References
        [NotMapped]
        public AdvanceSelectDTO Advance { get; set; }


        [NotMapped]
        public FinanceManagerSelectDTO FinanceManager { get; set; }

        [NotMapped]
        public ApprovalStatusSelectDTO ApprovalStatus { get; set; }

        [NotMapped]
        public WorkerSelectDTO Worker { get; set; }

        [NotMapped]
        public ProjectSelectDTO Project { get; set; }

        [NotMapped]
        public TitleSelectDTO Title { get; set; }
        #endregion
    }
}
