using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Business.Extensions
{
    public class MyMapper<TFrom, TTo>
    {
        public TTo Map(TFrom source)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<TFrom, TTo>().ReverseMap();
            });

            var mapper = config.CreateMapper();
            return mapper.Map<TTo>(source);
        }


        public List<TTo> MapList(List<TFrom> sourceList)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<MapperProfile>();
            });

            var mapper = config.CreateMapper();
            return mapper.Map<List<TTo>>(sourceList);
        }


        public TTo MapProfile(TFrom source)
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.AddProfile<MapperProfile>();
            });

            var mapper = config.CreateMapper();
            return mapper.Map<TTo>(source);
        }
    }
}
