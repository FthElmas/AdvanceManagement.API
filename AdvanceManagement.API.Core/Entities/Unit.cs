using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[Unit]")]
    public class Unit
    {
        [Key]
        public int UnitID { get; set; }
        [Column("UnitName")]
        public string UnitName { get; set; }
        [Column("UnitExplanation")]
        public string UnitExplanation { get; set; }
        [Column("IsActive")]
        public bool IsActive { get; set; }

    }
}
