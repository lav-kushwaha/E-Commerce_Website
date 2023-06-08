using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;


namespace LRMART
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Forgetsendbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='B:\ASP Project\LRMART\LRMART\App_Data\LRMartDB.mdf';Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select*from UserTb where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", emailtb.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    dr.Read();
                    string email = dr["Email"].ToString();
                    string pw = dr["Password"].ToString();
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("Email:-" + email);
                    sb.AppendLine("Paqssword:-" + pw);
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("raziullahkhan25@gmail.com", "abc1456872");
                    MailMessage msg = new MailMessage();
                    msg.To.Add(emailtb.Text);
                    msg.From = new MailAddress("LR MART..<raziullahkhan25@gmail.com>");
                    msg.Subject = "Your Password";
                    msg.Body = sb.ToString();
                    client.Send(msg);
                    lblmsg.Text = "Your Password Has Been Sent To Register Email ID";
                }
                else
                {
                    lblmsg.Text = "Invalid Email Id";
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = "ERROR:" + ex.Message.ToString();
                lblmsg.Visible = true;
            }

        }
    }
}