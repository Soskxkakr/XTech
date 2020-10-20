﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XTech
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtEmail.Text = string.Empty;
            rdbGender.SelectedIndex = 1;
            ddlcountry.SelectedIndex = 0;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" &&
                txtPassword.Text != "" &&
                txtPassword.Text.Length > 8 &&
                txtPassword.Text.Length < 16 &&
                txtEmail.Text != "")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    con.Open();
                    string query = "SELECT count(*) FROM Users WHERE email ='" + txtEmail.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    if (check > 0)
                    {
                        Response.Write("<script type=\"text/javascript\">alert('Sorry! Email already exist.');</script>");
                    }
                    else
                    {
                        string query1 = "INSERT INTO Users (username, password, email, gender, country, usertype) values (@uname,@pword,@email,@gender, @country, @usertype) ";
                        SqlCommand cmd1 = new SqlCommand(query1, con);
                        cmd1.Parameters.AddWithValue("@uname", txtUsername.Text);
                        cmd1.Parameters.AddWithValue("@pword", txtPassword.Text);
                        cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd1.Parameters.AddWithValue("@gender", rdbGender.SelectedItem.ToString());
                        cmd1.Parameters.AddWithValue("@country", ddlcountry.SelectedItem.ToString());
                        cmd1.Parameters.AddWithValue("@usertype", ddlUserType.SelectedItem.ToString());
                        cmd1.ExecuteNonQuery();
                        Response.Write("<script type=\text/javascript\">alert('Customer Added! ');</script>");
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Successfully Added!";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }
            else
            {
                txtUsername.Text = "";
                txtPassword.Text = "";
                txtEmail.Text = "";
                rdbGender.SelectedIndex = 1;
                ddlcountry.SelectedIndex = 0;
                ddlUserType.SelectedIndex = 0;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value.Length < 8 || args.Value.Length > 16) ? false : true;
        }
    }
}