using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPortfolio.Admin
{
    public partial class addEducation : System.Web.UI.Page
    {
        private object eduContainer;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load existing education details if necessary
                // This can be used if you want to edit existing education entries
                 LoadEducationDetails();
               

            }
        }

        protected void LoadEducationDetails()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))

                {
                    connection.Open();
                    string query = "SELECT EducationId,Level,Institute, GPA, PassingYear from education where EducationId=1";
                    SqlCommand command = new SqlCommand(query, connection);

                    //command.Parameters.AddWithValue("@Id",);

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        txtId.Text = reader["EducationId"].ToString();
                        txtLevel.Text = reader["Level"].ToString();
                        txtInstitute.Text = reader["Institute"].ToString();
                        txtGPA.Text = reader["GPA"].ToString();
                        txtPassingYear.Text = reader["PassingYear"].ToString();
                       


                    }
                    else
                    {
                        txtLevel.Text = "No data found";
                        txtInstitute.Text = "No data found";
                        txtGPA.Text = "No data found";
                        txtPassingYear.Text = "No data found";
                        
                    }


                }

            }
            catch (Exception ex)
            {
                // Handle the exception (e.g., log the error, display a user-friendly message)
                // You can customize this part based on your application's requirements
                Response.Write("An error occurred: " + ex.Message);
            }

        }
        protected void btnAddEducation_Click(object sender, EventArgs e)
        {
          

            string id = txtId.Text;
            string level= txtLevel.Text;
            string institute = txtInstitute.Text;
            string gpa =txtGPA.Text;
            string passingYear = txtPassingYear.Text;
          
            // SQL query to insert education details into the database
            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            string query = "INSERT INTO education (EducationId,Level,Institute, GPA, PassingYear)  VALUES (@EducationId,@Level,@Institute, @GPA, @PassingYear)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SQL query to prevent SQL injection
                    command.Parameters.AddWithValue("@EducationId", id);
                    command.Parameters.AddWithValue("@Level", level);
                    command.Parameters.AddWithValue("@Institute", institute);
                    command.Parameters.AddWithValue("@GPA", gpa);
                    command.Parameters.AddWithValue("@PassingYear", passingYear);

                    // Open the database connection and execute the query
                    connection.Open();
                    //command.ExecuteNonQuery();
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