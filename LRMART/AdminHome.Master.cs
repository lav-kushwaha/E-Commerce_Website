using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LRMART
{
    public partial class AdminHome1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Label1.Text = "Welcome " + Session["User"].ToString();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }

        }

        protected void AdminLogoutBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");
            Session["User"] = null;
        }
    }
}