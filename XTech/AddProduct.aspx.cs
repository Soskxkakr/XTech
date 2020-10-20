using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
                Response.Redirect("Login.aspx");
        }
        
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "SELECT count(*) FROM Products WHERE name ='" + txtName.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    Response.Write("<script type=\"text/javascript\">alert('Sorry! Product name already exist.');</script>");
                }
                else
                {
                    string query1 = "INSERT INTO Products (image, name, category, stock, price) VALUES (@image, @name, @category, @stock, @price) ";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@image", Path.GetFileName(imageUpload.FileName));
                    cmd1.Parameters.AddWithValue("@name", txtName.Text);
                    cmd1.Parameters.AddWithValue("@category", ddlCategory.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@stock", Convert.ToInt32(stock.Text));
                    cmd1.Parameters.AddWithValue("@price", Convert.ToInt32(price.Text));
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script type=\text/javascript\">alert('Product has been added! ');</script>");
                    lblMessage.Text = "Product Added Successfully";
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}