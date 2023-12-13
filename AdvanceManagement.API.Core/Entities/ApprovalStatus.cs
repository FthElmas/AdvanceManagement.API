﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("ApprovalStatus")]
    public class ApprovalStatus
    {
        [Key]
        public int ApprovalStatusID { get; set; }

        [Column("ApprovalName")]
        public string ApprovalName { get; set; }
        [Column("IsActive")]
        public bool IsActive { get; set; }

        [Column("ModifiedBy")]
        public int ModifiedBy { get; set; }

        [Column("CreatedDate")]
        public DateTime CreatedDate { get; set; }


        [Column("ModifiedDate")]
        public DateTime ModifiedDate { get; set; }

        [Column("CreatedBy")]
        public int CreatedBy { get; set; }
    }
}
