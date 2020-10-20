using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmail.Text = string.Empty;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = "";
            string password = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT username, password FROM Users WHERE email=@email", con);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                if (sdr.Read())
                {
                    username = sdr["username"].ToString();
                    password = sdr["password"].ToString();
                }
            }
            con.Close();
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("sathiapriya.apu2020@gmail.com");
                msg.To.Add(txtEmail.Text);
                msg.Subject = "Recover your Password";
                msg.Body = ("Your Username: " + username + "<br/>" + "Your Password: " + password);
                msg.IsBodyHtml = true;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "sathiapriya.apu2020@gmail.com";
                ntwd.Password = "pass2020";
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Username and Password Sent Successfully";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "This email does not exist in our database";
            }
        }
    }
}
