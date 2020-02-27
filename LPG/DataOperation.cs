using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LPG
{
    public class DataOperation
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["LPG"].ConnectionString;

        public DataTable getData(string quary)
        {
            SqlConnection con = new SqlConnection(connectionstring);

            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter da = new SqlDataAdapter(quary, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int executequary(string quary)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand(quary, con);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch
            {
                return 0;
            }
        }
    

}
}