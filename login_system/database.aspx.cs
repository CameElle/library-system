using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_system
{
    public partial class database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Load the GridView on Page_Load event
                BindGridView();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void BindGridView()
        {
            // Declare and assign the SQL Server connection variable
            SqlConnection connection = new SqlConnection("Data Source=GUILFOXWORKZ;Initial Catalog=login_ctu;User ID=student_status;Password=glennard");
            SqlCommand cmd = new SqlCommand("Select * from register", connection);
            // Open the connection
            connection.Open();
            //Defind a dataReader
            SqlDataReader dataReader = cmd.ExecuteReader();
            // Bind the result to the GridView
            GridView1.DataSource = dataReader;
            GridView1.DataBind();

            DataList1.DataSource = dataReader;
            DataList1.DataBind();
        }
    }
}