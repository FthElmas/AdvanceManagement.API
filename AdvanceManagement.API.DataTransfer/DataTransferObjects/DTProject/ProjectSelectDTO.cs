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
        [Key]
        public int ProjectID { get; set; }

        [Column("ProjectName")]
        public string ProjectName { get; set; }

        [Column("ProjectExplanation")]
        public string ProjectExplanation { get; set; }
        [Column("StartDate")]
        public DateTime StartDate { get; set; }
        [Column("EndDate")]
        public DateTime EndDate { get; set; }

        [Column("IsActive")]
        public bool IsActive { get; set; }
    }
}
