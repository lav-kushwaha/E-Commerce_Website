using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LRMART
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select*from UserTb where Username=@user and Password=@pass", con);
            con.Open();
            cmd.Parameters.AddWithValue("@user", UserTb.Text);
            cmd.Parameters.AddWithValue("@pass", PassTb.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count !=0)
            {
                string usertype;
                usertype = dt.Rows[0][7].ToString().Trim();
                if (usertype == "User")
                {
                    Session["User"] = UserTb.Text;
                    Response.Redirect("UserHome.aspx");
                }
                if(usertype == "Admin")
                {
                    Session["User"] = UserTb.Text;
                    Response.Redirect("AdminHome.aspx");
                }
              
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed!!!')</script>");
            }

            con.Close();


        }
    }
}