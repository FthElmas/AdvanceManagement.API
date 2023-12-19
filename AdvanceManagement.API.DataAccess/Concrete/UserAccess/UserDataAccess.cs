using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.UserAccess
{
    public class UserDataAccess : IUserDataAccess
    {
        private readonly ConnectionHelper _connectionHelper;
        public UserDataAccess()
        {
            _connectionHelper = new ConnectionHelper();
        }


        public async Task<User> AddUser(User user, Worker worker ,string password)
        {
            using var conn = _connectionHelper.CreateConnection();
            using (IDbTransaction transaction = conn.BeginTransaction())
            {
               try
                {
                    byte[] passHash, passSalt;

                    CreatePassword(password, out passHash, out passSalt);
                    user.PasswordHash = passHash;
                    user.PasswordSalt = passSalt;
                    string query = "INSERT INTO [User] (Username, PasswordHash, PasswordSalt , IsActive) OUTPUT INSERTED.* VALUES (@userName, @passwordHash, @passwordSalt, @isActive)";
                    string workerQuery = "INSERT INTO [Worker] (WorkerName, WorkerEmail, WorkerPhonenumber, UserID,IsActive) VALUES (@WorkerName, @WorkerEmail, @WorkerPhonenumber, @UserID,@IsActive)";

                    var data = await transaction.Connection.QueryFirstOrDefaultAsync<User>(query, new { userName = user.Username, passwordHash = user.PasswordHash, passwordSalt = user.PasswordSalt, createdDate = DateTime.Today, isActive = user.IsActive }, transaction);
                    await transaction.Connection.ExecuteAsync(workerQuery, new { WorkerName = worker.WorkerName, WorkerEmail = worker.WorkerEmail, WorkerPhonenumber = worker.WorkerPhonenumber, UserID = data.UserID ,IsActive = true }, transaction);
                    transaction.Commit();
                    return data;
                }
                catch
                {
                    transaction.Rollback();
                    return null; 
                }
            }

        }

        public async Task<User> Login(string username, string password)
        {
            var user = LoggedUser(username);
            if (user == null)
            {
                return null;
            }

            if (!ControlPassword(password, user.PasswordSalt, user.PasswordHash))
            {
                return null;
            }
            return user;

        }


        public async Task<IEnumerable<PageAuthorization>> GetAllAuthorizationOfPerson(string username)
        {
            try
            {
                using var conn = _connectionHelper.CreateConnection();
                string query = "select pa.* from PageAuthorization pa join RoleAuthorization ra ON ra.PageAuthorizationID = pa.PageAuthorizationID join Role r ON r.RoleID = ra.RoleID join [User] u ON u.RoleID = r.RoleID where u.Username = @Username";
                return await conn.QueryAsync<PageAuthorization>(query, new { Username = username });
            }
            catch
            {
                return null;
            }
        }


        public User LoggedUser(string username)
        {
            try
            {
                using var conn = _connectionHelper.CreateConnection();
                string query = "select u.*, r.* , w.* , t.* from [User] as u left join [Role] r on r.RoleID = u.RoleID join Worker w on w.UserID = u.UserID left join Title t on t.TitleID = w.TitleID where Username = @Username";
                return conn.Query<User, Role, Worker, Title,User>(query, (u, r, w, t) => { u.Role = r; u.Worker = w; u.Title = t; return u; }, new { Username = username }, splitOn: "RoleID,WorkerID,TitleID").FirstOrDefault();
            }
            catch
            {
                return null;
            }
        }

        private void CreatePassword(string password, out byte[] passHash, out byte[] passSalt)
        {
            using (var hmac = new HMACSHA512())
            {
                passHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(password));
                passSalt = hmac.Key;
            }
        }

        private bool ControlPassword(string password, byte[] passwordSalt, byte[] passwordHash)
        {
            using (var hmac = new HMACSHA512(passwordSalt))
            {
                var passHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(password));

                for (int i = 0; i < passHash.Length; i++)
                {
                    if (passwordHash[i] != passHash[i])
                    {
                        return false;
                    }
                }
                return true;
            }
        }
    }
}
