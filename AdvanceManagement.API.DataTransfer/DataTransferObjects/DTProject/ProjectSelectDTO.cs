using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject
{
    public record ProjectSelectDTO
    {

        public int ProjectID { get; set; }


        public string ProjectName { get; set; }


        public string ProjectExplanation { get; set; }

        public DateTime StartDate { get; set; }

        public DateTime EndDate { get; set; }


        public bool IsActive { get; set; }
    }
}
