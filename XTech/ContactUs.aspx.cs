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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitContact_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("sathiapriya.apu2020@gmail.com");
            msg.To.Add(txtContactEmail.Text);
            msg.Subject = "Message Review";
            msg.Body = ("Thank you for reaching out. We will look out into your matter as soon as possible." + "<br/>" + "-XTech");
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
            lblMessageContact.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessageContact.Text = "Message successfully sent";
        }
    }
}