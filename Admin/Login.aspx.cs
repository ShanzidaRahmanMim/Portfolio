﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPortfolio.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsFormValid())
            {
                //Response.Write("<script>alert('Success');</script>");

                try
                {
                    SqlCommand cmd = new SqlCommand("select Username,Password from AdminTable where Username=@Username AND Password=@Password", con);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.Parameters.AddWithValue("@Username", txtuserid.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {

                            Session["UserName"] = dr.GetValue(0).ToString();

                            Response.Write("<script>alert('Login success');</script>");
                            Response.Redirect("Home.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid login... error');</script>");
                        //Response.Redirect("~/Default.aspx");
                        txtuserid.Text = string.Empty;
                        txtpass.Text = string.Empty;
                        txtuserid.Focus();

                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }
            else
            {
                //Response.Write("<script>alert('validation error');</script>");
            }
        }
        private bool IsFormValid()
        {
            if (txtuserid.Text == string.Empty)
            {
                Response.Write("<script>alert('UserName is Required');</script>");
                txtuserid.Text = string.Empty;
                txtuserid.Focus();
                return false;
            }
            if (txtpass.Text == string.Empty)
            {
                Response.Write("<script>alert('Password is Required');</script>");
                txtpass.Text = string.Empty;
                txtpass.Focus();
                return false;
            }

            return true;
        }
    }
}