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
        private Product currentProduct;
        private Cart myCart = new Cart();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        private static int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["id"]);
            string productKey = "CurrentProduct_" + id.ToString();

            if (Session[productKey] != null)
            {
                this.currentProduct = (Product) Session[productKey];
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products WHERE id= '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.currentProduct = new Product();
                this.currentProduct.Id = id;
                this.currentProduct.ImageFile = dt.Rows[0][1].ToString();
                this.currentProduct.Name = dt.Rows[0][2].ToString();
                this.currentProduct.Category = dt.Rows[0][3].ToString();
                this.currentProduct.Stock = Convert.ToInt32(dt.Rows[0][4].ToString());
                this.currentProduct.Price = Convert.ToInt32(dt.Rows[0][5].ToString());
                Session[productKey] = this.currentProduct;
            }
            lblName.Text = this.currentProduct.Name;
            lblCategory.Text = this.currentProduct.Category;
            lblStock.Text = this.currentProduct.Stock.ToString();
            lblPrice.Text = this.currentProduct.Price.ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["currentCart"] != null)
            {
                // Update the cart from previous action
                this.myCart = (Cart) Session["currentCart"];
            }
            this.myCart.addProduct(this.currentProduct);
            Session["currentCart"] = this.myCart;
        }

        public string SetPhoto()
        {
            string htmlstr = "";
            id = Convert.ToInt16(Request.QueryString["id"]);
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Products WHERE id= '" + id + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            htmlstr =
                "<img class='product__details__pic__items--large' src='img/product/" + currentProduct.ImageFile +
                "' alt=" + currentProduct.Name + ">"; 


            return htmlstr;
        }

        
    }
}
   
