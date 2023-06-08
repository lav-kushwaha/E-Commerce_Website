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
    public partial class AddCatagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewBind();
            } 
        }
        void GridViewBind()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void categorybtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into tblCategory (CategoryName) values (@name)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", categorytb.Text);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Category Added Successfully!!!')</script>");
                
            }
            categorytb.Text = string.Empty;
            categorytb.Focus();
            con.Close();
            GridView1.DataBind();

        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update tblCategory set CategoryName = @Name where CategoryId =@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", categoryid.Text);
            cmd.Parameters.AddWithValue("@Name", categorytb.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Updated Successfully')</script>");
            GridViewBind();
            clear();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from tblCategory where CategoryId =@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", int.Parse(categoryid.Text));
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Deleted Successfully')</script>");
            con.Close();
            GridViewBind();
            clear();
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            clear();
        }
        void clear()
        {
            categoryid.Text = "";
            categorytb.Text = "";
            GridViewBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Label lblid = (Label)row.FindControl("Label1");
            Label lblname = (Label)row.FindControl("Label2");

            categoryid.Text = lblid.Text;
            categorytb.Text = lblname.Text;
        }
    }
}