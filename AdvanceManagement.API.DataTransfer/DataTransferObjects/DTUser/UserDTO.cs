using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTRole;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser
{
    public class UserDTO
    {
        public string? Username { get; set; }
        public string? Password { get; set; }
        public bool? IsActive { get; set; }

        public string? RoleName { get; set; }



        public int? TitleID { get; set; }

        public int? WorkerID { get; set; }

        public string? WorkerName { get; set; }
    }
}
