using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Abstract.IUserBusiness
{
    public interface IUserBusiness
    {
        Task<bool> AddUser(UserDTO user, WorkerAddDTO worker, string password);
        Task<bool> Login(string username, string password);
    }
}
