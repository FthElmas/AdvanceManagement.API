using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    public class ProjectWorker
    {
        public int WorkerID { get; set; }
        public int ProjectID { get; set; }
        public bool IsActive { get; set; }
    }
}
