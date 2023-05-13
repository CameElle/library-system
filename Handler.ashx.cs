using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Common;

namespace login_system
{
    /// <summary>
    /// Summary description for Handler
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                string Id = context.Request.QueryString["Id"].ToString();
                byte[] image;
                //
                SqlConnection connection = new SqlConnection("Data Source=MOIST\\SQL2014;Initial Catalog=regiR;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select Image from register where ID_NUMBER=" + Id, connection);
                connection.Open();
                // Initialize a data reader
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                image = (Byte[])reader[0];
                // Configure the Response
                context.Response.BinaryWrite(image);
                context.Response.ContentType = "image/jpg";
                context.Response.End();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}