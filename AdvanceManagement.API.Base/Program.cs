using AdvanceManagement.API.Base.Filters;
using AdvanceManagement.API.Base.Middlewares;
using AdvanceManagement.API.Business.Abstract.IAdvanceBusiness;
using AdvanceManagement.API.Business.Abstract.IAdvanceRequestStatusBusiness;
using AdvanceManagement.API.Business.Abstract.IFinanceManagerBusiness;
using AdvanceManagement.API.Business.Abstract.IPaymentReceiptBusiness;
using AdvanceManagement.API.Business.Abstract.IProjectBusiness;
using AdvanceManagement.API.Business.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.Business.Abstract.IUserBusiness;
using AdvanceManagement.API.Business.Concrete.AdvanceBusiness;
using AdvanceManagement.API.Business.Concrete.AdvanceRequestBusiness;
using AdvanceManagement.API.Business.Concrete.FinanceManagerBusiness;
using AdvanceManagement.API.Business.Concrete.PaymentReceiptBusiness;
using AdvanceManagement.API.Business.Concrete.ProjectBusiness;
using AdvanceManagement.API.Business.Concrete.TitleAmountApprovalRuleBusiness;
using AdvanceManagement.API.Business.Concrete.UserBusiness;
using AdvanceManagement.API.DataAccess.Abstract.IAdvance;
using AdvanceManagement.API.DataAccess.Abstract.IAdvanceRequestStatus;
using AdvanceManagement.API.DataAccess.Abstract.IBase;
using AdvanceManagement.API.DataAccess.Abstract.IFinanceManager;
using AdvanceManagement.API.DataAccess.Abstract.IPaymentReceipt;
using AdvanceManagement.API.DataAccess.Abstract.IProject;
using AdvanceManagement.API.DataAccess.Abstract.ITitleAmountApprovalRule;
using AdvanceManagement.API.DataAccess.Abstract.IUser;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceAccess;
using AdvanceManagement.API.DataAccess.Concrete.AdvanceRequestStatusAccess;
using AdvanceManagement.API.DataAccess.Concrete.BaseAccess;
using AdvanceManagement.API.DataAccess.Concrete.FinanceManagerAccess;
using AdvanceManagement.API.DataAccess.Concrete.PaymentReceiptAccess;
using AdvanceManagement.API.DataAccess.Concrete.ProjectAccess;
using AdvanceManagement.API.DataAccess.Concrete.StatePattern;
using AdvanceManagement.API.DataAccess.Concrete.TitleAmountApprovalRuleAccess;
using AdvanceManagement.API.DataAccess.Concrete.UserAccess;
using AdvanceManagement.API.DataAccess.Helper;
using AdvanceManagement.API.Validation.Handler.FluentAdvanceRequestStatus;
using AdvanceManagement.API.Validation.Handler.FluentFinanceManager;
using AdvanceManagement.API.Validation.Handler.FluentPaymentReceipt;
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


builder.Services.AddScoped<AdvanceActionFilter>();
builder.Services.AddScoped<ApprovalStateMachine>();
builder.Services.AddScoped<ConnectionHelper>();
builder.Services.AddScoped<IAdvanceDataAccess, AdvanceDataAccess>();
builder.Services.AddScoped<IAdvanceBusiness, AdvanceBusiness>();
builder.Services.AddScoped<IUserDataAccess, UserDataAccess>();
builder.Services.AddScoped<IUserBusiness, UserBusiness>();
builder.Services.AddScoped<ITitleAmountApprovalRuleDataAccess, TitleAmountApprovalRuleDataAccess>();
builder.Services.AddScoped<ITitleAmountApprovalRuleBusiness, TitleAmountApprovalRuleBusiness>();
builder.Services.AddScoped<IProjectBusiness, ProjectBusiness>();
builder.Services.AddScoped<IProjectDataAccess, ProjectDataAccess>();
builder.Services.AddScoped<IAdvanceRequestStatusBusiness, AdvanceRequestStatusBusiness>();
builder.Services.AddScoped<IAdvanceRequestStatusDataAccess, AdvanceRequestStatusDataAccess>();
builder.Services.AddScoped<IFinanceManagerBusiness, FinanceManagerBusiness>();
builder.Services.AddScoped<IFinanceManagerDataAccess, FinanceManagerDataAccess>();
builder.Services.AddScoped<IPaymentReceiptDataAccess, PaymentReceiptDataAccess>();
builder.Services.AddScoped<IPaymentReceiptBusiness, PaymentReceiptBusiness>();
builder.Services.AddScoped<ValidateFinanceManager>();
builder.Services.AddScoped<ValidateAdvanceRequestStatus>();
builder.Services.AddScoped<ValidatePaymentReceipt>();


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
app.UseMiddleware<ExceptionMiddleware>();

app.MapControllers();

app.Run();
