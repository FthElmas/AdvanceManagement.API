using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex
{
    public class RegisterDTO
    {
        public UserAddDTO User { get; set; } = new UserAddDTO();
        public WorkerAddDTO Worker { get; set; } = new WorkerAddDTO();
    }
}
