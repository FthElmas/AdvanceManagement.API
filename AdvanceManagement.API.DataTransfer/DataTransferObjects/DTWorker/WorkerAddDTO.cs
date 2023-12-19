using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker
{
    public class WorkerAddDTO
    {

        public string WorkerName { get; set; }

        public string? WorkerEmail { get; set; }
  
        public bool? IsActive { get; set; }
    }
}
