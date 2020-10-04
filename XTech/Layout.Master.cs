using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected string Check_User()
        {
            // <a href="Register.aspx"><i class="fa fa-user"></i>My Account</a>
            if (Session["uType"] == null)
                return "Login";
            else
                return "My Account";
        }
    }
}