using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    [Table("[Role]")]
    public class Role
    {
        [Key]
        public int RoleID { get; set; }

        public string RoleName { get; set; }

        public bool IsActive { get; set; }


    }
}
