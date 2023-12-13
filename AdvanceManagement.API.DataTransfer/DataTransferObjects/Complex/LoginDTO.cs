using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex
{
    public class LoginDTO
    {
        public UserDTO User { get; set; } = new UserDTO();

        public WorkerAddDTO Worker { get; set; } = new WorkerAddDTO();
    }
}
