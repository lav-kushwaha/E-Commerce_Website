using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;

namespace LRMART
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindCategory();
                BindGender();
                GridViewshow();
                ddlsubcategory.Enabled = false;
                ddlgender.Enabled = false;
            }
        }

        void GridViewshow()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from tblProducts", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


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
        private void BindCategory()
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

        protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlsubcategory.Enabled = true;
            int MainCategoryId = int.Parse(ddlcategory.SelectedItem.Value);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblSubCategory where MainCategoryId='" + ddlcategory.SelectedItem.Value + "'", con);
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

        protected void ddlgender_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryId = int.Parse(ddlcategory.SelectedItem.Value);
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblSizes where BrandId = @BrandId AND CategoryId = @CategoryId AND SubCategoryId = @SubCategoryId AND GenderId = @GenderId ", con);
            cmd.Parameters.AddWithValue("@BrandID", ddlbrand.SelectedValue);
            cmd.Parameters.AddWithValue("@CategoryID", ddlcategory.SelectedValue);
            cmd.Parameters.AddWithValue("@SubCategoryID", ddlsubcategory.SelectedValue);
            cmd.Parameters.AddWithValue("@GenderID", ddlgender.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            if (dt.Rows.Count != 0)
            {
                cblSize.DataSource = dt;
                cblSize.DataTextField = "SizeName";
                cblSize.DataValueField = "SizeID";
                cblSize.DataBind();

            }
        }

        protected void ddlsubcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlsubcategory.SelectedIndex != 0)
            {
                ddlgender.Enabled = true;
            }
            else
            {
                ddlgender.Enabled = false;
            }
        }

        //protected void BtnAdd1_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
        //    SqlCommand cmd = new SqlCommand("Insert into tblProducts (PName,PPrice,PSelPrice,PBrandID,PCategoryID,PSubCatID,PGender,PDescription,PProductDetails,PMaterialCare) values (@PName,@PPrice,@PSelPrice,@PBrandID,@PCategoryID,@PSubCatID,@PGender,@PDescription,@PProductDetails,@PMaterialCare)", con);
        //    con.Open();
        //    cmd.Parameters.AddWithValue("@PName", pname.Text);
        //    cmd.Parameters.AddWithValue("@PPrice", pprice.Text);
        //    cmd.Parameters.AddWithValue("@PSelPrice", psprice.Text);
        //    cmd.Parameters.AddWithValue("@PBrandID", ddlbrand.SelectedItem.Value);
        //    cmd.Parameters.AddWithValue("@PCategoryID", ddlcategory.SelectedItem.Value);
        //    cmd.Parameters.AddWithValue("@PSubCatID", ddlsubcategory.SelectedItem.Value);
        //    cmd.Parameters.AddWithValue("@PGender", ddlgender.SelectedItem.Value);
        //    cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
        //    cmd.Parameters.AddWithValue("@PProductDetails", txtproductdetails.Text);
        //    cmd.Parameters.AddWithValue("@PMaterialCare", txtmaterialandcare.Text);

        //    if (ChFD.Checked == true)
        //    {
        //        cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
        //    }
        //    else
        //    {
        //        cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
        //    }

        //    if (ChReturn.Checked == true)
        //    {
        //        cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
        //    }
        //    else
        //    {
        //        cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
        //    }
        //    if (cbCOD.Checked == true)
        //    {
        //        cmd.Parameters.AddWithValue("@COD", 1.ToString());
        //    }
        //    else
        //    {
        //        cmd.Parameters.AddWithValue("@COD", 0.ToString());
        //    }
        //    cmd.ExecuteNonQuery();
        //    Response.Write("<script>alert('Products Added Successfully')</script>");
        //    con.Close();



        //}
        protected void BtnAdd1_Click(object sender, EventArgs e)
        {
            string filepath = Server.MapPath("images/");
            string fileName = Path.GetFileName(FileUpload1.FileName);
            string Extension = Path.GetExtension(fileName);
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            int size = postedFile.ContentLength;
            if (FileUpload1.HasFile == true)
            {
                if (Extension.ToLower() == ".jpg" || Extension.ToLower() == ".png" || Extension.ToLower() == ".jpeg")
                {
                    if (size <= 5000000)
                    {
                        FileUpload1.SaveAs(filepath + fileName);
                        String path2 = "images/" + fileName;
                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("Insert into tblProducts (PName,PPrice,PSelPrice,PBrandID,PCategoryID,PSubCatID,PGender,PDescription,PProductDetails,PMaterialCare,image_path) values (@PName,@PPrice,@PSelPrice,@PBrandID,@PCategoryID,@PSubCatID,@PGender,@PDescription,@PProductDetails,@PMaterialCare,@image_path)", con);
                        con.Open();
                        cmd.Parameters.AddWithValue("@PName", pname.Text);
                        cmd.Parameters.AddWithValue("@PPrice", pprice.Text);
                        cmd.Parameters.AddWithValue("@PSelPrice", psprice.Text);
                        cmd.Parameters.AddWithValue("@PBrandID", ddlbrand.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@PCategoryID", ddlcategory.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@PSubCatID", ddlsubcategory.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@PGender", ddlgender.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
                        cmd.Parameters.AddWithValue("@PProductDetails", txtproductdetails.Text);
                        cmd.Parameters.AddWithValue("@PMaterialCare", txtmaterialandcare.Text);
                        cmd.Parameters.AddWithValue("@image_path", path2);

                       
                        //con.Close();
                        //Response.Write("<script>alert('Products Added Successfully')</script>");

                       
                        int a = cmd.ExecuteNonQuery();
                        if (a > 0)
                        {
                            Response.Write("<script>alert('Products Added Successfully')</script>");
                            //Label22.Visible = true;
                            //Label22.ForeColor = Color.Green;
                            GridViewshow();
                            //reset();
                        }
                        else
                        {
                            Label22.Text = "Added Failed";
                            Label22.Visible = true;
                            Label22.ForeColor = Color.Red;
                        }
                        con.Close();

                    }
                    else
                    {
                        Label22.Text = " Please Upload Image Size Greater Than Two MB";
                        Label22.Visible = true;
                        Label22.ForeColor = Color.Red;
                    }
                }
                else
                {
                    Label22.Text = "Image Not Supported";
                    Label22.Visible = true;
                    Label22.ForeColor = Color.Red;
                }

            }
            else
            {
                Label22.Text = "Please Upload A File";
                Label22.Visible = true;
                Label22.ForeColor = Color.Red;

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            //Label lblPID = (Label)row.FindControl("Label2");
            Label lblPName = (Label)row.FindControl("Label3");
            Label lblPrice = (Label)row.FindControl("Label4");
            Label SellPrice = (Label)row.FindControl("Label5");
            Label lblBrandID = (Label)row.FindControl("Label6");
            Label lblCategoryID = (Label)row.FindControl("Label7");
            Label lblSubCatID = (Label)row.FindControl("Label8");
            Label lblGender = (Label)row.FindControl("Label9");
            Label lblQuality = (Label)row.FindControl("Label111");
            Label lblDescription = (Label)row.FindControl("Label10");
            Label lblProductDetails = (Label)row.FindControl("Label11");
            Label lblMaterialCare = (Label)row.FindControl("Label12");
            System.Web.UI.WebControls.Image img = (System.Web.UI.WebControls.Image)row.FindControl("Image1");

            //idtb.Text = lblPID.Text;
            pname.Text = lblPName.Text;
            pprice.Text = lblPrice.Text;
            psprice.Text = SellPrice.Text;
            ddlbrand.Text = lblBrandID.Text;
            ddlcategory.Text = lblCategoryID.Text;
            ddlsubcategory.Text = lblSubCatID.Text;
            ddlgender.Text = lblGender.Text;
            txtQuantity.Text = lblQuality.Text;
            txtDescription.Text = lblDescription.Text;
            txtproductdetails.Text = lblProductDetails.Text;
            txtmaterialandcare.Text = lblMaterialCare.Text;
            Image2.ImageUrl = img.ImageUrl;
            Image2.Visible = true;
        }

        void reset()
        {
            pname.Text = " ";
            pprice.Text = " ";
            psprice.Text = " ";
            ddlbrand.ClearSelection();
            ddlcategory.ClearSelection();
            ddlsubcategory.ClearSelection();
            ddlgender.ClearSelection();
            txtQuantity.Text = " ";
            txtDescription.Text = " ";
            txtproductdetails.Text = " ";
            txtmaterialandcare.Text = " ";
            GridView1.SelectedIndex = -1;
            Image2.Visible = false;
            Label22.Visible = false;
        }

       
        protected void clearbtn_Click1(object sender, EventArgs e)
        {
            reset();
            Label22.Visible = false;
            Image2.Visible = false;
        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {

        }

        protected void ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
