using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker
{
    public record WorkerSelectDTO
    {
        public string WorkerName { get; set; }

        public string? WorkerEmail { get; set; }

        public string? WorkerPhonenumber { get; set; }

        public int? UserID { get; set; }

        public int? UnitID { get; set; }

        public int? TitleID { get; set; }

        public int? ManagerID { get; set; }
    }
}
