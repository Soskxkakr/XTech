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
    public partial class ShopCart : System.Web.UI.Page
    {
        private Cart myCart = new Cart();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            // Save cart to database
        }

        protected string SetUpTable()
        {
            string htmlstr = "";

            if (Session["currentCart"] != null)
            {
                myCart = (Cart) Session["currentCart"];
                foreach (Product prod in myCart.getProducts())
                {
                    htmlstr += 
                        "<tr>" +
                        "   <td width='350px'><img class='product__details__pic__items--medium' src='img/product/" + prod.ImageFile + "'></td>" +
                        "   <td class='h2'>" + prod.Name + "<br/>" +
                        "               RM " + prod.Price +
                        "   </td>" +
                        "</tr>";
                }

                return htmlstr;
            }
            else
            {
                htmlstr = 
                    "<tr>" +
                    "   <td class='text-center h1'>Your cart is empty</td>" +
                    "</tr>";
                return htmlstr;
            }
        }
    }
}