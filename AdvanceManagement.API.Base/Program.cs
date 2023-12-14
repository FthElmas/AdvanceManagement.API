using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.Business.Abstract.IUserBusiness;
using AdvanceManagement.API.Business.Concrete.AdvanceBusiness;
using AdvanceManagement.API.Business.Concrete.TitleAmountApprovalRuleBusiness;
using AdvanceManagement.API.Business.Concrete.UserBusiness;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Abstract.IBase;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceAccess;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Concrete.TitleAmountApprovalRuleAccess;
using AdvanceManagement.API.DataAccess.Concrete.UserAccess;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped<IAdvanceDataAccess, AdvanceDataAccess>();
builder.Services.AddScoped<IAdvanceBusiness, AdvanceBusiness>();
builder.Services.AddScoped<IUserDataAccess, UserDataAccess>();
builder.Services.AddScoped<IUserBusiness, UserBusiness>();
builder.Services.AddScoped<ITitleAmountApprovalRuleDataAccess, TitleAmountApprovalRuleDataAccess>();
builder.Services.AddScoped<ITitleAmountApprovalRuleBusiness, TitleAmountApprovalRuleBusiness>();

var configuration = new ConfigurationBuilder()
    .AddInMemoryCollection(new Dictionary<string, string?>()
    {
        ["apisecretkey"] = "bythewillofallahproteccthistokenplsplsplspleeees",
        ["JwtIssuer"] = "https://localhost/",
        ["JwtAudience"] = "https://localhost/"
    })
    .Build();


var secret = Encoding.UTF8.GetBytes(configuration.GetSection("apisecretkey").Value);
builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme).AddJwtBearer(opt =>
{
    opt.TokenValidationParameters = new TokenValidationParameters()
    {
        ValidIssuer = configuration["JwtIssuer"],
        ValidAudience = configuration["JwtAudience"],
        IssuerSigningKey = new SymmetricSecurityKey(secret),
        ValidateIssuer = true,
        ValidateIssuerSigningKey = true,
        ClockSkew = TimeSpan.FromSeconds(2),
        ValidateLifetime = true,
        ValidateAudience = true,

    };

});
builder.Services.AddAuthorization();







var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseAuthorization();
app.UseAuthentication();


app.MapControllers();

app.Run();
