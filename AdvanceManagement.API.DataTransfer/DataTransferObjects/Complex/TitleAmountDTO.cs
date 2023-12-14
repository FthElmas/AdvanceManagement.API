using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex
{
    public class TitleAmountDTO
    {

        public int TitleID { get; set; }

        public string TitleName { get; set; }

        public string TitleDescription { get; set; }

        public bool IsActive { get; set; }

        public int ModifiedBy { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime ModifiedDate { get; set; }

        public int CreatedBy { get; set; }


        public int TitleAmountApprovalRuleID { get; set; }



        public decimal MinAmount { get; set; }


        public decimal MaxAmount { get; set; }




    }
}
