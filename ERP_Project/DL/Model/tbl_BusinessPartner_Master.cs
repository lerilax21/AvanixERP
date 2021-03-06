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
    
    public partial class tbl_BusinessPartner_Master
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_BusinessPartner_Master()
        {
            this.tbl_Brand_Master = new HashSet<tbl_Brand_Master>();
            this.tbl_Item_Master = new HashSet<tbl_Item_Master>();
            this.tbl_Manufacturer = new HashSet<tbl_Manufacturer>();
        }
    
        public int bp_Id { get; set; }
        public Nullable<int> cmpny_Id { get; set; }
        public Nullable<int> currency_Id { get; set; }
        public Nullable<int> cntp_Id { get; set; }
        public string bp_name { get; set; }
        public Nullable<int> bp_type { get; set; }
        public Nullable<int> order_type { get; set; }
        public Nullable<decimal> discount { get; set; }
        public Nullable<decimal> credit_limit { get; set; }
        public Nullable<int> tax_id1 { get; set; }
        public Nullable<int> tax_id2 { get; set; }
        public string perm_accno { get; set; }
        public string note { get; set; }
        public Nullable<int> status { get; set; }
        public string err_msg { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Brand_Master> tbl_Brand_Master { get; set; }
        public virtual tbl_Cntp_Person tbl_Cntp_Person { get; set; }
        public virtual tbl_Company_Master tbl_Company_Master { get; set; }
        public virtual tbl_Currency_Master tbl_Currency_Master { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Item_Master> tbl_Item_Master { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Manufacturer> tbl_Manufacturer { get; set; }
    }
}
