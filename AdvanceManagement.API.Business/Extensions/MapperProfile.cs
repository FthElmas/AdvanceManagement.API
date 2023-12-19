using AdvanceManagement.API.Core.Entities;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvance;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTAdvanceRequestStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTApprovalStatus;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTFinanceManager;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPageAuthorization;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTProject;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTRole;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitle;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTTitleAmountApprovalRule;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUnit;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTUser;
using AdvanceManagement.API.DataTransfer.DataTransferObjects.DTWorker;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Extensions
{
    public class MapperProfile : Profile
    {
        public MapperProfile()
        {
            CreateMap<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO>()
                .ForMember(dest => dest.Advance, opt => opt.MapFrom(src => src.Advance))
                .ForMember(dest => dest.FinanceManager, opt => opt.MapFrom(src => src.FinanceManager))
                .ForMember(dest => dest.ApprovalStatus, opt => opt.MapFrom(src => src.ApprovalStatus))
                .ForMember(dest => dest.Worker, opt => opt.MapFrom(src => src.Worker))
                .ForMember(dest => dest.AdvanceWorker, opt => opt.MapFrom(src => src.AdvanceWorker))
                .ForMember(dest => dest.Project, opt => opt.MapFrom(src => src.Project))
                .ForMember(dest => dest.Title, opt => opt.MapFrom(src => src.Title))
                .ForMember(dest => dest.Unit, opt => opt.MapFrom(src => src.Unit)).ReverseMap();

            CreateMap<Advance, AdvanceSelectDTO>()
                .ForMember(dest => dest.AdvanceRequestStatus, opt => opt.MapFrom(src => src.AdvanceRequestStatus))
                .ForMember(dest => dest.FinanceManager, opt => opt.MapFrom(src => src.FinanceManager))
                .ForMember(dest => dest.ApprovalStatus, opt => opt.MapFrom(src => src.ApprovalStatus))
                .ForMember(dest => dest.Worker, opt => opt.MapFrom(src => src.Worker))
                .ForMember(dest => dest.AdvanceWorker, opt => opt.MapFrom(src => src.AdvanceWorker))
                .ForMember(dest => dest.Project, opt => opt.MapFrom(src => src.Project))
                .ForMember(dest => dest.Title, opt => opt.MapFrom(src => src.Title))
                .ForMember(dest => dest.AdvanceTitle, opt => opt.MapFrom(src => src.AdvanceTitle)).ReverseMap();

            CreateMap<Advance, AdvanceSelectDTO>().ReverseMap();
            CreateMap<ApprovalStatus, ApprovalStatusSelectDTO>().ReverseMap();
            CreateMap<Worker, WorkerSelectDTO>().ReverseMap();
            CreateMap<FinanceManager, FinanceManagerSelectDTO>().ReverseMap();
            CreateMap<Project, ProjectSelectDTO>().ReverseMap();
            CreateMap<Title, TitleSelectDTO>().ReverseMap();
            CreateMap<AdvanceRequestStatus, AdvanceRequestStatusSelectDTO>().ReverseMap();
            CreateMap<Role, RoleSelectDTO>().ReverseMap();
            CreateMap<Unit, UnitSelectDTO>().ReverseMap();
            CreateMap<PageAuthorization, PageAuthorizationSelectDTO>().ReverseMap();
            CreateMap<UserAddDTO, User>().ReverseMap();


            CreateMap<User, UserDTO>()
                .ForMember(dest => dest.RoleName, opt => opt.MapFrom(src => src.Role.RoleName))
                .ForMember(dest => dest.TitleID, opt => opt.MapFrom(src => src.Title.TitleID))
                .ForMember(dest => dest.WorkerID, opt => opt.MapFrom(src => src.Worker.WorkerID))
                .ForMember(dest => dest.WorkerName, opt => opt.MapFrom(src => src.Worker.WorkerName))
                .ReverseMap();

            CreateMap<TitleAmountApprovalRule, TitleAmountApprovalRuleSelectDTO>().ForMember(dest => dest.Title, opt => opt.MapFrom(src => src.Title)).ReverseMap();
        }
    }
}
