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
    public partial class SearchProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        public string fetchProduct()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Products WHERE name LIKE'%" + txtProdName.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while(reader.Read())
            {
                int id = reader.GetInt32(0);
                string image = reader.GetString(1);
                string name = reader.GetString(2);
                string category = reader.GetString(3);
                int price = reader.GetInt32(5);
                htmlStr += 
                    "<tr>" +
                    "   <td class='align-middle'>" + name + "</td>" +
                    "   <td class='align-middle'>" + category + "</td>" +
                    "   <td class='align-middle'>RM " + price + "</td>" +
                    "   <td>" +
                    "       <a href='ProductDetails.aspx?id=" + id + "'><img src='img/product/" + image + "'class='product__details__pic__items--small' ></a>" +
                    "   </td>" +
                    "</tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}