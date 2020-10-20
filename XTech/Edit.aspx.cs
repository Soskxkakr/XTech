using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class Edit : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Users WHERE id= '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtUsername.Text = dt.Rows[0][1].ToString();
                txtPassword.Text = dt.Rows[0][2].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
                rdbGender.Text = dt.Rows[0][5].ToString();
                ddlcountry.Text = dt.Rows[0][6].ToString();
            }

        }

        protected void btnEdit_Click1(object sender, EventArgs e)
        {
            con.Open();
            string query = "UPDATE Users SET username ='" + txtUsername.Text + "',password ='" + txtPassword.Text + "'," + "email ='" + txtEmail.Text + "',gender='" + rdbGender.SelectedItem + "',country ='" + ddlcountry.SelectedItem + "' where id = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewAll.aspx");
        }

        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            con.Open();
            string query = "DELETE FROM Users WHERE id ='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewAll.aspx");
        }
    }
}