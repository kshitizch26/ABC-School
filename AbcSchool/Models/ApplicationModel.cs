using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AbcSchool.Models
{
    public class ApplicationModel
    {
        public int BranchId { get; set; }
        public int ClassId { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public DateTime DOB { get; set; }
        public string Address { get; set; }


    }
}