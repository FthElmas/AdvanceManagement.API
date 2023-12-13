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
                    string query = "INSERT INTO [User] (Username, PasswordHash, PasswordSalt , CreatedDate, IsActive) OUTPUT INSERTED.* VALUES (@userName, @passwordHash, @passwordSalt, @createdDate, @isActive)";
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

        public User LoggedUser(string username)
        {
            try
            {
                using var conn = _connectionHelper.CreateConnection();
                string query = "Select * from [User]\r\nwhere Username = @Username";
                return conn.QueryFirstOrDefault<User>(query, new { Username = username });
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
