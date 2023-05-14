using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_system
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=GUILFOXWORKZ;Initial Catalog=login_ctu;User ID=student_status;Password=glennard");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Declare and assign the SQL Server connection variable
        protected void Login_Click(object sender, EventArgs e)
        {
            Load();   
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Load();
        }

        void Load()
        {
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT * from register WHERE ID_NUMBER='" + int.Parse(IDInput.Text) + "'", connection);
            /*SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM register where ID_NUMBER='" + int.Parse(IDInput.Text) + "'", connection);
            DataTable dt = new DataTable();
            adapter.Fill(dt);


            img.ImageUrl = dt.Rows[0]["ImageName"].ToString();
            ID_number.Text = dt.Rows[0]["ID_NUMBER"].ToString();
            Label1.Text = dt.Rows[0]["FirstName"].ToString() + " " + dt.Rows[0]["LastName"].ToString();
            Label2.Text = dt.Rows[0]["Course"].ToString() + " " + dt.Rows[0]["Year"].ToString();
            Label3.Text = dt.Rows[0]["Major"].ToString();*/
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                img.ImageUrl = reader.GetValue(6).ToString();
                ID_number.Text = reader.GetValue(0).ToString();
                Label1.Text = reader.GetValue(1).ToString() + " " + reader.GetValue(2).ToString();
                Label2.Text = reader.GetValue(3).ToString() + " " + reader.GetValue(4).ToString();
                Label3.Text = reader.GetValue(5).ToString();
            }
        }

        
    }
}