using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AbcSchool.DataAccessLayer;
using AbcSchool.Models;

namespace AbcSchool
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationDB db = new ApplicationDB();
                var res = db.Login(int.Parse(ddadmin.SelectedValue), txtpass.Text);
                output.Text = res;
                if (res == "Success")
                {
                    Session["admid"] = long.Parse(ddadmin.SelectedValue);
                    Response.Redirect("ProcessApplication.aspx");
                }
            }

            catch (Exception ex)
            {
                output.Text = ex.Message;
            }

        }
    }
}