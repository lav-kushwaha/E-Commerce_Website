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
    public partial class ProductView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["User"] != null)
            {
                Label1.Text = "Welcome " + Session["User"].ToString();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
          
        }
        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Session["User"] = null;
                Response.Redirect("SignIn.aspx");
            }
        }
        protected void rptrProductDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string PBrandId = (e.Item.FindControl("hfBrandId") as HiddenField).Value;
                string CategoryId = (e.Item.FindControl("hfCategoryId") as HiddenField).Value;
                string SubCategoryId = (e.Item.FindControl("hfSubCategoryId") as HiddenField).Value;
                string GenderId = (e.Item.FindControl("hfGenderId") as HiddenField).Value;

                RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select* from tblSizes where BrandID = '" + PBrandId + "' and CategoryID = " + CategoryId + " and SubCategoryID = " + SubCategoryId + " and GenderID = " + GenderId + "", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd); 
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rblSize.DataSource = dt;
                rblSize.DataTextField = "SizeName";
                rblSize.DataValueField = "SizeId";
                rblSize.DataBind();

            }
        }

        protected void addtocart_Click(object sender, EventArgs e)
        {
            string SelectedSize = string.Empty;
            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var rbList = item.FindControl("rblSize") as RadioButtonList;
                    SelectedSize = rbList.SelectedValue;
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "";

                }
            }
            if (SelectedSize != "")
            {
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                if (Request.Cookies["CartPID"] != null)
                {
                    string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + PID + "-" + SelectedSize;
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = CookiePID;
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                else
                {
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                Response.Redirect("Cart.aspx");

            } 
            else
            {
                foreach (RepeaterItem item in rptrProductDetails.Items)
                {
                    if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                    {
                        var lblError = item.FindControl("lblError") as Label;
                        lblError.Text = "Please select a size";
                    }
                }
            }
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }

    }
}