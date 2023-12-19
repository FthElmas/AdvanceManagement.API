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
    public record AdvanceRequestStatusUpdateDTO
    {

        public int AdvanceRequestStatusID { get; set; }

        public string? StatusName { get; set; }


        public string? StatusDescription { get; set; }

        public int? ApprovingRejectedID { get; set; }

        public decimal? ApprovedAmount { get; set; }

        public DateTime? ProcessDate { get; set; }  
        public bool? IsActive { get; set; }


        public int? ModifiedBy { get; set; }

        public DateTime? ModifiedDate { get; set; }

    }
}
