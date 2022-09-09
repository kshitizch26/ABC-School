using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbcSchool
{
    public partial class ProcessApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admid"] == null)
                Response.Redirect("Login.aspx");
            else
                txtadmID.Text = Session["admid"].ToString();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            Session["appid"] = row.Cells[0].Text;
            Session["classid"] = row.Cells[6].Text;
            Response.Redirect("ApplicationProcess.aspx");
        }
    }
}