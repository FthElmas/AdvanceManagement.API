using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvanceManagement.API.Core.Entities
{
    public class PageAuthorization
    {
        [Key]
        public int PageAuthorizationID { get; set; }

        [Column]
        public string PageAuthorizationName { get; set; }

        [Column]
        public string PageAuthorizationPath { get; set; }

        [Column]
        public bool IsActive { get; set; }

        [Column("ModifiedBy")]
        public int? ModifiedBy { get; set; }

        [Column("CreatedDate")]
        public DateTime? CreatedDate { get; set; }


        [Column("ModifiedDate")]
        public DateTime? ModifiedDate { get; set; }

        [Column("CreatedBy")]
        public int? CreatedBy { get; set; }
    }
}
