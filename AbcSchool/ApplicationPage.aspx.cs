using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AbcSchool.Models;
using AbcSchool.DataAccessLayer;

namespace AbcSchool
{
    public partial class ApplicationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                ApplicationDB db = new ApplicationDB();
                ApplicationModel m = new ApplicationModel();
                m.BranchId =int.Parse(ddBranch.SelectedValue);
                m.ClassId = int.Parse(ddClass.SelectedValue);
                m.Name = txtName.Text;
                m.Age = int.Parse(txtAge.Text);
                m.DOB = DateTime.Parse(txtDOB.Text);
                m.Address = txtAdd.Text;

                var res = db.InsertApplication(m);
                if (res > 0)
                    output.Text = "New Application ID is: " + res;
            }
            catch (Exception ex)
            {
                output.Text = ex.Message;
            }
        }
    }
}