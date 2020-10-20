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
    public partial class ViewAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
                Response.Redirect("Login.aspx");
        }
        public string fetchData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Users";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string username = reader.GetString(1);
                string email = reader.GetString(3);
                string gender = reader.GetString(4);
                string country = reader.GetString(5);
                string userType = reader.GetString(6);
                htmlStr += "<tr><td>" + username + "</td><td>" + email + "</td><td>" + gender + "</td><td>" + country + "</td><td>" + userType + "</td><td><a href=Edit.aspx?id=" +id+">Edit</a></td></tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}