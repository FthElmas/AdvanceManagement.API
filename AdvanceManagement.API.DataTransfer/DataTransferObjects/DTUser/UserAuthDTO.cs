using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTRole;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser
{
    public class UserAuthDTO
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public bool? IsActive { get; set; }

        public RoleSelectDTO Role { get; set; }
        public WorkerSelectDTO Worker { get; set; }
    }
}
