﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LRMART
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["User"] !=null)
            {
                Label1.Text = "Welcome "+Session["User"].ToString();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
           
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null) { 
                Session["User"] = null;
                Response.Redirect("SignIn.aspx");
            }
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                //pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }
    }
}