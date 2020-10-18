﻿using System;
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
    public partial class EditProduct : System.Web.UI.Page
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
                txtName.Text = dt.Rows[0][2].ToString();
                ddlCategory.Text = dt.Rows[0][3].ToString();
                stock.Text = dt.Rows[0][4].ToString();
                price.Text = dt.Rows[0][5].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Products set name='" +  txtName.Text + "',category='" + ddlCategory.Text + "'," +
                "stock='" + stock.Text + "',price='" + price.Text +
                "' where id='" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewAllProduct.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Products where id='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewAllProduct.aspx");
        }
    }
}