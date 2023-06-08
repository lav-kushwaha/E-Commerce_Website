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
    public partial class SubCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCategory();
                BindSubCategory();
            }
        }

        protected void subcategorybtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into tblSubCategory (SubCategoryName,MainCategoryId) values (@name,@id)", con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", subcategorytb.Text);
            cmd.Parameters.AddWithValue("@id", int.Parse(ddlMainCategoryid.SelectedItem.Value));

            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Category Added Successfully!!!')</script>");
            }
            subcategorytb.Text = string.Empty;
            subcategorytb.Focus();
            con.Close();
            BindSubCategory();
            clear();
            ddlMainCategoryid.ClearSelection();
            ddlMainCategoryid.Items.FindByValue("0").Selected = true;
        }

        private void BindMainCategory()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlMainCategoryid.DataSource = dt;
                ddlMainCategoryid.DataTextField = "CategoryName";
                ddlMainCategoryid.DataValueField = "CategoryId";
                ddlMainCategoryid.DataBind();
                ddlMainCategoryid.Items.Insert(0, new ListItem("-Select-","0"));
            }

        }
        private void BindSubCategory()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select A.*,B.* from tblSubCategory A inner join tblCategory B on B.CategoryId=A.MainCategoryId  ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        //protected void UpdateButton_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
        //    SqlCommand cmd = new SqlCommand("update tblSubCategory set SubCategoryName = @Name where SubCategoryId =@id", con);
        //    con.Open();
        //    cmd.Parameters.AddWithValue("@id", ddlMainCategoryid.SelectedValue);
        //    cmd.Parameters.AddWithValue("@Name", subcategorytb.Text);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Response.Write("<script>alert('Updated Successfully')</script>");
        //    BindSubCategory();
        //    clear();
        //}
        void clear()
        {
            ddlMainCategoryid.ClearSelection();
            subcategorytb.Text = "";

        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            clear();
        }

        //protected void UpdateButton_Click1(object sender, EventArgs e)
        //{

        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    GridViewRow row = GridView1.SelectedRow;
        //    //Label lblid = (Label)row.FindControl("Label1");
        //    Label lblname = (Label)row.FindControl("Label2");
        //    //ddlMainCategoryid.SelectedValue = lblid.Text;
        //    subcategorytb.Text = lblname.Text;
        //}

        //protected void ResetButton_Click(object sender, EventArgs e)
        //{
        //    clear();
        //}

        //protected void DeleteButton_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
        //    SqlCommand cmd = new SqlCommand("delete from tblSubCategory where SubCategoryId =@id", con);
        //    con.Open();
        //    cmd.Parameters.AddWithValue("@id", int.Parse(ddlMainCategoryid.SelectedValue));
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Response.Write("<script>alert('Deleted Successfully')</script>");
        //    //GridViewBind();
        //    BindSubCategory();
        //    clear();

        //}

        //protected void UpdateButton_Click1(object sender, EventArgs e)
        //{

        //}
    }
}