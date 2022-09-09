using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AbcSchool.DataAccessLayer;

namespace AbcSchool
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ApplicationDB db = new ApplicationDB();
                var res = db.UpdateReport();
                string[] output;
                output = res.Split();
                optotal.Text = output[0];
                opprocessed.Text = output[1];

            }
            catch (Exception ex)
            {
                optotal.Text = ex.Message;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            GridView1.DataBind();
        }
    }
}