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
                    new Claim(ClaimTypes.Role, dto.Role.RoleName)
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
        public async Task<IActionResult> Register([FromBody] LoginDTO loginDTO)
        {
            var data = await business.AddUser(loginDTO.User, loginDTO.Worker, loginDTO.User.Password);
            return Ok(data);
        }
    }
}
