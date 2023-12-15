using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus
{
    public record AdvanceRequestStatusAddDTO
    {

        public int AdvanceRequestStatusID { get; set; }


        public int AdvanceID { get; set; }

       
        public string StatusName { get; set; }

     
        public string StatusDescription { get; set; }


        public decimal ApprovedAmount { get; set; }


        public int ApprovingRejectedID { get; set; }


        public int ApprovalStatusID { get; set; }



        public DateTime ProcessDate { get; set; }


        public bool IsActive { get; set; }


        public int ModifiedBy { get; set; }


        public DateTime CreatedDate { get; set; }



        public DateTime ModifiedDate { get; set; }

        public int CreatedBy { get; set; }




        #region References
        [NotMapped]
        public Advance Advance { get; set; }

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
