using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPortfolio
{
    public partial class index : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        //private object pid;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProfileDetails();
            LoadEducationDetails();
            BindProjects();

        }
        private void LoadProfileDetails()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    string query = "SELECT department,batch,address,email,phone from about WHERE id = 1"; // Assuming you want to update the about text for the row with id = 2
                    SqlCommand cmd = new SqlCommand(query, con);
                    
                        SqlDataReader reader = cmd.ExecuteReader();
                        //object result = cmd.ExecuteScalar();
                        if (reader.Read())
                        {
                        departmentParagraph.InnerText = reader["Department"].ToString();
                        batchParagraph.InnerText = reader["Batch"].ToString();
                        addressParagraph.InnerText = reader["Address"].ToString();
                        emailParagraph.InnerText = reader["Email"].ToString();
                        phoneParagraph.InnerText = reader["Phone"].ToString();
                    }
                        else
                        {
                        // Handle error: no row found with the provided ID
                        departmentParagraph.InnerText = "No data found";
                        batchParagraph.InnerText = "No data found";
                        addressParagraph.InnerText = "No data found";
                        emailParagraph.InnerText = "No data found";
                        phoneParagraph.InnerText = "No data found";
                    }
                    
                }
            }
            catch (Exception ex)
            {
                // Handle error
                Response.Write($"<script> alert('Exception: {ex.Message}')</script>");
            }

        }
        private void  LoadEducationDetails()
        {
            try
            {
                string query = "SELECT Level,Institute, GPA, PassingYear FROM education";
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        string level = reader["Level"].ToString();
                        string institute = reader["Institute"].ToString();
                        string gpa = reader["GPA"].ToString();
                        string passingYear = reader["PassingYear"].ToString();

                        // Generate HTML content dynamically based on the retrieved data
                        string htmlContent = $@"
                          <div class='box'>
                            <img src = 'images/calendar.png' alt='image'/>
                            <h3>{level}</h3>
                            <p>
                                Institute: <span>{institute}</span><br/>
                                GPA: <span>{gpa}</span><br/>
                                Passing year: <span>{passingYear}</span>
                            </p>
                        </div>";

                        // Add the dynamically generated HTML content to your ASPX page
                        contentPlaceholder1.Controls.Add(new LiteralControl(htmlContent));
                    }


                }
            }
                catch(Exception ex)
                {
                Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                }
        }

        private void BindProjects()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    string query = "SELECT project_name, project_pic, github, livedemo FROM project_table";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            string projectName = reader["project_name"].ToString();
                            string projectPic = reader["project_pic"].ToString();
                            string githubLink = reader["github"].ToString();
                            string liveDemoLink = reader["livedemo"].ToString();

                            // Create a new panel for each project
                            Panel projectPanel = new Panel();
                            projectPanel.CssClass = "details-container color-container";

                            // Create an image control for project picture
                            Image projectImage = new Image();
                            projectImage.ImageUrl = projectPic;
                            projectImage.AlternateText = projectName;
                            projectImage.CssClass = "project-img";

                            // Create a label for project name
                            Label projectNameLabel = new Label();
                            projectNameLabel.Text = $"<h2 class='experience-sub-title project-title'>{projectName}</h2>";

                            // Create buttons for GitHub and Live Demo links
                            Button githubButton = new Button();
                            githubButton.CssClass = "btnn btn-color-2 project-btn";
                            githubButton.Text = "GitHub";
                            githubButton.OnClientClick = $"window.open('{githubLink}')";

                            Button liveDemoButton = new Button();
                            liveDemoButton.CssClass = "btnn btn-color-2 project-btn";
                            liveDemoButton.Text = "Demo Video";
                            liveDemoButton.OnClientClick = $"window.open('{liveDemoLink}')";

                            // Add controls to the project panel
                            projectPanel.Controls.Add(projectImage);
                            projectPanel.Controls.Add(projectNameLabel);
                            projectPanel.Controls.Add(githubButton);
                            projectPanel.Controls.Add(liveDemoButton);

                            // Add the project panel to the projects container
                            projectsContainer.Controls.Add(projectPanel);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle error
                Response.Write($"<script> alert('Exception: {ex.Message}')</script>");
            }
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO contact([Name], [Email], [Phone], [Message]) VALUES(@Name,@Email,@Phone,@Message)", con);
                cmd.Parameters.AddWithValue("@Name", nameeId.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", emailId.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone", phoneId.Text.Trim());
                cmd.Parameters.AddWithValue("@Message", textId.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
              
                Response.Write($"<script>alert('successfully sent!')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Exception: "+ex.Message +"');</script>");
            }
            

        }
    }
}