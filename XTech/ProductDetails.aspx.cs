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
                SqlDataAdapter da = new SqlDataAdapter("select * from Products where id= '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                lblName.Text = dt.Rows[0][2].ToString();
                lblCategory.Text = dt.Rows[0][3].ToString();
                lblStock.Text = dt.Rows[0][4].ToString();
                lblPrice.Text = dt.Rows[0][5].ToString();
            }

        }



        protected void DropDownList1_ItemCommand(object sender, EventArgs e)
        {
               DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
               Response.Redirect("ShopCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
              
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            
        }
    }
}
   
