using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[ProjectAdvance]")]
    public class ProjectAdvance
    {
        public int AdvanceID { get; set; }

        public int ProjectID { get; set; }

        public bool IsActive { get; set; }
    }
}
