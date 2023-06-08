using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace LRMART
{
    public partial class Cart : System.Web.UI.Page
    {
        private object h4NoItems;

        protected void Page_Load(object sender, EventArgs e)
        {
            BindProductcartRepeater();
           
            if (!IsPostBack)
            {
                BindProductCart();
            }
            if (Session["User"] != null)
            {
                Label1.Text = "Welcome " + Session["User"].ToString();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }
        private void BindProductcartRepeater()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select top 1* from tblProducts s1, tblSizes s2 where s1.PID = s2.SizeId", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrCartProducts.DataSource = dt;
            rptrCartProducts.DataBind();
            con.Close();
        }
       

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Session["User"] = null;
                Response.Redirect("SignIn.aspx");
            }
        }
        private void BindProductCart()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData= Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length>0)
                {
                  
                    for (int i=0; i < CookieDataArray.Length; i++)
                    {
                        //string PID = CookieDataArray[i].ToString().Split('-')[0];
                        //string SizeID = CookieDataArray[i].ToString().Split('-')[1];


                    }
                }

            }
            else
            {

            }

        }
    }
}