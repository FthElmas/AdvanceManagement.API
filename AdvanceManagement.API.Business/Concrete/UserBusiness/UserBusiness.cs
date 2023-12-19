using AdvanceManagement.API.Business.Abstract.IUserBusiness;
using AdvanceManagement.API.Business.Extensions;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPageAuthorization;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using AdvanceManagement.API.ExceptionHandling.Exceptions.User;
using AdvanceManagement.API.Validation.Handler.FluentUser;
using AdvanceManagement.API.Validation.Handler.FluentWorker;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Concrete.UserBusiness
{
    public class UserBusiness : IUserBusiness
    {
        IUserDataAccess _dal;
        ValidateUser validateUser;
        ValidateWorker validateWorker;
        public UserBusiness(IUserDataAccess dal)
        {
            _dal = dal;
            validateUser = new ValidateUser();
            validateWorker = new ValidateWorker();
        }
        public async Task<bool> AddUser(UserAddDTO userDTO, WorkerAddDTO workerDTO, string password)
        {
            MyMapper<UserAddDTO, User> userMapper = new MyMapper<UserAddDTO, User>();
            MyMapper<WorkerAddDTO, Worker> workerMapper = new MyMapper<WorkerAddDTO, Worker>();

            var worker = workerMapper.Map(workerDTO);
            var user = userMapper.MapProfile(userDTO);

            ValidationResult userResult = validateUser.Validate(user);
            ValidationResult workerResult = validateWorker.Validate(worker);

            if (userResult.IsValid && workerResult.IsValid)
            {
                await _dal.AddUser(user, worker, password);
                return true;
            }
            else
            {
                throw new UserAddException();
            }
        }

        public async Task<List<PageAuthorizationSelectDTO>> GetAllAuthorizationOfPerson(string username)
        {
            if (username != string.Empty && username != null)
            {
                MyMapper<PageAuthorization, PageAuthorizationSelectDTO> mapper = new MyMapper<PageAuthorization, PageAuthorizationSelectDTO>();
                var data = await _dal.GetAllAuthorizationOfPerson(username);

                return mapper.MapList(data.ToList());
            }
            else
                throw new Exception();
        }

        public async Task<UserDTO> Login(string username, string password)
        {
            if(username != string.Empty && password != string.Empty)
            {
                var data = await _dal.Login(username, password);
                MyMapper<User, UserDTO> mapper = new MyMapper<User, UserDTO>();
                return mapper.MapProfile(data);
            }
            else
            {
                throw new UserLoginException();
            }

        }
    }
}
