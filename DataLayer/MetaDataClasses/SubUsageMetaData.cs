﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.ComponentModel.DataAnnotations;


namespace DataLayer.DB
{
    public class SubUsageMetaData
    {
        [Key]
        public int SubUsageID { get; set; }
        public int UsageID { get; set; }

        [Display(Name = "نوع ملک")]
        [Required(ErrorMessage = "لطفا {0} را وارد کنید")]
        public string SubUsageTitle { get; set; }

        [Display(Name = "کد نوع ملک")]
        public string SubUsageCode { get; set; }


    }
}