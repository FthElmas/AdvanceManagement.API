using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser
{
    public class UserDTO
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public bool? IsActive { get; set; }
    }
}
