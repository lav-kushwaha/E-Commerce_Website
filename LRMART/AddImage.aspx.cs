using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace LRMART
{
    public partial class AddImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridView();
            }
            if (IsPostBack)
            {
                GridView();
            }
        }
        void GridView()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from ImageTb", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void addimg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
            String path = Server.MapPath("Images/");
            if (FileUpload1.HasFile)
            {

                String fileName = Path.GetFileName(FileUpload1.FileName);
                String extension = Path.GetExtension(fileName);
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                int length = postedFile.ContentLength;
                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
                {
                    if (length <= 5000000)
                    {
                        FileUpload1.SaveAs(path + fileName);
                        string name = "Images/" + fileName;
                        SqlCommand cmd = new SqlCommand("insert into ImageTb values(@Image_name)", con);
                        cmd.Parameters.AddWithValue("@Image_name", name);
                        con.Open();
                        int a = cmd.ExecuteNonQuery();
                        if (a > 0)
                        {
                            Label1.Text = "Uploaded Successfull";
                            Label1.ForeColor = System.Drawing.Color.Green;
                            Label1.Visible = true;
                            GridView();

                        }
                        else
                        {
                            Label1.Text = "Uploading Failed";
                            Label1.ForeColor = System.Drawing.Color.Red;
                            Label1.Visible = true;
                        }
                    }
                    else
                    {
                        Label1.Text = "Please Upload Image Less Than 5mb";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Visible = true;
                    }
                }
            }
            else
            {

                Label1.Text = "Please Upload Image";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
    }
}