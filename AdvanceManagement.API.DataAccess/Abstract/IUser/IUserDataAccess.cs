using AdvanceManagement.API.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Abstract.IUser
{
    public interface IUserDataAccess
    {
        Task<User> AddUser(User user, Worker worker, string password);
        Task<User> Login(string username, string password);
        User LoggedUser(string username);
        Task<IEnumerable<PageAuthorization>> GetAllAuthorizationOfPerson(string username);
    }
}
