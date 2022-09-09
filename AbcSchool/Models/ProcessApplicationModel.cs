using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AbcSchool.Models
{
    public class ProcessApplicationModel
    {
        public string comment { get; set; }
        public int appid { get; set; }
        public int admid { get; set; }
        public int classid { get; set; }
    }
}