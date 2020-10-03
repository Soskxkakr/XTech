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
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString);
        public static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
                Response.Redirect("Login.aspx");
            Panel1.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select count(*) from Users where username='" + txtName.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check <= 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Record not available.');</script>");
            }
            else
            {
                Panel1.Visible = true;
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where username='" + txtName.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                id = Convert.ToInt16(dt.Rows[0][0]);
                txtUsername.Text = dt.Rows[0][1].ToString();
                txtEmail.Text = dt.Rows[0][4].ToString();
                rdbGender.Text = dt.Rows[0][5].ToString();
                ddlcountry.Text = dt.Rows[0][6].ToString();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Users set username ='" + txtUsername.Text + "email ='" + txtEmail.Text + "',gender='" + rdbGender.SelectedItem + "',country ='" + ddlcountry.SelectedItem + "' where id = '" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Users where id ='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}