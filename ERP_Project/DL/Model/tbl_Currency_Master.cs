//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DL.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Currency_Master
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_Currency_Master()
        {
            this.tbl_BusinessPartner_Master = new HashSet<tbl_BusinessPartner_Master>();
        }
    
        public int currency_id { get; set; }
        public Nullable<int> cmpny_id { get; set; }
        public string name { get; set; }
        public Nullable<decimal> @decimal { get; set; }
        public string reference { get; set; }
        public Nullable<int> status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_BusinessPartner_Master> tbl_BusinessPartner_Master { get; set; }
        public virtual tbl_Company_Master tbl_Company_Master { get; set; }
    }
}
