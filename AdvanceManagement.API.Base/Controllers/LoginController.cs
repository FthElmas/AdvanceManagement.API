using AdvanceManagement.API.Business.Abstract.IUserBusiness;
using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.Complex;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace AdvanceManagement.API.Base.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController(IUserBusiness business, IConfiguration conf) : Controller
    {
        [HttpPost("~/api/login")]
        public async Task<IActionResult> Login([FromBody]UserDTO dto)
        {
            var doExists = await business.Login(dto.Username, dto.Password);

            if (doExists == null)
            {
                
                return null;
            }

            var issuer = conf["JwtIssuer"];
            var audience = conf["JwtAudience"];

            var desc = new SecurityTokenDescriptor()
            {
                Expires = DateTime.Now.AddMinutes(20),
                Subject = new ClaimsIdentity(new Claim[]
                {
                    new Claim(ClaimTypes.Name,dto.Username),
                    new Claim(ClaimTypes.Role, doExists.RoleName),
                    new Claim("TitleID", doExists.TitleID.ToString()),
                    new Claim("WorkerID", doExists.WorkerID.ToString()),
                    new Claim("WorkerName", doExists.WorkerName)
                }),
                Issuer = issuer,
                Audience = audience,
                NotBefore = DateTime.Now,
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(Encoding.UTF8.GetBytes(conf["apisecretkey"])), SecurityAlgorithms.HmacSha256)
            };

            var tokenhandler = new JwtSecurityTokenHandler();
            var token = tokenhandler.CreateToken(desc);
            var userTokenValue = tokenhandler.WriteToken(token);

            return Ok(userTokenValue);
        }

        [HttpPost("~/api/register")]
        public async Task<IActionResult> Register([FromBody]RegisterDTO registerDTO)
        {
            var data = await business.AddUser(registerDTO.User, registerDTO.Worker, registerDTO.User.Password);
            return Ok(data);
        }


        [HttpGet("{username}")]
        public async Task<IActionResult> GetAuthorization(string username)
        {
            var data = await business.GetAllAuthorizationOfPerson(username);

            if (data != null)
                return Ok(data);

            return BadRequest();
        }
    }
}
