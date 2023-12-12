using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Helper;
using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataAccess.Concrete.UserAccess
{
    public class UserDataAccess
    {
        private readonly ConnectionHelper _connectionHelper;
        public UserDataAccess()
        {
            _connectionHelper = new ConnectionHelper();
        }


        public User AddUser(User user, string password)
        {
            try
            {
                byte[] passHash, passSalt;

                CreatePassword(password, out passHash, out passSalt);
                user.PasswordHash = passHash;
                user.PasswordSalt = passSalt;
                using var conn = _connectionHelper.CreateConnection();
                string query = "INSERT INTO [User] (UserID, Username, PasswordHash, PasswordSalt ,Email, CreatedDate, IsActive) VALUES (@userID, @userName, @passwordHash, @passwordSalt, @email, @createdDate, @isActive)";
                return conn.QueryFirstOrDefault<User>(query, new { userID = user.UserID, userName = user.Username, passwordHash = user.PasswordHash, passwordSalt = user.PasswordSalt, createdDate = DateTime.Today, isActive = user.IsActive });
            }
            catch
            {
                return null;
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
