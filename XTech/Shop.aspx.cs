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
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public string SetFeaturedProduct(int id)
        {
            string htmlstr = "";

            var Image = new ImageData();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "SELECT * FROM Products";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Image.Id = reader.GetInt32(0);
                if (Image.Id.Equals(id))
                {
                    Image.ImageFile = reader.GetString(1);
                    Image.ImageName = reader.GetString(2);
                    Image.Category = reader.GetString(3);
                    Image.Stock = reader.GetInt32(4);
                    Image.Price = reader.GetInt32(5);

                    htmlstr =
                    "<div class=col-lg-4>" +
                        "<div class=product__discount__item>" +
                            "<div class='product__discount__item__pic set-bg' data-setbg=img/product/" + Image.ImageFile + ">" +
                                "<div class=product__discount__percent>" + "HOT!!!" + "</div>" +
                            "</div>" +
                            "<div class=product__discount__item__text>" +
                                "<span>" + Image.Category +"</span>" +
                                "<h5>" + Image.ImageName + "</h5>" +
                                "<div class=product__item__price>" + "RM " + Image.Price + "</div>" +
                            "</div>" +
                        "</div>" +
                    "</div>";
                }                
            }
            con.Close();
            return htmlstr;
        }
    }

    public class ImageData
    {
        private int _id;
        private string _imageFile;
        private string _imageName;
        private string _category;
        private int _stock;
        private int _price;

        public int Id
        {
            get
            {
                return _id;
            }
            set
            {
                _id = value;
            }
        }

        public string ImageFile
        {
            get
            {
                return _imageFile;
            }
            set
            {
                _imageFile = value;
            }
        }

        public string ImageName
        {
            get
            {
                return _imageName;
            }
            set
            {
                _imageName = value;
            }
        }

        public string Category
        {
            get
            {
                return _category;
            }
            set
            {
                _category = value;
            }
        }

        public int Stock
        {
            get
            {
                return _stock;
            }
            set
            {
                _stock = value;
            }
        }

        public int Price
        {
            get
            {
                return _price;
            }
            set
            {
                _price = value;
            }
        }

    }
}