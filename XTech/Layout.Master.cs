using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        private Cart myCart = new Cart();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["currentCart"] != null)
            {
                myCart = (Cart) Session["currentCart"];
                lblCartQty.Text = myCart.size().ToString();
            }
            else
            {
                lblCartQty.Text = "0";
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected string Check_User()
        {
            if (Session["uType"] == null)
                return "Login";
            else
                return "My Account";
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("sathiapriya.apu2020@gmail.com");
            msg.To.Add(txtEmailSub.Text);
            msg.Subject = "Subscribed to Xtech Newsletter";
            msg.Body = ("Thank you for subscribing to our newsletter!");
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
            lblMessage.Text = "Successfully subuscribed!";
        }
    }
}