using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace XTech
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products WHERE id= '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblName.Text = dt.Rows[0][2].ToString();
                lblCategory.Text = dt.Rows[0][3].ToString();
                lblStock.Text = dt.Rows[0][4].ToString();
                lblPrice.Text = dt.Rows[0][5].ToString();
            }
        }

        public string SetPhoto()
        {
            string htmlstr = "";
            id = Convert.ToInt16(Request.QueryString["id"]);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products WHERE id= '" + id + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            htmlstr =
                "<img class='product__details__pic__items--large' src='img/product/" + dt.Rows[0][1].ToString() +
                "' alt=" + dt.Rows[0][2].ToString() + ">"; 


            return htmlstr;
        }

        
    }
}
   
