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
    
    public partial class tbl_Item_Type
    {
        public int itemtype_Id { get; set; }
        public Nullable<int> cmpny_Id { get; set; }
        public string itemtype_name { get; set; }
        public string reference { get; set; }
        public Nullable<int> status { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
    
        public virtual tbl_Company_Master tbl_Company_Master { get; set; }
    }
}
