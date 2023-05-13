using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlTypes;

namespace login_system
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Submit_Click(object sender, EventArgs e)
        {
           /* con.Open();
            byte[] img;

            byte[] image = new byte[File.PostedFile.ContentLength];
            HttpPostedFile Image = File.PostedFile;
            Image.InputStream.Read(image, 0, (Int32)File.PostedFile.ContentLength);

            
            Stream s = File.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(s);
            img = br.ReadBytes((int)s.Length);

            SqlCommand com = new SqlCommand();
            comm.Connection = con;
            
            SqlCommand comm = new SqlCommand();
            comm.CommandText = "Insert into login_data(ID_NUMBER, LName, FName, Course, Year, Major) values ('" + numberID.Text + "', '" + LName.Text + "', '" + FName.Text + "', '" + Course.Text + "', '" + int.Parse(Year.Text) + "', '" + Major.Text + "')";
            comm.Parameters.AddWithValue("Image", img);
            comm.ExecuteNonQuery();
            con.Close();*/

            try
            {
                Insert();
            } catch(Exception ex)
            {
                throw ex;
            }
        }

        private void Insert()
        {
            // Check if the user selected an image
            if (File.HasFile)
            {
                // Get the length of the image
                int imageLength = File.PostedFile.ContentLength;
                // create a variable to hold the image in a byte format
                byte[] imageArr = new byte[imageLength];
                HttpPostedFile image = File.PostedFile;
                image.InputStream.Read(imageArr, 0, imageLength);

                // Declare and assign the SQL Server connection variable
                SqlConnection connection = new SqlConnection("Data Source=MOIST\\SQL2014;Initial Catalog=regiR;Integrated Security=True");
                // Declare and assign the SQL command variable
                SqlCommand cmd = new SqlCommand("Insert into register(ID_NUMBER, LastName, FirstName, Course, Year, Major, Image, ImageName) values (@ID_NUMBER, @LastName, @FirstName, @Course, @Year, @Major, @Image, @ImageName)", connection);

                // Open the connection
                connection.Open();
                //Add the parameters
                cmd.Parameters.AddWithValue("@ID_NUMBER", SqlDbType.Int).Value = numberID.Text;
                cmd.Parameters.AddWithValue("@LastName", SqlDbType.VarChar).Value = LName.Text;
                cmd.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = FName.Text;
                cmd.Parameters.AddWithValue("@Course", SqlDbType.VarChar).Value = Course.Text;
                cmd.Parameters.AddWithValue("@Year", SqlDbType.Int).Value = Year.Text;
                cmd.Parameters.AddWithValue("@Major", SqlDbType.VarChar).Value = Major.Text;
                cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imageArr;
                cmd.Parameters.AddWithValue("@ImageName", SqlDbType.VarChar).Value = File.FileName;
                //Execute the command
                cmd.ExecuteNonQuery();
                //Bind the GridView 
                //BindGridView();
            }
        }

        protected void numberID_TextChanged(object sender, EventArgs e)
        {

        }
    }
}