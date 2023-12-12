using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[Worker]")]
    public class Worker
    {
        [Key]
        public int WorkerID { get; set; }
        [Column("WorkerName")]
        public string WorkerName { get; set; }
        [Column("WorkerEmail")]
        public string WorkerEmail { get; set; }
        [Column("WorkerEmail")]
        public string WorkerPhonenumber { get; set; }
        [ForeignKey("User")]
        public int UserID { get; set; }
        [ForeignKey("Unit")]
        public int UnitID { get; set; }
        [ForeignKey("Title")]
        public int TitleID { get; set; }
        [ForeignKey("Worker")]
        public int ManagerID { get; set; }
        [Column("IsActive")]
        public bool IsActive { get; set; }

    }
}
