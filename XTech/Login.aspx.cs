using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected override void OnPreRender(EventArgs e)
        {
            // Remove all sessions
            Session.Abandon();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Establish the connection with SQL
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            // Preparing the command for SQL
            SqlCommand cmd = new SqlCommand("SELECT count(*) FROM Users WHERE username='" + 
                txtUsername.Text + "' AND password = '" + txtPassword.Text + "'", con);
            // Give the command to SQL and check whether the command is valid or not
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (count > 0) // Record Exists
            {
                // The SQL command is VALID
                SqlCommand cmdType = new SqlCommand("SELECT usertype FROM Users WHERE username = '" + txtUsername.Text + "'", con);
                string uType = cmdType.ExecuteScalar().ToString().Replace(" ", ""); // Admin or Customer
                Session["uType"] = uType;

                Response.Redirect("Home.aspx");
            }
            else
            {
                // If record does not exist
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Login Failed!";
            }
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}