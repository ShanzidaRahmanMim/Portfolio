using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPortfolio.Admin
{
    public partial class addAbout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfileDetails();
            }
        }
        protected void LoadProfileDetails()
        {
            // Fetch profile details from the database and populate the input fields
            
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))

                {
                    connection.Open();
                    string query = "SELECT Department, Batch, Address, Email, Phone FROM about WHERE Id = 1";
                    SqlCommand command = new SqlCommand(query, connection);

                    command.Parameters.AddWithValue("@Id", 1);

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        txtDepartment.Text = reader["Department"].ToString();
                        txtBatch.Text = reader["Batch"].ToString();
                        txtAddress.Text = reader["Address"].ToString();
                        txtEmail.Text = reader["Email"].ToString();
                        txtPhone.Text = reader["Phone"].ToString();

                    }
                    else
                    {
                        txtDepartment.Text = "No data found";
                        txtBatch.Text = "No data found";
                        txtAddress.Text = "No data found";
                        txtEmail.Text = "No data found";
                        txtPhone.Text = "No data found";
                    }

                    reader.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);

            }
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            // Retrieve updated profile details from the input fields
            string department = txtDepartment.Text;
            string batch = txtBatch.Text;
            string address = txtAddress.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;

            // Update profile details in the database
       
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "UPDATE about SET Department = @Department, Batch = @Batch, Address = @Address, Email = @Email, Phone = @Phone WHERE Id = 1";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Id", 1);
                    command.Parameters.AddWithValue("@Department", department);
                    command.Parameters.AddWithValue("@Batch", batch);
                    command.Parameters.AddWithValue("@Address", address);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Phone", phone);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Profile updated successfully
                        Response.Write("Profile updated successfully ");
                    }
                    else
                    {
                        // Failed to update profile
                        Response.Write("Failed to update profile ");
                    }
                }
            }
            
        }

       
    }
}