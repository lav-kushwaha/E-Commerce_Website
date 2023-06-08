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
    public partial class addGender : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Select * from tblGender", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into tblGender(GenderName) values (@GenderName)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@GenderName", genderTb.Text);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Gender Added Successfully!!!')</script>");
            }
            genderTb.Text = string.Empty;
            genderTb.Focus();
            GridViewBind();
            con.Close();
          
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update tblGender set GenderName = @Name where GenderId=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", genderTb0.Text);
            cmd.Parameters.AddWithValue("@Name", genderTb.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Updated Successfully')</script>");
            GridViewBind();
            clear();
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            clear();
        }
        void clear()
        {
            genderTb0.Text = "";
            genderTb.Text = "";
            GridViewBind();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from tblGender where GenderId=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", genderTb0.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Deleted Successfully')</script>");
            GridViewBind();
            clear();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                GridViewRow row = GridView1.SelectedRow;
                Label lblid = (Label)row.FindControl("Label2");
                Label lblname = (Label)row.FindControl("Label3");
                genderTb0.Text = lblid.Text;
                genderTb.Text = lblname.Text;

            
        }
    }
}