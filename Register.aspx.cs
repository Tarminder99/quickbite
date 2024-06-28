using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool checkEmail(string email)
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "SELECT COUNT(*) FROM Login WHERE email = @email";
            using (SqlConnection connection = new SqlConnection(dbConnectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@email", email);
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    return count > 0;
                }
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            string dbConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            if (checkEmail(email))
            {
                error.Text = "User already registered";
                return;
            }

            string insertQuery = "INSERT INTO Login (email, password) VALUES (@email, @password)";

            using (SqlConnection dbConnection = new SqlConnection(dbConnectionString))
            {
                using (SqlCommand dbCommand = new SqlCommand(insertQuery, dbConnection))
                {
                    dbCommand.Parameters.AddWithValue("@email", email);
                    dbCommand.Parameters.AddWithValue("@password", password);
                    dbConnection.Open();
                    dbCommand.ExecuteNonQuery();
                }
            }

            Session["email"] = email;
            Response.Redirect("Menu.aspx");
        }
    }
}