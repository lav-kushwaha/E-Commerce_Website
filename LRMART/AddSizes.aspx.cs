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
    public partial class AddSizes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand(); 
                BindMainCategory();
                BindGender();
                GridViewBind();
            }

        }

        void GridViewBind()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select A.*,B.*,C.*,D.*,E.* from tblSizes A inner join tblCategory B on B.CategoryId =A.CategoryId  inner join tblBrands C on C.Brand_Id =A.BrandId inner join tblSubCategory D on D.SubCategoryId =A.SubCategoryId inner join tblGender E on E.GenderId =A.GenderId ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //bindgender
        private void BindGender()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblGender", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlgender.DataSource = dt;
                ddlgender.DataTextField = "GenderName";
                ddlgender.DataValueField = "GenderId";
                ddlgender.DataBind();
                ddlgender.Items.Insert(0, new ListItem("-Select-", "0"));
            }

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
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "CategoryName";
                ddlcategory.DataValueField = "CategoryId";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }

        }

        //bindbrand
        private void BindBrand()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblBrands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlbrand.DataSource = dt;
                ddlbrand.DataTextField = "Name";
                ddlbrand.DataValueField = "Brand_Id";
                ddlbrand.DataBind();
                ddlbrand.Items.Insert(0, new ListItem("-Select-", "0"));
            }

        }

        protected void sizebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblSizes(SizeName,BrandId,CategoryId,SubCategoryId,GenderId) Values('" + sizetb.Text + "','" + ddlbrand.SelectedItem.Value + "','" + ddlcategory.SelectedItem.Value + "','" + ddlsubcategory.SelectedItem.Value + "','" + ddlgender.SelectedItem.Value + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Size Added Successfully');  </script>");
            sizetb.Text = string.Empty;
            con.Close();

            ddlbrand.ClearSelection();
            ddlbrand.Items.FindByValue("0").Selected = true;

            ddlcategory.ClearSelection();
            ddlcategory.Items.FindByValue("0").Selected = true;

            ddlsubcategory.ClearSelection();
            ddlsubcategory.Items.FindByValue("0").Selected = true;

            ddlgender.ClearSelection();
            ddlgender.Items.FindByValue("0").Selected = true;
            GridViewBind();


        }

        
        protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryId = int.Parse(ddlcategory.SelectedItem.Value);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCategoryId='"+ddlcategory.SelectedItem.Value+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlsubcategory.DataSource = dt;
                ddlsubcategory.DataTextField = "SubCategoryName";
                ddlsubcategory.DataValueField = "SubCategoryId";
                ddlsubcategory.DataBind();
                ddlsubcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}