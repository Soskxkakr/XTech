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
    public partial class ViewAllProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string fetchData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Products";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string Image = reader.GetString(1);
                string name = reader.GetString(2);
                string category = reader.GetString(3);
                int stock = reader.GetInt32(4);
                int price = reader.GetInt32(5);
                htmlStr += "<tr><td>" + Image + "</td><td>" + name + "</td><td>" + category + "</td><td>" + stock + "</td><td>" + price + "</td><td><a href=EditProduct.aspx?id=" + id + ">Edit</a></td></tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}