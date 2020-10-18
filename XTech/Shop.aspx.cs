using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XTech;

namespace XTech
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public string SetFeaturedProduct(int id)
        {
            string htmlstr = "";

            Product currentProduct = new Product();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Products";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                currentProduct.Id = reader.GetInt32(0);
                if (currentProduct.Id.Equals(id))
                {
                    currentProduct.ImageFile = reader.GetString(1);
                    currentProduct.Name = reader.GetString(2);
                    currentProduct.Category = reader.GetString(3);
                    currentProduct.Stock = reader.GetInt32(4);
                    currentProduct.Price = reader.GetInt32(5);

                    htmlstr =
                    "<div class=col-lg-4>" +
                        "<div class=product__discount__item>" +
                            "<div class='product__discount__item__pic set-bg' data-setbg=img/product/" + currentProduct.ImageFile + ">" +
                                "<div class=product__discount__percent>" + "HOT!!!" + "</div>" +
                            "</div>" +
                            "<div class=product__discount__item__text>" +
                                "<span>" + currentProduct.Category +"</span>" +
                                "<h5><a href=ProductDetails.aspx?id=" + currentProduct.Id + ">" + currentProduct.Name + "</a></h5>" +
                                "<div class=product__item__price>" + "RM " + currentProduct.Price + "</div>" +
                            "</div>" +
                        "</div>" +
                    "</div>";

                }                
            }
            con.Close();
            return htmlstr;
        }

        public string SetItems()
        {
            string htmlstr = "";

            Product currentProduct = new Product();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Products";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                currentProduct.Id = reader.GetInt32(0);
                currentProduct.ImageFile = reader.GetString(1);
                currentProduct.Name = reader.GetString(2);
                currentProduct.Category = reader.GetString(3);
                currentProduct.Stock = reader.GetInt32(4);
                currentProduct.Price = reader.GetInt32(5);

                htmlstr += 
                    "<div class='col-lg-3 col-md-6 col-sm-6'>" +
                        "<div class='product__item'>" +
                            "<div class='product__item__pic set-bg' data-setbg=img/product/" + currentProduct.ImageFile + ">" +
                                "<ul class='product__item__pic__hover'>" +
                                    "<li><a href=ProductDetails.aspx?id=" + currentProduct.Id + "><i class='fa fa-shopping-cart'></i></a></li>" +
                                "</ul>" +
                            "</div>" +
                            "<div class='product__item__text'>" +
                                "<h6>" + currentProduct.Name+"</h6>" +
                                "<h5>RM " + currentProduct.Price + "</h5>" +
                            "</div>" +
                        "</div>" +
                    "</div>";
            }

            return htmlstr;
        }
    }
}