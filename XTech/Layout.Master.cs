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
    }
}