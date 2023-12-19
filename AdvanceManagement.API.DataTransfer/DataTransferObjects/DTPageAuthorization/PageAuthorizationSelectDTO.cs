using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.DataTransfer.DataTransferObjects.DTPageAuthorization
{
    public record PageAuthorizationSelectDTO
    {
        public int PageAuthorizationID { get; set; }


        public string PageAuthorizationName { get; set; }


        public string PageAuthorizationPath { get; set; }


        public bool IsActive { get; set; }


        public int? ModifiedBy { get; set; }


        public DateTime? CreatedDate { get; set; }



        public DateTime? ModifiedDate { get; set; }


        public int? CreatedBy { get; set; }
    }
}
