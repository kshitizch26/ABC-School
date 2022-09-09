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
    public partial class ApplicationProcess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admid"] == null)
                Response.Redirect("Login.aspx");
            else
                txtappid.Text = Session["appid"].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationDB db = new ApplicationDB();
                ProcessApplicationModel pm = new ProcessApplicationModel();
                pm.admid = int.Parse(Session["admid"].ToString());
                pm.appid = int.Parse(Session["appid"].ToString());
                pm.classid= int.Parse(Session["classid"].ToString());
                pm.comment = txtcomment.Text;
                var res = db.UpdateApplication(pm);
                if (res > 0)
                    output.Text = "New Process Id is:" + res;
            }
            catch (Exception ex)
            {
                output.Text = ex.Message;
            }


        }

        /*protected void btnChkStatus_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationDB db = new ApplicationDB();

                var res = db.CheckStatus(int.Parse(txtappid.Text));
                output.Text = res;
            }
            catch (Exception ex)
            {
                output.Text = ex.Message;
            }
        }*/
    }
}