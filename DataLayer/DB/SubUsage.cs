//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer.DB
{
    using System.ComponentModel.DataAnnotations;
    using System;
    using System.Collections.Generic;
    
    [MetadataType(typeof(SubUsageMetaData))]
    public partial class SubUsage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SubUsage()
        {
            this.HomeProperties = new HashSet<HomeProperty>();
        }
    
        public int SubUsageID { get; set; }
        public int UsageID { get; set; }
        public string SubUsageTitle { get; set; }
        public string SubUsageCode { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HomeProperty> HomeProperties { get; set; }
        public virtual Usage Usage { get; set; }
    }
}
