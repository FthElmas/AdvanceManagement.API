using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTRole
{
    public record RoleSelectDTO
    {
        public int RoleID { get; set; }

        public string RoleName { get; set; }

        public bool IsActive { get; set; }
    }
}
