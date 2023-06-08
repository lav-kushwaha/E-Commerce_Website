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
    public partial class AddBrands : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into tblBrands (Name) values (@name)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", brandTb.Text);
            int a = cmd.ExecuteNonQuery();
            brandTb.Text = string.Empty;
            brandTb.Focus();
            GridViewBind();
            con.Close();


        }
        void GridViewBind()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from tblBrands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Label lblid = (Label)row.FindControl("Label2");
            Label lblname = (Label)row.FindControl("Label3");

            Brandidtb.Text = lblid.Text;
            brandTb.Text = lblname.Text;

        }
        void clear()
        {
            Brandidtb.Text = "";
            brandTb.Text = "";
            GridViewBind();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update tblBrands set Name = @Name where Brand_Id =@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", Brandidtb.Text);
            cmd.Parameters.AddWithValue("@Name", brandTb.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Updated Successfully')</script>");
            GridViewBind();
            clear();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from tblBrands where Brand_Id =@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@id", int.Parse(Brandidtb.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Deleted Successfully')</script>");
            GridViewBind();
            clear();
        }
    }
}
