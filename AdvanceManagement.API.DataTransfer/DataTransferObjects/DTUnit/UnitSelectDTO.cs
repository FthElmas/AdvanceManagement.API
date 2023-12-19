using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUnit
{
    public record UnitSelectDTO
    {

        public int UnitID { get; set; }

        public string UnitName { get; set; }

        public string UnitExplanation { get; set; }

        public bool IsActive { get; set; }
    }
}
