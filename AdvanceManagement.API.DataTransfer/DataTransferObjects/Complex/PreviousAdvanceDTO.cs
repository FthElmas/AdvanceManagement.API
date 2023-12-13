using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex
{
    public record PreviousAdvanceDTO
    {
        public decimal AdvanceAmount { get; set; }


        public DateTime CreatedDate { get; set; }

        public DateTime RequestDate { get; set; }

        public string ProjectName { get; set; }

        public string WorkerName { get; set; }

        public string TitleName { get; set; }



        public DateTime ProcessDate { get; set; }


        public decimal ApprovedAmount { get; set; }

        public DateTime DeterminedPaymentDate { get; set; }


    }
}
